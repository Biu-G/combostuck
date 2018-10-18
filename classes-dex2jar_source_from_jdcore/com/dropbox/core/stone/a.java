package com.dropbox.core.stone;

import com.fasterxml.jackson.core.JsonFactory;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

final class a
{
  public static final JsonFactory a = new JsonFactory();
  private static final TimeZone b = TimeZone.getTimeZone("UTC");
  private static final int c = "yyyy-MM-dd'T'HH:mm:ss'Z'".replace("'", "").length();
  private static final int d = "yyyy-MM-dd".replace("'", "").length();
  
  public static String a(Date paramDate)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.ENGLISH);
    localSimpleDateFormat.setCalendar(new GregorianCalendar(b));
    return localSimpleDateFormat.format(paramDate);
  }
  
  public static Date a(String paramString)
    throws ParseException
  {
    int i = paramString.length();
    if (i == c)
    {
      localObject = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.ENGLISH);
    }
    else
    {
      if (i != d) {
        break label68;
      }
      localObject = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
    }
    ((DateFormat)localObject).setCalendar(new GregorianCalendar(b));
    return ((DateFormat)localObject).parse(paramString);
    label68:
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("timestamp has unexpected format: '");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append("'");
    throw new ParseException(((StringBuilder)localObject).toString(), 0);
  }
}
