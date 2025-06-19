#include<stdio.h>
#include<stdlib.h>

struct Node{
    int data;
    struct Node *prev;
    struct Node *next;
};

void listTraversal(struct Node *ptr){

    struct Node *q;
    q = ptr;

    if(ptr->next!=NULL){
        while(q->next!=NULL){
            printf("%d\n", q->data);
            q = q->next;
        }
        printf("%d\n", q->data);
    }

    if(ptr->prev!=NULL){
        while (q->prev != NULL)
        {
            printf("%d\n", q->data);
            q = q->prev;
        }
        printf("%d\n", q->data);
    }
}

int main(){

    struct Node *firstNode, *secondNode, *thirdNode, *fourtNode;

    firstNode = (struct Node *)malloc(sizeof(struct Node *));
    secondNode = (struct Node *)malloc(sizeof(struct Node *));
    thirdNode = (struct Node *)malloc(sizeof(struct Node *));
    fourtNode = (struct Node *)malloc(sizeof(struct Node *));

    firstNode->prev = NULL;
    firstNode->data = 5;
    firstNode->next = secondNode;

   
    secondNode->prev = firstNode;
    secondNode->data = 7;
    secondNode->next = thirdNode;

    thirdNode->prev = secondNode;
    thirdNode->data = 9;
    thirdNode->next = fourtNode;

    fourtNode->prev = thirdNode;
    fourtNode->data = 11;
    fourtNode->next = NULL;

    listTraversal(fourtNode);

    return 0;
}