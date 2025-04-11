#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node* next;
    struct Node* prev;
};

struct Node* createNode(int data) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = data;
    newNode->next = NULL;
    newNode->prev = NULL;
    return newNode;
}

void insertEnd(struct Node** head_ref, int data) {
    struct Node* newNode = createNode(data);
    if (*head_ref == NULL) {
        *head_ref = newNode;
        return;
    }
   struct Node* temp = *head_ref;
    while (temp->next != NULL) {
        temp = temp->next;
    }

    temp->next = newNode;
    newNode->prev = temp;
}

void deleteNode(struct Node** head_ref, int data) {
    struct Node* temp = *head_ref;

    while (temp != NULL) {
        if (temp->data == data) {
            if (temp->prev != NULL) {
                temp->prev->next = temp->next;
            } else {
                *head_ref = temp->next; // If it's the head node
            }
            if (temp->next != NULL) {
                temp->next->prev = temp->prev;
            }
            free(temp);
 return;
        }
        temp = temp->next;
    }
    printf("Node with value %d not found.\n", data);
}

void displayList(struct Node* node) {
    struct Node* temp = node;
    if (temp == NULL) {
        printf("The list is empty.\n");
        return;
    }
    while (temp != NULL) {
        printf("%d ", temp->data);
        temp = temp->next;
    }
    printf("\n");
}

int main() {
    struct Node* head = NULL;
    int choice, value;
 while (1) {
        printf("Doubly Linked List Operations:\n");
        printf("1. Insert\n");
        printf("2. Delete\n");
        printf("3. Display\n");
        printf("4. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);

        switch (choice) {
            case 1:
                printf("Enter value to insert: ");
                scanf("%d", &value);
                insertEnd(&head, value);
                break;
            case 2:
                printf("Enter value to delete: ");
                scanf("%d", &value);
                deleteNode(&head, value);
                break;
            case 3:
                printf("Doubly Linked List: ");
displayList(head);
       break;
            case 4:
                exit(0);
            default:
                printf("Invalid choice! Please try again.\n");
        }
    }

    return 0;
           


