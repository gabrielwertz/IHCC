    import javax.swing.*;

    class GUICalcExample {
        //global variables


        static final double TUITION_RATE = 185;


        public static void main(String[] args){
            int iCredits;
            String iName;
            double totalOwed;
            init();         //call the init method

            iCredits=inputCredits();    //call the inputCredits method
            iName=inputName(); //call the inputName method

            totalOwed=calcs(iCredits);        //call the calc method

            output(totalOwed,iName,iCredits);       //call the output method
        }

        /**
         * javadoc comment
         * The init method creates a welcome message
         */
        public static void init(){
        /*JOptionPane.showMessageDialog(null, "Welcome to IHCC Tuition Calculator",
                "Welcome", JOptionPane.INFORMATION_MESSAGE);*/
            HelperMethods.DisplayWelcome();

        }

        /**
         * Prompts for name and credits
         */
        public static String inputName(){
            //get name
            String iName;
            iName = JOptionPane.showInputDialog(null, "Enter student name:");
            return iName;
        }
        public static int inputCredits(){
            //get credits and convert to integer
            int iCredits;

            String strCredits;
            strCredits = JOptionPane.showInputDialog(null, "Enter number of credits:");
            iCredits = Byte.parseByte(strCredits);
            return iCredits;

        }
        /**
         * Calculate tuition (credits * tuition rate)
         */
        public static double calcs(int iCredits) {
            double totalOwed;
            totalOwed = TUITION_RATE * iCredits;
            return totalOwed;
        }

        public static void output(double totalOwed, String iName, int iCredits) {
            JOptionPane.showMessageDialog(null, "Hello " + iName + ", " + iCredits +
                            " credits will cost you $" + totalOwed,
                    "Pay Up!", JOptionPane.INFORMATION_MESSAGE);

        }
    }



