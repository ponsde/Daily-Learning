#include "my_get.h"

sem_t mutex;
size_t sum = 0;
ListNode *head;

/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";

void *get_head(int connfd, char *method, char *hostname, char *port, char *path)
{
    char *ans;
    size_t ans_len;
    if (get_cathe(path, &ans, &ans_len))
    {
        Rio_writen(connfd, ans, ans_len);
        Free(ans);
        return NULL;
    }

    int clientfd = Open_clientfd(hostname, port);
    char buf1[MAXLINE];
    sprintf(buf1, "%s %s %s\r\n", method, path, "HTTP/1.0");
    char temp[MAXBUF];
    sprintf(temp, "Host: %s:%s\r\n", hostname, port);
    strcat(temp, user_agent_hdr);
    strcat(temp, "Connection: close\r\n");
    strcat(temp, "Proxy-Connection: close\r\n\r\n");
    strcat(buf1, temp);
    Rio_writen(clientfd, buf1, strlen(buf1));

    get_serveinput(clientfd, connfd, path);
    Close(clientfd);
    Close(connfd);
    return NULL;
}

void get_userinput(int connfd, char buf[], char *method, char *uri, char *version)
{
    rio_t p;
    Rio_readinitb(&p, connfd);
    Rio_readlineb(&p, buf, MAXBUF);
    sscanf(buf, "%s %s %s", method, uri, version);
    while (Rio_readlineb(&p, buf, MAXBUF) > 0)
    {
        if (strcmp(buf, "\r\n") == 0)
        {
            break;
        }
    }
}

void get_serveinput(int clientfd, int connfd, char *path)
{
    rio_t p;
    char buf[MAXBUF];
    Rio_readinitb(&p, clientfd);
    int rc;
    size_t cur_sz = 0;
    char *new_buf = malloc(MAX_OBJECT_SIZE);
    while ((rc = Rio_readnb(&p, buf, MAXBUF)) > 0)
    {
        Rio_writen(connfd, buf, rc);
        cur_sz += rc;
        if (cur_sz <= MAX_OBJECT_SIZE)
        {
            memcpy(new_buf + cur_sz - rc, buf, rc);
        }
    }
    if (cur_sz <= MAX_OBJECT_SIZE)
    {
        P(&mutex);
        insert_info(path, new_buf, cur_sz);
        V(&mutex);
    }
}

void node_init(ListNode *new, char *path, char *buf, size_t sz)
{
    if (new == NULL)
    {
        return;
    }

    memset(new->path, 0, 200);
    strcpy(new->path, path);

    new->buf = malloc(sz);
    memcpy(new->buf, buf, sz);
    new->sz = sz;
    new->next = NULL;
    new->pre = NULL;
}

bool get_cathe(char *path, char **ans, size_t *ans_len)
{
    P(&mutex);
    ListNode *t = head;
    ListNode *pre = NULL;
    while (t != NULL)
    {
        if (strcmp(t->path, path) == 0)
        {
            *ans = malloc(t->sz);
            *ans_len = t->sz;
            if (t == head)
            {
                memcpy(*ans, t->buf, t->sz);
                V(&mutex);
                return true;
            }
            pre->next = t->next;
            if (t->next != NULL)
            {
                t->next->pre = pre;
            }
            t->next = head;
            head->pre = t;
            t->pre = NULL;
            head = t;
            memcpy(*ans, t->buf, t->sz);
            V(&mutex);
            return true;
        }
        pre = t;
        t = t->next;
    }
    V(&mutex);
    return false;
}

void insert_info(char *path, char *buf, size_t sz)
{
    ListNode *t = malloc(sizeof(ListNode));
    node_init(t, path, buf, sz);
    Free(buf);
    sum += sz;
    if (head == NULL)
    {
        head = t;
        return;
    }
    ListNode *k = head;
    while (k->next != NULL)
    {
        k = k->next;
    }
    while (sum > MAX_CACHE_SIZE)
    {
        sum -= k->sz;
        if (k == head)
        {
            Free(head->buf);
            Free(head);
            head = t;
            return;
        }
        ListNode *tem = k;
        k = k->pre;
        k->next = NULL;
        Free(tem->buf);
        Free(tem);
    }
    t->next = head;
    head->pre = t;
    head = t;
}