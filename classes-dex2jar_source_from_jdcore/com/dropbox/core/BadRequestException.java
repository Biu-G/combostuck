package com.dropbox.core;

public class BadRequestException
  extends ProtocolException
{
  private static final long serialVersionUID = 0L;
  
  public BadRequestException(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
}
