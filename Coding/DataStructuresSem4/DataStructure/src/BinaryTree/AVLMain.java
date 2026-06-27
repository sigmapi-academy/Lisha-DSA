package BinaryTree;

public class AVLMain {
    public static void main(String[] args){
        AVLTree tree = new AVLTree();

        tree.insert(10);
        tree.insert(20);
        tree.insert(30);
        tree.insert(25);
        tree.insert(40);
        tree.insert(50);
        tree.insert(15);

        System.out.println("Preorder Traversal");
        tree.preorder();
        System.out.println();
        System.out.println("Root Node: "+ tree.getRoot().getData());
    }
}
