package com.dropbox.core.v2;

public class DbxPathV2
{
  public DbxPathV2() {}
  
  public static String findError(String paramString)
  {
    if (paramString.length() == 0) {
      return null;
    }
    if (!paramString.startsWith("/")) {
      return "expecting first character to be \"/\"";
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
      if (paramString.length() == 0) {
        return null;
      }
      if (paramString.startsWith("/"))
      {
        if (!paramString.endsWith("/"))
        {
          int i = paramString.length() - 1;
          while (paramString.charAt(i) != '/') {
            i -= 1;
          }
          return paramString.substring(i + 1);
        }
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Not a valid path.  Ends with a \"/\": \"");
        localStringBuilder.append(paramString);
        localStringBuilder.append("\"");
        throw new IllegalArgumentException(localStringBuilder.toString());
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
      if (paramString.length() == 0) {
        return null;
      }
      if (paramString.startsWith("/"))
      {
        if (!paramString.endsWith("/")) {
          return paramString.substring(0, paramString.lastIndexOf("/"));
        }
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Not a valid path.  Ends with a \"/\": \"");
        localStringBuilder.append(paramString);
        localStringBuilder.append("\"");
        throw new IllegalArgumentException(localStringBuilder.toString());
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
      if (paramString.length() == 0) {
        return new String[0];
      }
      if (paramString.startsWith("/"))
      {
        if (!paramString.endsWith("/")) {
          return paramString.substring(1).split("/");
        }
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Not a valid path.  Ends with a \"/\": \"");
        localStringBuilder.append(paramString);
        localStringBuilder.append("\"");
        throw new IllegalArgumentException(localStringBuilder.toString());
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
