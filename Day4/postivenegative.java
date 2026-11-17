 class postivenegative {
    public static void main(String[] args) {

        int arr[] = {-12, 7, -4, 18, 9, -15, 22, -6, 3};

        int temp[] = new int[arr.length];
        int k = 0;
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] < 0) {
                temp[k++] = arr[i];
            }
        }
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] > 0) {
                temp[k++] = arr[i];
            }
        }
        for (int num : temp) {
            System.out.print(num + " ");
        }
    }
}