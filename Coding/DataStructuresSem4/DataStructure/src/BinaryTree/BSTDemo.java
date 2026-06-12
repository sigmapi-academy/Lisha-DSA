package BinaryTree;

import java.util.Scanner;

public class BSTDemo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        BST bst = new BST();
        int value, choice;
        System.out.println();
        while(true){
            System.out.println("\nPress 1 to insert");
            System.out.println("Press 2 to traverse tree in Preorder");
            System.out.println("Press 3 to traverse tree in inorder");
            System.out.println("Press 4 to traverse tree in Postorder");
            System.out.println("Press 5 to search a key");
            System.out.println("Press 6 to delete a key");
            
            System.out.println("Press 0 to exit");
            System.out.println("Enter your choice: ");
            choice = sc.nextInt();
            switch (choice) {
                case 1:
                    System.out.println("Enter any integer value: ");
                    value = sc.nextInt();
                    bst.insert(value);
                    break;
                case 2:
                    BinaryTreeDemo.preorder(bst.getRoot());
                    break;
                case 3:
                    BinaryTreeDemo.inorder(bst.getRoot());
                    break;
                case 4:
                    BinaryTreeDemo.postorder(bst.getRoot());
                    break;
                case 5:
                    System.out.println("\nEnter a key to search: ");
                    int key = sc.nextInt();
                    if(bst.search(bst.getRoot(), key)){
                        System.out.println(key + " is present in the tree.");
                    }
                    else{
                        System.out.println(key + " is not present in the tree.");
                    }
                    break;
                case 6:
                    System.out.println("\nEnter a key to delete from tree: ");
                    key = sc.nextInt();
                    bst.deleteNode(key);
                    break;

                case 0:
                    System.out.println("Good bye");
                    sc.close();
                    return; //exit from main(...)
                default:
                    System.out.println("Wrong option selected!");
                    break;
            }
        }
        
    }
}
