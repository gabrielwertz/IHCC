public class DemoGrossPay3
{
   public static void main(String[] args)
   {
      double hours = 25;
      double rate = 19.50;
      double gross;
      gross = calculateGross(hours, rate);
      System.out.println(hours + " hours at $" + rate +
         " per hour is $" + gross);

   }

   public static double calculateGross(double hours, double rate)
   {
      double gross;
      gross = hours * rate;
      return gross;
   }
}
