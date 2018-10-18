package com.dropbox.core;

public abstract class ProtocolException
  extends DbxException
{
  private static final long serialVersionUID = 0L;
  
  public ProtocolException(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
  
  public ProtocolException(String paramString1, String paramString2, Throwable paramThrowable)
  {
    super(paramString1, paramString2, paramThrowable);
  }
}
