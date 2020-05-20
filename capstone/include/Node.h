//Node.h

#ifndef NODE   
#define NODE   

class Node { 
public:
void push(Node** head_ref, int x,int y);
void deleteNode( Node **head_ref, int position); 
void printList( Node *node) ;
Node();
~Node();
private: 
    int x;
    int y; 
    Node* next; 
}; 








#endif 
