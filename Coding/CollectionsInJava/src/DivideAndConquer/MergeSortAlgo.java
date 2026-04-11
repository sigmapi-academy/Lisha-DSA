package DivideAndConquer;
public class MergeSortAlgo {
    public static void mergeSort(int arr[], int lb, int ub){

        if(lb < ub){
            int mid = (lb+ub)/2;
            mergeSort(arr, lb, mid);
            mergeSort(arr, mid+1, ub);

            merge(arr, lb, mid, ub);
        }
    }

    public static void merge(int[] arr, int lb, int mid, int ub){
        int n1 = mid - lb + 1;
        int n2 = ub - mid;

        int[] leftArray = new int[n1];
        int[] rightArray = new int[n2];

        for (int i = 0; i < leftArray.length; i++) {
            leftArray[i] = arr[lb +i];
        }

        for (int i = 0; i < rightArray.length; i++) {
            rightArray[i] = arr[mid + 1 + i];
        }

        int i = 0, j = 0;
        int k = lb;
        while(i < n1 && j < n2 ){
            if(leftArray[i] <= rightArray[j]){
                arr[k] = leftArray[i];
                i++;
            }
            else{
                arr[k] = rightArray[j];
                j++;
            }
            k++;
        }

        while(i < n1){
            arr[k] = leftArray[i];
            i++;
            k++;
        }

        while (j < n2) {
            arr[k] = rightArray[j];
            j++;
            k++;
        }
    }

    public static void display(int[] a, String msg){
        System.out.println(msg);
        for (int i : a) {
            System.out.print(i + " ");
        }
        System.out.println();
    }
    public static void main(String[] args) {
        int arr[] = {38, 27, 43, 3, 9, 82, 10, 11, 5};

        display(arr, "Before sorting: ");
        mergeSort(arr, 0, arr.length-1);
        display(arr, "After sorting: ");
    }
}
