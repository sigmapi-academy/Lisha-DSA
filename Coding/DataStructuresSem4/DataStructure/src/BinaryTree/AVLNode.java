package BinaryTree;

public class AVLNode {
    private int data;
    private AVLNode left, right;
    private int height;
    
    public AVLNode(){
        data = 0;
        height = 0;
        left = right = null;
    }
    public AVLNode(int data) {
        this.data = data;
        height = 1;
    }
    
    public int getData() {
        return data;
    }
    public void setData(int data) {
        this.data = data;
    }
    public AVLNode getLeft() {
        return left;
    }
    public void setLeft(AVLNode left) {
        this.left = left;
    }
    public AVLNode getRight() {
        return right;
    }
    public void setRight(AVLNode right) {
        this.right = right;
    }
    @Override
    public String toString() {
        return "Node [data=" + data + "]";
    }
    public int getHeight() {
        return height;
    }
    public void setHeight(int height) {
        this.height = height;
    }    

}
