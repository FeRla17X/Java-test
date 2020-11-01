public class isProperlyClass{
  public static boolean isProperly(String sequence){
    boolean open = false;

    for ( int i = 0; i < sequence.length(); i++ ) {
      if(sequence.charAt(i) == '(')
        open = true;

      else if( sequence.charAt(i) == ')' )
        open = false;
    }

    return open ? false : true;
  }

  public static void main(String[] args){
    String uncorrectSequence = "h(e))(llo";
    String correctSequence = "h(e)(l)lo";

    boolean result = isProperly(correctSequence);

    System.out.println("\n This sequence is " + result +";" );
  }
}
