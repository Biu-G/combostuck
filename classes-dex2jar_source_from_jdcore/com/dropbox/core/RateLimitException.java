package com.dropbox.core;

import java.util.concurrent.TimeUnit;

public class RateLimitException
  extends RetryException
{
  private static final long serialVersionUID = 0L;
  
  public RateLimitException(String paramString1, String paramString2, long paramLong, TimeUnit paramTimeUnit)
  {
    super(paramString1, paramString2, paramLong, paramTimeUnit);
  }
}
