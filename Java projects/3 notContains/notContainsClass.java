public class notContainsClass{
  public static int notContains(int[] array){
    // searches the first non contained number

    for ( int i = 1; i <= array[array.length - 1]+1; i++ ) {
      // counts the array

      for ( int j = 0; j < array.length; j++ ) {
        if( i == array[j] )
          break;

        if( j == array.length - 1 )
          return i;
      }
    }
    return 0;
  }

  public static void main(String[] args){
    int[] array = {4,3,2};
    int result = notContains(array);

    System.out.println("\n Your array does not contain " + result +";");
  }
}
