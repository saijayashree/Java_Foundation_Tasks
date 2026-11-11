
import java.util.Stack;

 class Rev {
    public static void main(String[] args) {

        String str = "my name is sai";
        Stack<Character> stack = new Stack<>();

        String result = "";

        for (int i = 0; i < str.length(); i++) {

            char ch = str.charAt(i);

            if (ch != ' ') {
                stack.push(ch);
            }
            else {
                while (!stack.isEmpty()) {
                    result = result + stack.pop();
                }

                result = result + " ";
            }
        }

        // Reverse the last word
        while (!stack.isEmpty()) {
            result = result + stack.pop();
        }

        System.out.println(result);
    }
}
