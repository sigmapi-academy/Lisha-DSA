package BasicRecursion;

public class PrintNumbersInDescending {
    public static void printDescending(int n){
        if(n == 1){ //Base case
            System.out.print(n);
        }
        else{
            System.out.print(n+", ");
            printDescending(n-1); //recursive call
        }
    }
}
