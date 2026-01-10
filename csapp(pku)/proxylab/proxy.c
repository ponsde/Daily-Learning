#include "csapp.h"
#include "my_get.h"
#include "my_connect.h"

extern ListNode *head;

void *get_start(void *arg);

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        printf("please input port or only port");
    }
    char *input_port = argv[1];

    Sem_init(&mutex, 0, 1);

    Sem_init(&connect_mutex, 0, 1);

    head = malloc(sizeof(ListNode));
    node_init(head, "\0", "\0", 0);

    int listenfd = Open_listenfd(input_port);
    int connfd;
    while ((connfd = Accept(listenfd, NULL, NULL)))
    {
        pthread_t tid;
        pthread_create(&tid, NULL, get_start, (void *)(long)connfd);
    }
}

void *get_start(void *arg)
{
    pthread_detach(pthread_self());
    int connfd = (int)(long)arg;
    char buf[MAXBUF];
    char method[10];
    char uri[300];
    char version[10];
    get_userinput(connfd, buf, method, uri, version);

    char protocol[10];
    char hostname[100];
    char port[10];
    char path[200];
    sscanf(uri, "%[^:]://%[^:]:%[^/]%s", protocol, hostname, port, path);
    if (strcmp(method, "CONNECT") == 0)
    {
        sscanf(uri, "%[^:]:%s", hostname, port);
        connect_head(connfd, hostname, port);
    }
    else
    {
        get_head(connfd, method, hostname, port, path);
    }
    return NULL;
}
