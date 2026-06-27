package BinaryTree;

public class AVLTree {
    private AVLNode root;

    public AVLTree(){
        root = null;
    }

    public AVLNode getRoot() {
        return root;
    }

    public void setRoot(AVLNode root) {
        this.root = root;
    }

    //height of a node
    private int heightOfNode(AVLNode node){
        if (node == null){
            return 0;
        }
        return node.getHeight();
    }
    //Balance Factor
    private int getBalance(AVLNode node){
        if (node == null){
            return 0;
        }
        else{
            return heightOfNode(node.getLeft()) - heightOfNode(node.getRight());
        }
    }
    //Right Rotation
    private AVLNode rightRotate(AVLNode y){
        AVLNode x = y.getLeft();
        AVLNode t2 = x.getRight();

        x.setRight(y);
        y.setLeft(t2);

        y.setHeight(Math.max(heightOfNode(y.getLeft()), heightOfNode(x.getRight()))+1);
        x.setHeight(Math.max(heightOfNode(x.getLeft()), heightOfNode(x.getRight()))+1);

        return x;
    }
    //Left Rotation
    private AVLNode leftRotate(AVLNode x){
        AVLNode y = x.getRight();
        AVLNode t2 = y.getLeft();

        y.setLeft(x);
        x.setRight(t2);

        x.setHeight(Math.max(heightOfNode(x.getLeft()), heightOfNode(x.getRight())) + 1);
        y.setHeight(Math.max(heightOfNode(y.getLeft()),heightOfNode(y.getRight()))+ 1);

        return y;
    }
    //Insert
    private AVLNode insert(AVLNode node, int key){
        if(node == null){
            return new AVLNode(key);
        }

        if(key < node.getData()){
            node.setLeft(insert(node.getLeft(), key));
        }
        else if(key > node.getData()){
            node.setRight(insert(node.getRight(), key));
        }
        else{
            return node;
        }

        node.setHeight(Math.max(heightOfNode(node.getLeft()), heightOfNode(node.getRight())) + 1);
        
        // balancing
        int balance = getBalance(node);

        //LL Case
        if(balance > 1 && key < node.getLeft().getData()){
            return rightRotate(node);
        }

        //RR Case
        if(balance < - 1 && key > node.getRight().getData()){
            return leftRotate(node);
        }

        //LR Case
        if(balance > 1 && key > node.getLeft().getData()){
            node.setLeft(leftRotate(node.getLeft()));
            return rightRotate(node);
        }

        //RL Case
        if(balance < -1 && key < node.getRight().getData()){
            node.setRight(rightRotate(node.getRight()));
            return leftRotate(node);
        }

        return node;
    }

    public void insert(int key){
        root = insert(root, key);
    }
    
    //Preorder traversal
    private void preorder(AVLNode node){
        if(node != null){
            System.out.print(node.getData()+"===>");
            preorder(node.getLeft());
            preorder(node.getRight());
        }
    }

    public void preorder(){
        preorder(root);
    }
}
