#include <stdio.h>
#include <stdbool.h>
#include "csapp.h"

/* Recommended max cache and object sizes */

#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

typedef struct ListNode
{
    char path[200];
    char *buf;
    size_t sz;
    struct ListNode *next;
    struct ListNode *pre;
} ListNode;

extern sem_t mutex;

extern size_t sum;

extern ListNode *head;

void get_userinput(int connfd, char buf[], char *method, char *uri, char *version);
void get_serveinput(int clientfd, int connfd, char *path);
void *get_head(int connfd, char *method, char *hostname, char *port, char *path);
void node_init(ListNode *node, char *path, char *buf, size_t sz);
bool get_cathe(char *path, char **ans, size_t *ans_len);
void insert_info(char *path, char *buf, size_t sz);