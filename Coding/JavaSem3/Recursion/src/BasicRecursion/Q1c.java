package BasicRecursion;

import java.util.Scanner;

public class Q1c {
    public void printSeries(int n, int a, int b, int c, int v){
        if(n > 1){
            System.out.print(v+", ");
            a = b;
            b = c;
            c = v;
            v = a + b + c;
            printSeries(n-1, a, b, c, v);
        }
        else{
            //print the last value
            System.out.print(v);
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter number of terms: ");
        int n = sc.nextInt();
        new Q1c().printSeries(n, 0, 0, 1, 0);
    }
}
