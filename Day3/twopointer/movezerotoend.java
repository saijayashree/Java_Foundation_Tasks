package Day3.twopointer;

import java.util.*;

 class MoveZeroToEnd {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter size: ");
        int n = sc.nextInt();

        int arr[] = new int[n];

        System.out.println("Enter array elements:");
        for(int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }

        int st = 0;
        int end = n - 1;

        while(st < end) {
            if(arr[end] == 0) {
                end--;
            }
            else if(arr[st] == 0) {
                int temp = arr[st];
                arr[st] = arr[end];
                arr[end] = temp;

                st++;
                end--;
            }
            else {
                st++;
            }
        }

        System.out.println("After shifting: " + Arrays.toString(arr));

        sc.close();
    }
}