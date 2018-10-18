package com.dropbox.core;

import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.http.StandardHttpRequestor;
import java.util.Locale;

public class DbxRequestConfig
{
  private final String a;
  private final String b;
  private final HttpRequestor c;
  private final int d;
  
  public DbxRequestConfig(String paramString)
  {
    this(paramString, null);
  }
  
  @Deprecated
  public DbxRequestConfig(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, StandardHttpRequestor.INSTANCE);
  }
  
  @Deprecated
  public DbxRequestConfig(String paramString1, String paramString2, HttpRequestor paramHttpRequestor)
  {
    this(paramString1, paramString2, paramHttpRequestor, 0);
  }
  
  private DbxRequestConfig(String paramString1, String paramString2, HttpRequestor paramHttpRequestor, int paramInt)
  {
    if (paramString1 != null)
    {
      if (paramHttpRequestor != null)
      {
        if (paramInt >= 0)
        {
          a = paramString1;
          b = a(paramString2);
          c = paramHttpRequestor;
          d = paramInt;
          return;
        }
        throw new IllegalArgumentException("maxRetries");
      }
      throw new NullPointerException("httpRequestor");
    }
    throw new NullPointerException("clientIdentifier");
  }
  
  private static String a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    if (!paramString.contains("_")) {
      return paramString;
    }
    if (paramString.startsWith("_")) {
      return paramString;
    }
    paramString = paramString.split("_", 3);
    String str1 = paramString[0];
    String str2 = paramString[1];
    if (paramString.length == 3) {
      paramString = paramString[2];
    } else {
      paramString = "";
    }
    return b(new Locale(str1, str2, paramString));
  }
  
  private static String b(Locale paramLocale)
  {
    if (paramLocale == null) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramLocale.getLanguage().toLowerCase());
    if (!paramLocale.getCountry().isEmpty())
    {
      localStringBuilder.append("-");
      localStringBuilder.append(paramLocale.getCountry().toUpperCase());
    }
    return localStringBuilder.toString();
  }
  
  public static Builder newBuilder(String paramString)
  {
    if (paramString != null) {
      return new Builder(paramString, null);
    }
    throw new NullPointerException("clientIdentifier");
  }
  
  public Builder copy()
  {
    return new Builder(a, b, c, d, null);
  }
  
  public String getClientIdentifier()
  {
    return a;
  }
  
  public HttpRequestor getHttpRequestor()
  {
    return c;
  }
  
  public int getMaxRetries()
  {
    return d;
  }
  
  public String getUserLocale()
  {
    return b;
  }
  
  public boolean isAutoRetryEnabled()
  {
    return d > 0;
  }
  
  public static final class Builder
  {
    private final String a;
    private String b;
    private HttpRequestor c;
    private int d;
    
    private Builder(String paramString)
    {
      a = paramString;
      b = null;
      c = StandardHttpRequestor.INSTANCE;
      d = 0;
    }
    
    private Builder(String paramString1, String paramString2, HttpRequestor paramHttpRequestor, int paramInt)
    {
      a = paramString1;
      b = paramString2;
      c = paramHttpRequestor;
      d = paramInt;
    }
    
    public DbxRequestConfig build()
    {
      return new DbxRequestConfig(a, b, c, d, null);
    }
    
    public Builder withAutoRetryDisabled()
    {
      d = 0;
      return this;
    }
    
    public Builder withAutoRetryEnabled()
    {
      return withAutoRetryEnabled(3);
    }
    
    public Builder withAutoRetryEnabled(int paramInt)
    {
      if (paramInt > 0)
      {
        d = paramInt;
        return this;
      }
      throw new IllegalArgumentException("maxRetries must be positive");
    }
    
    public Builder withHttpRequestor(HttpRequestor paramHttpRequestor)
    {
      if (paramHttpRequestor != null)
      {
        c = paramHttpRequestor;
        return this;
      }
      throw new NullPointerException("httpRequestor");
    }
    
    public Builder withUserLocale(String paramString)
    {
      b = paramString;
      return this;
    }
    
    public Builder withUserLocaleFrom(Locale paramLocale)
    {
      b = DbxRequestConfig.a(paramLocale);
      return this;
    }
    
    public Builder withUserLocaleFromPreferences()
    {
      b = null;
      return this;
    }
  }
}
