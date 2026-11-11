
import java.util.Scanner;

class Binary {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the size of array:");
        int n = sc.nextInt();

        int arr[] = new int[n];

        System.out.println("Enter array elements in sorted order:");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }

        System.out.println("Enter the element to search:");
        int val = sc.nextInt();

        int b = 0;
        int l = n - 1;
        boolean flag = false;

        while (b <= l) {

            int mid = b + (l - b) / 2;

            if (arr[mid] == val) {
                flag = true;
                break;
            }
            else if (val < arr[mid]) {
                l = mid - 1;
            }
            else {
                b = mid + 1;
            }
        }

        if (flag) {
            System.out.println("Element found");
        }
        else {
            System.out.println("Element not found");
        }

        sc.close();
    }
}
