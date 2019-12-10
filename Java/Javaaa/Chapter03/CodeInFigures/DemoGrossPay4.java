public class DemoGrossPay4
{
   public static void main(String[] args)
   {
      double hours = 30;
      double rate = 20.00;
      double net;
      net = calculateNetPay(hours, rate);
      System.out.println(hours + " hours at $" + rate +
         " per hour is $" + net + " net pay");

   }

   public static double calculateNetPay(double hours, double rate)
   {
      double gross;
      double withholding;
      double net;
      gross = calculateGross(hours, rate);
      withholding = calculateWithholding(gross);
      net = gross - withholding;
      return net;
   }
   public static double calculateGross(double hours, double rate)
   {
      double gross = hours * rate;
      return gross;
   }
   public static double calculateWithholding(double gross)
   {
      final double WITHHOLD_RATE = 0.20;
      double withholding = gross * WITHHOLD_RATE;
      return withholding;
   }
}
