package com.dropbox.core;

public class BadResponseException
  extends ProtocolException
{
  private static final long serialVersionUID = 0L;
  
  public BadResponseException(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
  
  public BadResponseException(String paramString1, String paramString2, Throwable paramThrowable)
  {
    super(paramString1, paramString2, paramThrowable);
  }
}
