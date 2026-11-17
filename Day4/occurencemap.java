import java.util.*;

class occurencemap {
    public static void main(String[] args) {
        String books[] = {"dsa", "os", "java", "java", "maths", "os", "sql", "sql"};
        HashMap<String, Integer> map = new HashMap<>();
        for (int i = 0; i < books.length; i++) {
            if (map.containsKey(books[i])) {
                map.put(books[i], map.get(books[i]) + 1);
            } 
            else {
                map.put(books[i], 1);
            }
        }
        System.out.println(map);
    }
}