package HeapInJava;

import java.util.Arrays;
import java.util.Random;

public class HeapSort {
    void heapify(int arr[], int n, int i){
        int largest = i;
        int left = 2 * i + 1;
        int right = 2 * i + 2;

        if(left < n && arr[left] > arr[largest]){
            largest = left;
        }

        if(right < n && arr[right] > arr[largest]){
            largest = right;
        }

        if(largest != i){
            int t = arr[i];
            arr[i]= arr[largest];
            arr[largest] = t;

            heapify(arr, n, largest);
        }
    }

    void heapSort(int arr[]){
        int n = arr.length;

        // Step one: build Max heap
        for (int i = n/2 - 1; i >= 0; i--) {
            heapify(arr, n, i);
        }

        // Step 2: extract elements. 
        for (int i = n - 1; i >= 0; i--) {
            int t = arr[0];
            arr[0] = arr[i];
            arr[i] = t;
            //Step 3: call heapify on the reduced heap
            heapify(arr, i, 0);
        }
    }

    public static void main(String[] args) {
        // int arr[] = {12, 11, 13, 5, 6, 7 };
        Random r = new Random();
        int arr[] = new int[r.nextInt(10, 21)];
        for (int i = 0; i < arr.length; i++) {
            arr[i] = r.nextInt(1, 100);
        }
        HeapSort hs = new HeapSort();
        System.out.println("\nBefore sorting: "+Arrays.toString(arr));
        hs.heapSort(arr);
        System.out.println("\nAfter sorting: " + Arrays.toString(arr));
    }
}
