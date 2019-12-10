import javax.swing.*;
import java.text.DecimalFormat;

class init {



    public static void main(String[] Args) {
        SammyMoto2.splashbois();
        int iMins;
        iMins = input();
        Procedure(iMins);
    }
// use scanner here
    public static int input() {
        int iMins = Integer.parseInt(JOptionPane.showInputDialog(null,
                "Enter the amount of minutes you have rented"));
        return iMins;
    }
    public static void Procedure(int Minutes){
        double cMins;
        double cHours;
        double cCost;
        double cMinsCost;
        double cTotal;

        cHours = Minutes / 60;
        cMins = Minutes % 60;
        cCost = cHours * 40;
        cMinsCost = cMins * 1;
        cTotal = cCost + cMinsCost;
        output(cTotal,cMins,cHours,Minutes);
    }


    public static void output(double cTotal, double cMins, double cHours,int Minutes) {
        String oTotal;
        String pattern = "$###,###.##";
        DecimalFormat moneyFormat = new DecimalFormat(pattern);
        oTotal = moneyFormat.format(cTotal);

        System.out.println( " you rented for: " + cMins
                + " minutes " + cHours + " hours " + " for a total cost of " + oTotal);

    }
}
