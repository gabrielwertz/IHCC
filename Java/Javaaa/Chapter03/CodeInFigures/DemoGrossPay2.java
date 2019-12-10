public class DemoGrossPay2
{
   public static void main(String[] args)
   {
      double hours = 25;
      double yourHoursWorked = 37.5;
      calculateGross(10, 15.00);
      calculateGross(hours, 17.25);
      calculateGross(yourHoursWorked, 20.50);
   }

   public static void calculateGross(double hours, double rate)
   {
      double gross;
      gross = hours * rate;
      System.out.println(hours + " hours at $" +
         rate +          " per hour is $" + gross);
   }
}
