import java.util.*;
public class SomeRandomNumbers2
{
   public static void main(String[] args)
   {
      Random randomNumber = new Random();
      final int LIMIT = 10;
      System.out.print(randomNumber.nextInt(LIMIT) + " ");
      System.out.print(randomNumber.nextInt(LIMIT) + " ");
      System.out.println(randomNumber.nextInt(LIMIT));
   }
}
