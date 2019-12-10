import javax.swing.*;
import java.text.DecimalFormat;

public class KDRCalculator {
    public static String iData;
    public static int iKills;
    public static int iDeaths;
    public static double cKDR;
    public static void main(String[]args){
        KDRSplashDisplay.displaySplash();
        input();
        calcs();
        output();
    }

    private static void output() {
        String pattern ="##.00";
        DecimalFormat df = new DecimalFormat(pattern);

        JOptionPane.showMessageDialog(null,"Your KDR is "+ df.format(cKDR),
                "get good",1 );

    }

    private static void input() {
        //kill me
        iData = JOptionPane.showInputDialog(null, "Enter number of kills: ",
                "kills entry",1);
        iKills = Integer.parseInt(iData);
        //me dead
        iData = JOptionPane.showInputDialog(null, "Enter number of deaths: ",
                "deaths entry",1);
        iDeaths = Integer.parseInt(iData);
    }
    private static void calcs(){
        // be sure to cast int to double
        cKDR = (double)iKills/iDeaths;
    }

    /*public static void displaySplash() {
        JOptionPane.showMessageDialog(null, "Sup Gamers " +
                "lets determine how lame your gaming skills really are", "We live in a Socity", 1 );
       }
     */
    }

