package com.dropbox.core;

public class DbxException
  extends Exception
{
  private static final long serialVersionUID = 0L;
  private final String a;
  
  public DbxException(String paramString)
  {
    this(null, paramString);
  }
  
  public DbxException(String paramString1, String paramString2)
  {
    super(paramString2);
    a = paramString1;
  }
  
  public DbxException(String paramString1, String paramString2, Throwable paramThrowable)
  {
    super(paramString2, paramThrowable);
    a = paramString1;
  }
  
  public DbxException(String paramString, Throwable paramThrowable)
  {
    this(null, paramString, paramThrowable);
  }
  
  public String getRequestId()
  {
    return a;
  }
}
