package LinearTimeSorting;

import java.util.Random;

public class RadixSort {
    // Function to get maximum value
    public static int getMax(int arr[]){
        int max = arr[0];
        for (int i = 1; i < arr.length; i++) {
            if(arr[i] > max){
                max = arr[i];
            }
        }
        return max;
    }
    // Counting sort according to digit representation by exp
    public static void countingSort(int arr[], int exp){
        int n = arr.length;
        int output[] = new int[n];
        int count[] = new int[10];

        //Store count of occurrences
        for (int i = 0; i < n; i++) {
            int digit = (arr[i]/exp) % 10;
            count[digit]++;
        }

        //Change count[i] so that it contains actual position of 
        //digit in output
        for (int i = 1; i < 10; i++) {
            count[i] += count[i-1];
        }

        //Build output array
        // Traverse from right to maintain stability
        for (int i = n - 1; i >=0 ; i--) {
            int digit =(arr[i]/exp) % 10;
            output[count[digit] - 1] = arr[i];
            count[digit]--;
        }

        // Copy output array to arr
        for (int i = 0; i < n; i++) {
            arr[i] = output[i];
        }
    }
    // Main radix sort function.
    public static void radixSort(int arr[]){
        int max = getMax(arr);
        // Apply counting sort for every digit
        for(int exp = 1; max/exp > 0; exp*=10){
            countingSort(arr, exp);
        }
    }
    //display array
    static void printArray(int arr[], String msg){
        System.out.println(msg);
        for(int x: arr){
            System.out.print(x + " ");
        }
        System.out.println();
    }
    //main function
    public static void main(String[] args) {
        Random r = new Random();
        int A[] = new int[r.nextInt(10, 21)];
        for (int i = 0; i < A.length; i++) {
            A[i] = r.nextInt(1, 100);
        }

        printArray(A, "Before sorting: ");
        radixSort(A);
        printArray(A, "After sorting: ");
    }
}
