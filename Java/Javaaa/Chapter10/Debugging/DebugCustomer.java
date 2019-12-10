public class DebugCustomer
{
    protected int idNumber;
    protected String name;
    protected double creditLimit;
    public DebugCustomer(int id, name, double creditLimit)
    {
       idNumber = id;
       name = name;
       creditLimit = credit;
    }
    public void display()
    {
       System.out.println("Customer # + idNumber +
          " Name: " +  name, "\nCredit limit $" + creditLimit);
    }
}
