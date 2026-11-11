
import java.util.Scanner;

public class Insertion {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the size of array:");
        int n = sc.nextInt();

        int a[] = new int[n];

        System.out.println("Enter array elements:");
        for (int i = 0; i < n; i++) {
            a[i] = sc.nextInt();
        }

        // Insertion Sort
        for (int i = 1; i < n; i++) {

            int temp = a[i];
            int j = i - 1;

            while (j >= 0 && a[j] > temp) {
                a[j + 1] = a[j];
                j--;
            }

            a[j + 1] = temp;
        }

        System.out.println("Sorted array:");
        for (int i = 0; i < n; i++) {
            System.out.print(a[i] + " ");
        }

        sc.close();
    }
}
