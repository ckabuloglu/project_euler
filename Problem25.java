import java.math.BigInteger;

public class Problem25 {
    public static void main(String[] args) {
        int answer = findFib();
        System.out.println(answer);
    }

    public static int findFib() {
        BigInteger first = new BigInteger("1");
        BigInteger second = new BigInteger("1");
        BigInteger sum = new BigInteger("0");
        BigInteger cap = new BigInteger("10");
        cap = cap.pow(999);
        int answer = 0;
        boolean flag = true;

        for (int n = 3; flag; n++) {
            sum = first.add(second);
            first = second;
            second = sum;

            if (sum.compareTo(cap) == 1) {
                answer = n;
                flag = false;
            }
        }
        return answer;
    }
}
