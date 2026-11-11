
import java.util.*;

 class Task2 {

    static Stack<String> history = new Stack<>();
    static void do_action(String action) {
        history.push(action);
    }
    static String undo() {

        if (history.isEmpty()) {
            return "nothing to undo";
        }
        String last = history.pop();
        return "undid: " + last;
    }

    public static void main(String[] args) {

        do_action("enroll Anu");
        do_action("enroll Ravi");
        do_action("move Ravi to Batch B");

        System.out.println(undo());

        System.out.println(undo());

        System.out.println("latest kept: " + history.peek());
    }
}