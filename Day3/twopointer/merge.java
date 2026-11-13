package Day3.twopointer;

class MergeSortedArray {



    public static void main(String[] args) {

        int[] a = {1, 3, 4, 6, 9, 2, 5, 7, 12};

        int[] Final = new int[a.length];

        int i = 0;
        int j = a.length / 2 + 1;
        int c = 0;

        // Compare both sorted halves
        while (i <= a.length / 2 && j < a.length) {

            if (a[i] < a[j]) {

                Final[c++] = a[i];
                i++;

            }
            else {

                Final[c++] = a[j];
                j++;

            }
        }

        // Copy remaining elements from first half
        while (i <= a.length / 2) {

            Final[c++] = a[i];
            i++;

        }

        // Copy remaining elements from second half
        while (j < a.length) {

            Final[c++] = a[j];
            j++;

        }

        // Print final sorted array
        System.out.println("Sorted Array:");

        for (int k = 0; k < Final.length; k++) {

            System.out.print(Final[k] + " ");

        }
    }

    
}