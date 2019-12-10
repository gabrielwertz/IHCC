import javax.swing.*;


class init{
k
    public static int iTotal;
    public static double iRate = .45;
    public static int cDozen;
    public static double cTotalLeftover;
    public static int cLeftover;
    public static double cTotal;
    public static double cCost;


    public static void main(String[] Args) {
        calcs();
        output();
    }

    public static void calcs() {

    iTotal =Integer.parseInt(JOptionPane.showInputDialog(null,"enter the number of eggs",JOptionPane.UNINITIALIZED_VALUE));
    cLeftover =iTotal %12;
    cTotalLeftover =cLeftover *iRate;
    cDozen =iTotal /12;
    cCost =cDozen *3.25;
    cTotal =cCost +cTotalLeftover;
}
    public static void output(){
        JOptionPane.showMessageDialog(null,"You Have: " + iTotal + " eggs","total"
                ,JOptionPane.INFORMATION_MESSAGE);
        JOptionPane.showMessageDialog(null,"That's" + cDozen + " dozen,$3.25 a dozen and "
                + cLeftover + " loose eggs at $.45 for:$" + cTotal,"ya",JOptionPane.INFORMATION_MESSAGE);
    }
}

