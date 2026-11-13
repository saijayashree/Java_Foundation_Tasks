package Day3.twopointer;

import java.util.*;

class SwapAdj {
    public static void main(String[] args) {
        int a[] = {6,5,3,4,1,2,7,8,7};

        for(int i = 0, j = 1; j < a.length; i += 2, j += 2) {
            int temp = a[i];
            a[i] = a[j];
            a[j] = temp;
        }

        System.out.println(Arrays.toString(a));
    }
}