public class countVariantsClass{
  public static long countVariants(int stearsCount){
    // this array collects past stears' variants
    long[] array = new long[stearsCount];

    array[0] = 1;
    array[1] = 2;

    for ( int i = 2; i < array.length; i++ ) {
      array[i] = array[i-1] + array[i-2];
    }


    return array[array.length-1];
  }

  public static void main(String[] args){
    int nStears = 16;
    long result = countVariants(nStears);

    System.out.println("\n There are " + result + " variants;" );
  }
}
