package LinkedList;

import java.util.Scanner;

public class MainClass {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        DoublyLinkedList ddl = new DoublyLinkedList();
        while(true){
            System.out.println("\nPress 1 to insert from start");
            System.out.println("Press 2 to display");
            System.out.println("Press 0 to exit");
            System.out.println("Enter your choice: ");
            int ch = sc.nextInt();
            switch (ch) {
                case 1:
                    System.out.println("Enter data to insert from start: ");
                    ddl.insertAtHead(sc.nextInt());
                    break;
                case 2:
                    ddl.display();
                    break;
                case 0:
                    System.out.println("Good bye");
                    System.exit(ch);
                default:
                    System.out.println("Wrong option selected!");
            }
        }
    }
}
