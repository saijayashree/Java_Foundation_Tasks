import java.util.*;
class halfreverse {
        public static void main(String[] args) {
        Queue<Integer> q = new LinkedList<>();
        Queue<Integer> temp = new LinkedList<>();
        int a[] = {1, 2, 3, 4, 5, 6};
        for (int i = 0; i < a.length; i++) {
            q.add(a[i]);
        }
        int mid = q.size() / 2;
        for (int i = 0; i < mid; i++) {
            temp.add(q.remove());
        }
        while (!temp.isEmpty()) {
            q.add(temp.remove());
        }
        while (!q.isEmpty()) {
            System.out.print(q.remove() + " ");
        }
    }
}