package BasicRecursion;

import java.util.Scanner;

public class Q1a {
    public void printSeries(int n, int start, int sign){
        if(start < n){
            System.out.print((start*2-1)*sign + ", ");
            printSeries(n, start+1, sign*(-1));
        }
        else{
            System.out.println((start*2-1)*sign);
        }
    }

    public static void main(String[] args) {
        int n;
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter number of terms: ");
        n = sc.nextInt();
        new Q1a().printSeries(n, 1, 1);
        sc.close();
    }
}
