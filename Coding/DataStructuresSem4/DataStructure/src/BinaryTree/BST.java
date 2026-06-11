package BinaryTree;

public class BST {
    private Node root;

    public BST(Node root) {
        this.root = root;
    }

    public BST(){
        root = null;
    }

    public void insert(int data){
        if( root == null){
            root = new Node(data);
            return;
        }
        Node t = root;
        Node p = null;
        while (t != null) {
            p = t;
            if (data < t.getData()){
                t = t.getLeft();
            }
            else{
                t = t.getRight();
            }
        }
        if(data < p.getData()){
            p.setLeft(new Node(data));
        }
        else{
            p.setRight(new Node(data));
        }
    }


    public Node getRoot() {
        return root;
    }

}
