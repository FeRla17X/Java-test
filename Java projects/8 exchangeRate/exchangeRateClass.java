import java.net.MalformedURLException;
import java.net.URL;
import java.io.*;

public class exchangeRateClass {
    public static double exchangeRate(String from, String to){
      double FromCurrency = Double.parseDouble(readRSSFeed(from));
      double ToCurrency = Double.parseDouble(readRSSFeed(to));

      System.out.println("\n " + from + " = " + (FromCurrency/ToCurrency) + " " + to + " ;");
      return 0;
    }

    public static String readRSSFeed(String currency){
        try{
            URL rssUrl = new URL ("http://www.nbg.ge/rss.php");
            BufferedReader in = new BufferedReader(new InputStreamReader(rssUrl.openStream()));

            String result = "";
            String line;

            int ind = 0;
            int currLine = 0;

            if(currency == "GEL"){ return "1"; }
            while( (line = in.readLine()) != null ){
                ind++;
                if(line.contains(currency)){
                    currLine = ind + 2;
                    break;
                }
            }

            while( (line = in.readLine()) != null ){
                ind++;
                if(ind == currLine){
                  int start = line.indexOf("<td>");
                  String temp = line.substring(start + 4);
                  temp=temp.replace("<td>","");
                  int end = temp.indexOf("</td>");
                  temp = temp.substring( 0, end);
                  result +=temp+ "\n" ;
                }
            }
            in.close();
            return result;

          } catch (MalformedURLException ue){
              System.out.println("Malformed URL");
          } catch (IOException ioe){
              System.out.println("Something went wrong reading the contents");
          }
        return null;
    }

    public static void main(String[] args) {
        double result = exchangeRate("GEL","USD");
    }
}
