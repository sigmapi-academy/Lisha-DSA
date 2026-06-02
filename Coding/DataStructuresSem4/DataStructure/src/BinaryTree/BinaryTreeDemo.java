package BinaryTree;

import java.util.Scanner;

public class BinaryTreeDemo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Node root = new Node(100);
        Node left = new Node();
        System.out.println("Enter data for node: ");
        left.setData(sc.nextInt());
        root.setLeft(left);
        Node right = new Node();
        System.out.println("Enter data for node: ");
        right.setData(sc.nextInt());
        root.setRight(right);
        
        // System.out.println("Root node = " + root);
        // System.out.println("Left child = "+left);
        // System.out.println("Right child = " + right);
        
        System.out.println("Root node = " + root);
        System.out.println("Left child = "+root.getLeft());
        System.out.println("Right child = " + root.getRight());
        Node rightLeft = new Node(150);
        right.setLeft(rightLeft);
        System.out.println("Adding a node on the left side of right child:");
        System.out.println("Root node = " + root);
        System.out.println("Left child = "+root.getLeft());
        System.out.println("Right child = " + root.getRight());
        System.out.println("Left of Right Child = " + root.getRight().getLeft());
    }
}
