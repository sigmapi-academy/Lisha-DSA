package DivideAndConquer;
import java.util.*;
public class QuickSort {
    public void quickSort(int A[], int low, int high){
        if(low < high){
            int pi = partition(A, low, high);
            //recursively sort elements
            quickSort(A, low, pi - 1);
            quickSort(A, pi+1, high);
        }
    }

    public int partition(int[] A, int low, int high){
        int pivot = A[high]; //choose the last element

        int i = low - 1;  //index of smaller element

        for(int j = low; j < high; j++){
            if(A[j] < pivot){
                i++;
                //swap A[i] and A[j]
                int t = A[i];
                A[i] = A[j];
                A[j] = t;
            }
        }

        //place the pivot at correct position
        int t = A[i+1];
        A[i+1] = A[high];
        A[high] = t;
        return i + 1;
    }
    public void printArray(int[] A, String msg){
        System.out.println(msg + Arrays.toString(A) );
    }
    public static void main(String[] args){
        Random r = new Random();
        int A[] = new int[10];
        int i;
        for(i = 0; i < A.length; i++){
            A[i] = r.nextInt(10, 100);
        }
        QuickSort q = new QuickSort();
        q.printArray(A, "Array before sorting: ");
        q.quickSort(A, 0, A.length-1);
        q.printArray(A, "Array after sorting:");
    }
}
