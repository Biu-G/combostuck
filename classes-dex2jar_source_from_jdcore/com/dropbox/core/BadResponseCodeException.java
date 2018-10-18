package com.dropbox.core;

public class BadResponseCodeException
  extends BadResponseException
{
  private static final long serialVersionUID = 0L;
  private final int a;
  
  public BadResponseCodeException(String paramString1, String paramString2, int paramInt)
  {
    super(paramString1, paramString2);
    a = paramInt;
  }
  
  public BadResponseCodeException(String paramString1, String paramString2, int paramInt, Throwable paramThrowable)
  {
    super(paramString1, paramString2, paramThrowable);
    a = paramInt;
  }
  
  public int getStatusCode()
  {
    return a;
  }
}
