package Day3.twopointer;

 class Palindrome {
    public static void main(String[] args) {
        String str = "MADAM";

        int l = 0;
        int r = str.length() - 1;

        boolean flag = true;

        while(l < r) {
            if(str.charAt(l) != str.charAt(r)) {
                flag = false;
                break;
            }

            l++;
            r--;
        }

        if(flag)
            System.out.println("Palindrome");
        else
            System.out.println("Not Palindrome");
    }
}