package BinaryTree;

import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

public class BinaryTreeDemo {
    public static void preorder(Node root){
        if(root == null){
            return;
        }
        System.out.print("==>"+root.getData());
        preorder(root.getLeft());
        preorder(root.getRight());
    } 

    public static void inorder(Node root){
        if(root == null){
            return;
        }
        inorder(root.getLeft());
        System.out.print("==>"+root.getData());
        inorder(root.getRight());
    }

    public static void postorder(Node root){
        if(root == null){
            return;
        }
        postorder(root.getLeft());
        postorder(root.getRight());
        System.out.print("==>"+root.getData());
    }

    public static void levelorder(Node root){
        if (root == null){
            return;
        }

        Queue<Node> q = new LinkedList<>();
        System.out.println();
        q.add(root);
        while(!q.isEmpty()){
            Node t = q.poll();
            System.out.print("==>"+t.getData());
            if(t.getLeft()!= null){
                q.add(t.getLeft());
            }

            if(t.getRight()!= null){
                q.add(t.getRight());
            }
        }
    }

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

        System.out.println("\nPreorder traversal: ");
        preorder(root);
        System.out.println("\nInorder traversal: ");
        inorder(root);
        System.out.println("\nPostorder traversal: ");
        postorder(root);
        System.out.println("\nLevel wise traversal: ");
        levelorder(root);
    }
}
