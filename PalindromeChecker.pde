public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public String noSpaces(String sWord)
{
  String nospace = new String();
  for(int i = 0; i < sWord.length(); i++)
  {
   String test = sWord.substring(i,i+1);
   if(test.equals(" ") == false)
   nospace = nospace + test;
  }
  return nospace;
}

public String numLetters(String sString)
{
  String letter = new String();
  for(int i = 0; i < sString.length(); i++)
  {
    if(Character.isLetter(sString.charAt(i)) == true)
    {
      letter = letter + sString.charAt(i);
    }
  }
  return letter;
}

public String noCapitals(String sWord)
{
  return sWord.toLowerCase();
}

public boolean palindrome(String word)
{
  String e = noSpaces(word);
  e = numLetters(e);
  e = noCapitals(e);
    if(e.equals(reverse(e)))
    return true;
  return false;
}

public String reverse(String str)
{
  String backwards = new String();
  for(int i = str.length(); i > 0; i--)
  {
    String test = str.substring(i-1,i);
    backwards = backwards + test;
  }
  return backwards;
}



