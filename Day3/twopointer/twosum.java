package Day3.twopointer;



 class SumTarget {
    public static void main(String[] args) {
        int[] arr = {10, 20, 30, 40, 50};
        int target = 90;
        int l = 0;
        int r = arr.length - 1;
        while(l < r){
            int sum = arr[l] + arr[r];
            if(sum == target){
                System.out.println(arr[l] + " " + arr[r]);
                break;
            } else if (sum > target) {
                r--;
            }else {
                l++;
            }
        }
    }
}
 