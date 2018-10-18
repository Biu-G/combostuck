package com.amap.api.mapcore2d;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class t
{
  public static double a(String paramString1, String paramString2)
  {
    try
    {
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
      paramString1 = localSimpleDateFormat.parse(paramString1);
      long l = (localSimpleDateFormat.parse(paramString2).getTime() - paramString1.getTime()) / 86400000L;
      return l;
    }
    catch (ParseException paramString1)
    {
      paramString1.printStackTrace();
    }
    return -1.0D;
  }
  
  public static String a()
  {
    return a(Calendar.getInstance());
  }
  
  public static String a(Calendar paramCalendar)
  {
    return a(paramCalendar.getTime(), "yyyy-MM-dd");
  }
  
  public static String a(Date paramDate, String paramString)
  {
    return new SimpleDateFormat(paramString).format(paramDate);
  }
}
