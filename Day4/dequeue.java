class dequeue {
    public static void main(String[] args) {
        int queue[] = {10, 20, 30, 40, 50};
        int front = 0;
        int rear = queue.length - 1;
        if (front == -1 || front > rear) {
            System.out.println("Queue is empty");
        } 
        else {
            int deleted = queue[front];
            front++;

            System.out.println("Deleted element: " + deleted);
        }
        for (int i = front; i <= rear; i++) {
            System.out.print(queue[i] + " ");
        }
    }
}