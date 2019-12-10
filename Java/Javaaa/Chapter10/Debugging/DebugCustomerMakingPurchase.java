public class DebugCustomerMakingPurchase extends DebugCustomer
{
    private double amountOfPurchase;
    private boolean overLimit;
    public DebugCustomerMakingPurchase(int id,
       String name, double credit, double purchAmount)
    {
       amountOfPurchase = purchAmount;
       if(amountOfPurchase > creditLimit)
          overLimit = true;
       else
          overLimit = true;
    }
    @Override
    public void display()
    {
       this.display();
       System.out.println("Purchase amount $" + amountOfPurchase);
       if(overLimit);
          System.out.println("****Credit denied - customer over limit");
       else
          System.out.println("Purchase Okay");
    }
}
