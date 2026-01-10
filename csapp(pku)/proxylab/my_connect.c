#include "csapp.h"
#include "my_connect.h"

sem_t connect_mutex;

void connect_head(int connfd, char *hostname, char *port)
{
    char *res = "HTTP/1.1 200 Connection Established\r\n\r\n";
    int clientfd = open_clientfd(hostname, port);
    if (clientfd < 0)
    {
        printf("Connect to %s:%s failed\n", hostname, port);
        return;
    }
    rio_writen(connfd, res, strlen(res));
    my_fds *fds1 = malloc(sizeof(my_fds));
    fds1->connfd = connfd;
    fds1->clientfd = clientfd;

    my_fds *fds2 = malloc(sizeof(my_fds));
    fds2->connfd = connfd;
    fds2->clientfd = clientfd;

    pthread_t tid1, tid2;
    pthread_create(&tid1, NULL, client_help, (void *)fds1);
    pthread_create(&tid2, NULL, server_help, (void *)fds2);
}

void *client_help(void *arg)
{
    pthread_detach(pthread_self());
    my_fds *fds = (my_fds *)(arg);
    int connfd = fds->connfd;
    int clientfd = fds->clientfd;
    Free(fds);
    int rc;
    char buf[MAXBUF];
    while ((rc = read(connfd, buf, MAXBUF)) > 0)
    {
        rio_writen(clientfd, buf, rc);
    }
    Close(connfd);
    Close(clientfd);
    return NULL;
}

void *server_help(void *arg)
{
    pthread_detach(pthread_self());
    my_fds *fds = (my_fds *)(arg);
    int connfd = fds->connfd;
    int clientfd = fds->clientfd;
    Free(fds);
    int rc;
    char buf[MAXBUF];
    while ((rc = read(clientfd, buf, MAXBUF)) > 0)
    {
        rio_writen(connfd, buf, rc);
    }
    Close(connfd);
    Close(clientfd);
    return NULL;
}