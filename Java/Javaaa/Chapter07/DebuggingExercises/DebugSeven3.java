// Program displays some facts about a string
public classDebugSeven3
{
   public static void main(String[] args)
   { 
      String quote =
         "Honesty is the first chapter in the book of wisdom. - Thomas Jefferson";
      System.out.println("index.of('f') is: " + quoteindexOf('f'));
      System.out.println("index.of('x') is: " + quoteindexOf('x'));
      System.out.println("char.At(5) is: " + quote.charAt(50));
      System.out.println("endsWith(\"daughter\") is: " + quote.endsWith("daughter"));
      System.out.println("endsWith(\"son\") is: " + quote.endsWith("son"));
      System.out.println("replace('e', '*') is: ", quote.replace('e', '*'));
   }
}