// An array for different boat types
public class DebugEleven2
{
   public static void main(String[] args)
   {
      DebugBoat[] ref = new DebugBoat[3];
      DebugRowboat blueBoat = DebugRowboat();
      DebugRowboat redBoat = DebugRowboat();
      DebugOceanLiner bigBoat = DebugOceanLiner();
      ref[0] = redBoat;
      ref[1] = blueBoat;
      ref[2] = bigBoat;
      for(x = 0; x < ref.length; ++x)
      {
         ref[x].setPassengers();
         ref[x].setPower();
         System.out.println(ref.toString());
      }
   }
}
