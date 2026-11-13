package Day3.twopointer;

import java.util.*;

class Swap {
    public static void main(String[] args) {
        int a[] = {5,6,3,4,1,2,7,8};

        for(int i = 0, j = a.length / 2; j < a.length; i++, j++) {
            int temp = a[i];
            a[i] = a[j];
            a[j] = temp;
        }

        System.out.println(Arrays.toString(a));
    }
}