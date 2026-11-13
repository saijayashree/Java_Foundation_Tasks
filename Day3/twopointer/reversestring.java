package Day3.twopointer;

 class ReverseString {
    public static void main(String[] args) {
        char s[] = "HELLO".toCharArray();

        int l = 0;
        int r = s.length - 1;

        while(l < r) {
            char temp = s[l];
            s[l] = s[r];
            s[r] = temp;

            l++;
            r--;
        }

        System.out.println(new String(s));
    }
}