
 class Reverse {
    public static void main(String[] args) {

        String str = "my name is asha";
        char[] arr = str.toCharArray();

        int start = 0;

        for (int i = 0; i <= arr.length; i++) {

            if (i == arr.length || arr[i] == ' ') {

                int left = start;
                int right = i - 1;

                while (left < right) {
                    char temp = arr[left];
                    arr[left] = arr[right];
                    arr[right] = temp;

                    left++;
                    right--;
                }

                start = i + 1;
            }
        }

        System.out.println(new String(arr));
    }
}
