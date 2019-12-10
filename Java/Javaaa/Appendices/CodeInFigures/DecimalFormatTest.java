import javax.swing.*;
import java.text.*;
public class DecimalFormatTest
{
   public static void main(String[] args)
   {
      String pattern = "$###,###.##";
      DecimalFormat moneyFormat = new DecimalFormat(pattern);
      String iData;
      Double iSalary;
      String oSalary;
      // get salary from user
      JOptionPane.showInputDialog(null, "Enter your Desired Salary",
              "Salary Entry",1);
      //convert to double
      iSalary = Double.parseDouble(iDate);

      //format and display
      oSalary = moneyFormat.format(iSalary);
      System.out.println("Your salary is"+ oSalary);
   }

   }
}
