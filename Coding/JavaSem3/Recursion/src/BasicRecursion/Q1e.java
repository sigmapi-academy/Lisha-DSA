package BasicRecursion;

public class Q1e {
    public static void printSeries(int n, int start, int v){
        if(start < n ){
            v = 10*v + start;
            System.out.print(v+", ");
            printSeries(n, start+1, v);
        }
        else{
            v = 10*v + start;
            System.out.print(v);
        }
    }
}
