#include <stdio.h>
#include "csapp.h"

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        printf("please input port or only port");
    }
    int input_port = argv[1];
    int listenfd = Open_listenfd(input_port);
    int connfd;
    struct sockaddr *client_info;
    while (connfd = Accept(listenfd, &client_info, sizeof(client_info)))
    {
        get_userinput(&client_info, connfd);
    }

    printf("%s", user_agent_hdr);
    return 0;
}

void get_userinput(void *user_info, int connfd)
{
    char *buf[MAX_CACHE_SIZE];
    rio_t *p;
    Rio_readinitb(p, connfd);
    while (Rio_readlineb(p, buf, MAX_CACHE_SIZE) > 0)
    {
    }
}