package Day2;
 
 class Node {
    int data;
    Node next;
 
    Node(int info) {
        data = info;
        next = null;
    }
}
 
 
//package Demo;
 
class LinkedList {
 
    Node head = null;
 
    // Add node at last
    void addAtLast(int data) {
 
        Node ptr = new Node(data);
 
        if (head == null) {
            head = ptr;
        }
        else {
            Node temp = head;
 
            while (temp.next != null) {
                temp = temp.next;
            }
            
            
            
 
            temp.next = ptr;
        }
    }

    void addAtPos(int data, int pos) {
        Node ptr = new Node(data);
        int l = 1;
        Node temp = head;
 
        while (temp.next != null) {
            if (l == pos) {
                ptr.next = temp.next;
                temp.next = ptr;
                break;
            }
            temp = temp.next;
            l++;
        }
    }
    void addAtBeginning(int data)
{
    Node ptr = new Node(data);

    if(head == null)
    {
        head = ptr;
    }
    else
    {
        ptr.next = head;
        head = ptr;
    }
}
void deleteAtPos(int pos)
{
    if(head == null)
    {
        System.out.println("Empty");
        return;
    }

    Node temp = head;
    Node save = null;
    int l = 1;

    while(temp != null)
    {
        if(l == pos)
        {
            save.next = temp.next;
            break;
        }

        save = temp;
        temp = temp.next;
        l++;
    }
}
void deleteLast()
{
    if(head == null)
        return;

    if(head.next == null)
    {
        head = null;
        return;
    }

    Node temp = head;
    Node save = null;

    while(temp.next != null)
    {
        save = temp;
        temp = temp.next;
    }

    save.next = null;
}
 void deleteAtBeginning()
{
    if(head == null)
    {
        System.out.println("Empty");
        return;
    }

    head = head.next;
}

    // Display linked list
    void show() {
 
        Node temp = head;
 
        while (temp != null) {
            System.out.print(temp.data + " -> ");
            temp = temp.next;
        }
 
        System.out.println("null");
    }
}

 
 class Main {
    public static void main(String[] args) {
 
        LinkedList list = new LinkedList();
 
        list.addAtLast(10);
        list.addAtLast(20);
        list.addAtLast(30);
        list.addAtLast(40);
        list.addAtBeginning(5);
        list.addAtPos(25, 3);
        list.show();
        list .deleteLast();
        list.show();
        list.deleteAtPos(3);
         list.show();
         list.deleteAtBeginning();
          list.show();


    }
}
 