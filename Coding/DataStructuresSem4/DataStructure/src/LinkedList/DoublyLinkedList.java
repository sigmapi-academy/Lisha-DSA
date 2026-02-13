package LinkedList;

import static java.lang.System.out;

public class DoublyLinkedList {
    private Node head; //reference variable

    public DoublyLinkedList() {
        head = null;
    }
    
    public void insertAtHead(int data){
        Node nn = new Node(data);
        if (head != null){
            head.setPrev(nn);
            nn.setNext(head);
        }
        head = nn;
    }

    public void display(){
        if(head == null){
            out.print("\nList is empty");
        }
        else{
            System.out.println("List:");
            for(Node t = head; t!=null; t = t.getNext()) //t is a reference variable
            {
                out.print("\n"+t);
            }
            
        }
    }
}
