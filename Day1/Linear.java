
import java.util.*;

class Linear {
    public static void main(String args[]) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter n:");
        int n = sc.nextInt();

        int arr[] = new int[n];

        System.out.println("Enter sorted array:");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }

        System.out.println("Enter search value:");
        int val = sc.nextInt();

        int b = 0, l = n - 1;
        boolean flag = false;

        while (b <= l) {
            int mid = (b + l) / 2;

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
            System.out.println("Found");
        } else {
            System.out.println("Not found");
        }

        sc.close();
    }
}
