import javax.swing.*;
import java.awt.*;

public class GUICaclExample {
    static String iName;
    static byte iCredits;
    static final double TUITION_RATE = 185;
    static double totalOwed;
    public static void main(String[]args) {
        init();
        input();
        calcs();
        output();
    }

      public static void calcs(){
          totalOwed = TUITION_RATE * iCredits;

      }
      public static void output(){
        JOptionPane.showMessageDialog(null,"hello"+iName+","+iCredits+"will cost you $"+
                        totalOwed
        ,"payup!",JOptionPane.INFORMATION_MESSAGE);
      }






    public static void init(){
        JOptionPane.showMessageDialog(null, "welcome to IHCC Tuition Calculator", "welcome", JOptionPane.INFORMATION_MESSAGE);
    }

    /**
     * prompts for name and credits
     */
    public static void input(){
        //get name
        iName = JOptionPane.showInputDialog(null, "enter student name:");
        // get credits and convert to integer
        String strCredits;
        strCredits = JOptionPane.showInputDialog(null, "enter Number of Credits:");
        iCredits = Byte.parseByte(strCredits);
    }

}
