package com.dropbox.core;

public class InvalidAccessTokenException
  extends DbxException
{
  private static final long serialVersionUID = 0L;
  
  public InvalidAccessTokenException(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
}
