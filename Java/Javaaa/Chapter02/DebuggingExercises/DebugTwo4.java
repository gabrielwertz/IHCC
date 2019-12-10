import javax.swing.JOptionPane;
public class DebugTwo4
{
   public static void main(String[] args)
   {
      string costString;
      double cost;
      final TAX = 0.06;
      costString = JOptionPane.showInputDialog(null,
         "Enter price of item you are buying", "Purchases",
         JOptionPane.INFORMATION_MESSAGE);
      cost = Double.parsedouble(coststring);
      JOptionPane.showMessageDialog("With " + TAX * 100 +
         "% tax,  purchase  is $" + cost + cost * TAX);
   }
}
