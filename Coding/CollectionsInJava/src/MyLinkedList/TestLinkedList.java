package MyLinkedList;

import java.util.Scanner;

public class TestLinkedList {
    public static void main(String[] args) {
        LinkedList ll = new LinkedList();
        Scanner sc = new Scanner(System.in);
        
        while (true) {
            System.out.println("Press 1 to add data on head");
            System.out.println("Press 2 to display the list");
            System.out.println("Press 3 to delete node from head");
            System.out.println("Press 4 to insert node at end");
            System.out.println("Press 5 to deleted node from end");
            System.out.println("Press 6 to insert a node after an existing node:");
            System.out.println("Press 7 to delete a specified node");
            System.out.println("Press 0 to exit");
            System.out.println("Enter your choice(0-3): ");
            switch(sc.nextInt()){
                case 1:
                    System.out.println("Enter data to store on head of the list: ");
                    ll.addAtHead(sc.nextInt());
                    break;
                case 2:
                    ll.printList();
                    break;
                case 3:
                    ll.deleteAtStart();
                    break;
                case 4:
                    System.out.println("Enter data to store at end of the list: ");
                    ll.addNodeAtEnd(sc.nextInt());
                    break;
                case 5:
                    ll.deleteAtEnd();
                    break;
                case 6:
                    System.out.println("Enter search node and node to insert: ");
                    ll.insertNodeAfterANode(sc.nextInt(), sc.nextInt());
                    break;
                case 7:
                    System.out.println("Enter a node to be deleted: ");
                    ll.deleteANode(sc.nextInt());
                    break;
                case 0:
                    sc.close();
                    System.out.println("Good Bye");
                    return; //exit from main.
                default:
                    System.out.println("Wrong option selected!"); 
            } 
        } 
        
    }
}
