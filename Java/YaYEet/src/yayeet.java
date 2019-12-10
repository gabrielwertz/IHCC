import javax.swing.*;
import java.text.DecimalFormat;


    class init {
        public static String iData, oTotal, oTax, oTip, oCharge;
        public static Double iCharge, cTip, cTax, cTotal;


        public static void main(String[] args) {
            input();
            calcs();
            output();
        }

        // get food
        public static void input() {
            String iData = JOptionPane.showInputDialog(null, "enter food cost",
                    "Food Cost", 1);
            iCharge = Double.parseDouble(iData);
        }

        public static void calcs() {
            cTip = .15 * iCharge;
            cTax = iCharge * .07;
            cTotal = cTip + cTax + iCharge;
        }

        public static void output() {
            //format and display
            String pattern = "###,###.##";
            DecimalFormat moneyFormat = new DecimalFormat(pattern);
            oTip = moneyFormat.format(cTip);
            oTax = moneyFormat.format(cTax);
            oTotal = moneyFormat.format(cTotal);
            oCharge= moneyFormat.format(iCharge);

            JOptionPane.showMessageDialog( null, " Charge: " + oCharge +
                    " Your Tip is: " + oTip + " Sales Tax is: " + oTax + " Total is: " + oTotal);

        }

    }
