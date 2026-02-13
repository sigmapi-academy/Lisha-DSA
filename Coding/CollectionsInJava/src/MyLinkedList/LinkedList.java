package MyLinkedList;

public class LinkedList {
    Node head;

    public LinkedList() {
        head = null;
    }
    //append the node at the end
    public void add(int data){
        //write the code here 
    }

    // add the node at the head.
    public void addAtHead(int data){
        if(head == null){
            head = new Node(data);
        }
        else{
            //List contains a node
            Node t = new Node(data);
            t.next = head;
            head = t;
        }
    }

    public void addNodeAtEnd(int data){
        if(head == null){
            head = new Node(data);
        }
        else{
            Node newNode = new Node(data);
            Node t = head;
            while(t.next != null){
                t = t.next;
            }
            t.next = newNode;
        }
    }

    public void deleteAtEnd(){
        if(head == null){
            System.out.println("List is empty!");
        }
        else{
            Node t = head;
            if(t.next == null){
                head = null;
                System.out.println("Deleted node: " + t.data);
                return;
            }
            while(t.next.next != null){
                t = t.next;
            }
            System.out.println("Deleted node: "+ t.next.data);
            t.next = null;

        }
    }

    public void printList(){
        Node t = head;
        if(t == null){
            System.out.println("List is empty!");
        }
        else{
            for(;t!=null; t = t.next){
                System.out.print("==>"+t.data);
            }
            System.out.println();
        }
    }

    public void deleteAtStart(){
        if(head == null){
            System.out.println("List is empty");
        }
        else{
            Node t = head;
            head = head.next;
            t.next = null; //to disconnect the node from the list.
            System.out.println("Deleted node: " + t.data);
        }
    }

    public void insertNodeAfterANode(int searchNode, int data){
        if(head == null){
            System.out.println("List is empty!");
        }
        else{
            Node t = head;
            while(t != null){
                if(t.data == searchNode){
                    //we need to perform insertion
                    Node nn = new Node(data);
                    nn.next = t.next;
                    t.next = nn;
                    return; //exit the method
                }
                t = t.next;
            }
        }
    }

    /**
     * This method will delete a node passed as a parameter
     * @param node is a search node
     */
    public void deleteANode(int node){
        if(head == null){
            System.out.println("List is empty.");
        }
        else if(head.data == node){
            //case of first node
            System.out.println("Node deleted: " + node);
            Node t = head;
            head = head.next;
            t.next = null; //detaching the node from the list
        }
        else{
            //case after the first node
            Node curr = head.next, prev = head;
            while(curr!= null){
                if(curr.data == node){
                    System.out.println("Node deleted: " + node);
                    prev.next = curr.next;
                    curr.next = null;
                    return;
                }
                prev = curr;
                curr = curr.next;
            }
        }
    }
}
