package com.dropbox.core;

public final class DbxOAuth1AccessToken
{
  private final String a;
  private final String b;
  
  public DbxOAuth1AccessToken(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
  }
  
  public String getKey()
  {
    return a;
  }
  
  public String getSecret()
  {
    return b;
  }
}
