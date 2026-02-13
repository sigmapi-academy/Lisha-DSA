package BasicRecursion;

public class FibonacciSeries {
    public static int fibo(int n){
        if(n == 1){ //base case
            return 0;
        }
        else if(n == 2){//base case
            return 1;
        }
        else{ //recursive case
            return fibo(n-1) + fibo(n-2);
        }
    }

    public static void printFiboTerms(int howmany, int start){
        if(start<howmany){              //base case
            System.out.print(fibo(start++)+", ");
            printFiboTerms(howmany, start);//recursion
        }
        else{
            System.out.print(fibo(start));
        }
    }
}
