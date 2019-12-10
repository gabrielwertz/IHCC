public class DebugRowboat extends DebugBoat
{
   public DebugRowboat()
   {
      super("row");
      setPower();
   }
   public void setPassengers()
   {
      super.passengers = 2;
   }
   public void setpower()
   {
      super.power = "oars";
   }
}