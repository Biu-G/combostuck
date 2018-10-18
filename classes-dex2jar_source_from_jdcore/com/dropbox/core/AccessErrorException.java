package com.dropbox.core;

import com.dropbox.core.v2.auth.AccessError;

public class AccessErrorException
  extends DbxException
{
  private static final long serialVersionUID = 0L;
  private final AccessError a;
  
  public AccessErrorException(String paramString1, String paramString2, AccessError paramAccessError)
  {
    super(paramString1, paramString2);
    a = paramAccessError;
  }
  
  public AccessError getAccessError()
  {
    return a;
  }
}
