#include "csapp.h"

typedef struct
{
    int connfd;
    int clientfd;
} my_fds;

extern sem_t connect_mutex;

void connect_head(int connfd, char *hostname, char *port);
void *client_help(void *arg);
void *server_help(void *arg);