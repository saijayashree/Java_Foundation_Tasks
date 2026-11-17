import java.util.*;
class shift {
    public static void main(String[] args) {
        int a[] = {1, 2, 3, 4, 5};
        Queue<Integer> q = new LinkedList<>();
        for (int i = 0; i < a.length; i++) {
            q.add(a[i]);
        }
        int temp = q.remove();
        q.add(temp);
        System.out.println(q);
    }
}