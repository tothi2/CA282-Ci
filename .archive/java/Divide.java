// Note:  This doesn't really implement Divide, but we don't care
// about the actual implementation here.

public class Divide {
    public static void main(String[] args) {
       int total = 0;
       int i;
       for (i = 0; i < args.length; i += 1)
       {
          total += Integer.parseInt(args[i]);
       }
       System.out.println(total);
    }
}
