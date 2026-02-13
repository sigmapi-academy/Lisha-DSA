package BasicRecursion;
/*
 * 5!=5*4*3*2*1 = 120
 */
public class Factorial {
    public static int getFactorial(int n){
        //n!= n * (n-1) * (n-2)*...*(n-k)  The condition is n > k 
        // (n-k) = 1, then we stop or this is the base case.
        // n = 0, then 0! = 1 another base case
        //we need to think about base case or exit case
        if( n == 0 || n == 1){
            if(n==1){
                System.out.print(n);
            }
            return 1;
        }
        else{
            System.out.print(n+"*");
            return n * getFactorial(n-1);
        }
    }

    public static void main(String[] args) {
        System.out.print("\n 5! = ");
        System.out.print( " = " + getFactorial(5));
        System.out.print("\n 6! = ");
        System.out.println( " = "+getFactorial(6));
    }
}
