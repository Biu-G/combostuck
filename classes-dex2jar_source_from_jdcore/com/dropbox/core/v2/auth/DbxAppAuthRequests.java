package com.dropbox.core.v2.auth;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.v2.DbxRawClientV2;

public class DbxAppAuthRequests
{
  private final DbxRawClientV2 a;
  
  public DbxAppAuthRequests(DbxRawClientV2 paramDbxRawClientV2)
  {
    a = paramDbxRawClientV2;
  }
  
  TokenFromOAuth1Result a(a paramA)
    throws TokenFromOAuth1ErrorException, DbxException
  {
    try
    {
      paramA = (TokenFromOAuth1Result)a.rpcStyle(a.getHost().getApi(), "2/auth/token/from_oauth1", paramA, false, a.a.a, TokenFromOAuth1Result.a.a, TokenFromOAuth1Error.a.a);
      return paramA;
    }
    catch (DbxWrappedException paramA)
    {
      throw new TokenFromOAuth1ErrorException("2/auth/token/from_oauth1", paramA.getRequestId(), paramA.getUserMessage(), (TokenFromOAuth1Error)paramA.getErrorValue());
    }
  }
  
  public TokenFromOAuth1Result tokenFromOauth1(String paramString1, String paramString2)
    throws TokenFromOAuth1ErrorException, DbxException
  {
    return a(new a(paramString1, paramString2));
  }
}
