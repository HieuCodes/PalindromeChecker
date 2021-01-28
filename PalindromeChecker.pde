public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(onlyLetters(noSpaces(noCapitals(word))).equals(reverse(onlyLetters(noSpaces(noCapitals(word))))))
    return true;
  else
    return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length(); i > 0; i--){
    sNew = sNew + str.substring(i-1,i);
  }
    return sNew;
}
public String noCapitals(String sWord){
  String answer = sWord.toLowerCase();
  return answer;
  
}
public String noSpaces(String sWord){
  String answer = new String();
  for ( int i = 0; i < sWord.length(); i ++){
    if (sWord.substring(i,i+1).equals(" ") == false){
      answer = answer + sWord.substring(i,i+1);
    }
  }
  return answer;
}
public String onlyLetters(String sString){
  String answer = new String();
  for (int i = 0; i < sString.length(); i++){
    if (Character.isLetter(sString.charAt(i)) == true){
      answer = answer + sString.substring(i,i+1);
    }
  }
  return answer;
}


