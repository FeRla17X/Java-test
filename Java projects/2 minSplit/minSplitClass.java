public class minSplitClass{
  public static int[] coins = {1,5,10,20,50};
  public static int coinsQuant = coins.length;

  public static int minSplit(int amount){
    int result = 0;

    for ( int i = coinsQuant - 1; i >= 0; i-- ) {
      int remainder = amount / coins[i];

      if( remainder >= 1 ){
        result += remainder;
        amount -= remainder * coins[i];

        if(amount == 0)
          break;
      }
    }

    return result;
  }

  public static void main(String[] args){
    int amount = 99;
    int result = minSplit(amount);

    System.out.println("\n You'll get " + result + " coins;");
  }
}
