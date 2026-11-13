package Day3.twopointer;

import java.util.*;

public class reverse {
    public static void main(String[] args) {
        int a[] = {5,7,1,2,3,4,6,7,8,9};

        for(int i = 0, j = a.length - 1; i < j; i++, j--) {
            int temp = a[i];
            a[i] = a[j];
            a[j] = temp;
        }

        System.out.println(Arrays.toString(a));
    }
}