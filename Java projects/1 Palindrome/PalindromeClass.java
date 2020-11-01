public class PalindromeClass{
  static boolean isPalindrome(String text){
    int j = text.length() - 1;

    for ( int i = 0; i < j; i++ ) {
      if( text.charAt(i) != text.charAt(j) )
        return false;

      j--;
    }

    return true;
  }

  public static void main(String[] args){
    String text = "Madam";

    if( isPalindrome(text.toLowerCase()) )
      System.out.println("\n Nice,your text is palindrome;");
    else
      System.out.println("\n Sorry,Your text is not palindrome;");
  }
}
