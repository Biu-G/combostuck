package com.dropbox.core.v1;

import com.dropbox.core.util.StringUtil;

public class DbxPathV1
{
  public DbxPathV1() {}
  
  public static void checkArg(String paramString1, String paramString2)
  {
    if (paramString2 != null)
    {
      String str = findError(paramString2);
      if (str == null) {
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("'");
      localStringBuilder.append(paramString1);
      localStringBuilder.append("': bad path: ");
      localStringBuilder.append(str);
      localStringBuilder.append(": ");
      localStringBuilder.append(StringUtil.jq(paramString2));
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    paramString2 = new StringBuilder();
    paramString2.append("'");
    paramString2.append(paramString1);
    paramString2.append("' should not be null");
    throw new IllegalArgumentException(paramString2.toString());
  }
  
  public static void checkArgNonRoot(String paramString1, String paramString2)
  {
    if (!"/".equals(paramString2))
    {
      checkArg(paramString1, paramString2);
      return;
    }
    paramString2 = new StringBuilder();
    paramString2.append("'");
    paramString2.append(paramString1);
    paramString2.append("' should not be the root path (\"/\")");
    throw new IllegalArgumentException(paramString2.toString());
  }
  
  public static String findError(String paramString)
  {
    if (!paramString.startsWith("/")) {
      return "must start with \"/\"";
    }
    if (paramString.length() == 1) {
      return null;
    }
    if (paramString.endsWith("/")) {
      return "must not end with \"/\"";
    }
    return null;
  }
  
  public static String getName(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.startsWith("/"))
      {
        if ((paramString.length() > 1) && (paramString.endsWith("/")))
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Not a valid path.  Ends with a \"/\": \"");
          localStringBuilder.append(paramString);
          localStringBuilder.append("\"");
          throw new IllegalArgumentException(localStringBuilder.toString());
        }
        int i = paramString.length() - 1;
        while (paramString.charAt(i) != '/') {
          i -= 1;
        }
        return paramString.substring(i + 1);
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Not a valid path.  Doesn't start with a \"/\": \"");
      localStringBuilder.append(paramString);
      localStringBuilder.append("\"");
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    throw new IllegalArgumentException("'path' can't be null");
  }
  
  public static String getParent(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.startsWith("/"))
      {
        if ((paramString.length() > 1) && (paramString.endsWith("/")))
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Not a valid path.  Ends with a \"/\": \"");
          localStringBuilder.append(paramString);
          localStringBuilder.append("\"");
          throw new IllegalArgumentException(localStringBuilder.toString());
        }
        int i = paramString.lastIndexOf("/");
        if (paramString.length() == 1) {
          return null;
        }
        if (i == 0) {
          return "/";
        }
        return paramString.substring(0, i);
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Not a valid path.  Doesn't start with a \"/\": \"");
      localStringBuilder.append(paramString);
      localStringBuilder.append("\"");
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    throw new IllegalArgumentException("'path' can't be null");
  }
  
  public static boolean isValid(String paramString)
  {
    return findError(paramString) == null;
  }
  
  public static String[] split(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.startsWith("/"))
      {
        if ((paramString.length() > 1) && (paramString.endsWith("/")))
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Not a valid path.  Ends with a \"/\": \"");
          localStringBuilder.append(paramString);
          localStringBuilder.append("\"");
          throw new IllegalArgumentException(localStringBuilder.toString());
        }
        if (paramString.length() == 1) {
          return new String[0];
        }
        return paramString.substring(1).split("/");
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Not a valid path.  Doesn't start with a \"/\": \"");
      localStringBuilder.append(paramString);
      localStringBuilder.append("\"");
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    throw new IllegalArgumentException("'path' can't be null");
  }
}
