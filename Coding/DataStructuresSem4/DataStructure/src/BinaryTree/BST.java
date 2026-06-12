package BinaryTree;

public class BST {
    private Node root;

    public BST(Node root) {
        this.root = root;
    }

    public BST() {
        root = null;
    }

    public void insert(int data) {
        if (root == null) {
            root = new Node(data);
            return;
        }
        Node t = root;
        Node p = null;
        while (t != null) {
            p = t;
            if (data < t.getData()) {
                t = t.getLeft();
            } else {
                t = t.getRight();
            }
        }
        if (data < p.getData()) {
            p.setLeft(new Node(data));
        } else {
            p.setRight(new Node(data));
        }
    }

    public Node getRoot() {
        return root;
    }
    /*
     * public void insert(int data) {
     * root = insert(root, data);
     * }
     * 
     * private Node insert(Node node, int data) {
     * 
     * // Base case: found the position
     * if (node == null) {
     * return new Node(data);
     * }
     * 
     * // Recursive case
     * if (data < node.getData()) {
     * node.setLeft(insert(node.getLeft(), data));
     * } else {
     * node.setRight(insert(node.getRight(), data));
     * }
     * 
     * return node;
     * }
     */

    public boolean search(Node t, int key){
        if(t == null){
            return false;
        }

        if(t.getData() == key){
            return true;
        }
        if(t.getData() > key){
            return search(t.getLeft(), key);
        }
        else{
            return search(t.getRight(), key);
        }
    }

    public void deleteNode(int key){
        root = deleteNode(root, key);
    }
    
    private Node deleteNode(Node t, int key){
        
        if(t == null){
            return null;
        }
        //Search for the node
        if(key < t.getData()){
            t.setLeft(deleteNode(t.getLeft(), key));
        }
        else if (key > t.getData()){
            t.setRight(deleteNode(t.getRight(), key));
        }
        else{
            // Case 1 : leaf node
            if(t.getLeft() == null && t.getRight() == null){
                return null;
            }

            //Case 2: One Child
            if(t.getLeft() == null){
                return t.getRight();
            }

            if(t.getRight() == null){
                return t.getLeft();
            }

            //case 3: Two children
            Node successor = findMin(t.getRight());
            t.setData(successor.getData());
            t.setRight(deleteNode(t.getRight(), successor.getData()));
        }

        return t;
    }

    //Find minimum node
    private Node findMin(Node n){
        while(n.getLeft()!= null){
            n = n.getLeft();
        }
        return n;
    }
}
