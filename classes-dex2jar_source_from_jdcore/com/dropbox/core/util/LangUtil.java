package com.dropbox.core.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class LangUtil
{
  public LangUtil() {}
  
  public static <T> T[] arrayConcat(T[] paramArrayOfT1, T[] paramArrayOfT2)
  {
    if (paramArrayOfT1 != null)
    {
      if (paramArrayOfT2 != null)
      {
        Object[] arrayOfObject = Arrays.copyOf(paramArrayOfT1, paramArrayOfT1.length + paramArrayOfT2.length);
        System.arraycopy(paramArrayOfT2, 0, arrayOfObject, paramArrayOfT1.length, paramArrayOfT2.length);
        return arrayOfObject;
      }
      throw new IllegalArgumentException("'b' can't be null");
    }
    throw new IllegalArgumentException("'a' can't be null");
  }
  
  public static AssertionError badType(Object paramObject)
  {
    if (paramObject == null)
    {
      paramObject = "bad type: null";
    }
    else
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("bad type: ");
      localStringBuilder.append(paramObject.getClass().getName());
      paramObject = localStringBuilder.toString();
    }
    return new AssertionError(paramObject);
  }
  
  public static RuntimeException mkAssert(String paramString, Throwable paramThrowable)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(": ");
    localStringBuilder.append(paramThrowable.getMessage());
    paramString = new RuntimeException(localStringBuilder.toString());
    paramString.initCause(paramThrowable);
    return paramString;
  }
  
  public static <T> boolean nullableEquals(T paramT1, T paramT2)
  {
    boolean bool = false;
    if (paramT1 == null)
    {
      if (paramT2 == null) {
        bool = true;
      }
      return bool;
    }
    if (paramT2 == null) {
      return false;
    }
    return paramT1.equals(paramT2);
  }
  
  public static int nullableHashCode(Object paramObject)
  {
    if (paramObject == null) {
      return 0;
    }
    return paramObject.hashCode() + 1;
  }
  
  public static Date truncateMillis(Date paramDate)
  {
    if (paramDate != null)
    {
      long l = paramDate.getTime();
      return new Date(l - l % 1000L);
    }
    return paramDate;
  }
  
  public static List<Date> truncateMillis(List<Date> paramList)
  {
    if (paramList != null)
    {
      ArrayList localArrayList = new ArrayList(paramList.size());
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        long l = ((Date)paramList.next()).getTime();
        localArrayList.add(new Date(l - l % 1000L));
      }
      return localArrayList;
    }
    return paramList;
  }
}
