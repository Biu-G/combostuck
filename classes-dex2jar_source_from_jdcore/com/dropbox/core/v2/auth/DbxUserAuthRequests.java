package com.dropbox.core.v2.auth;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.LocalizedText;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.v2.DbxRawClientV2;

public class DbxUserAuthRequests
{
  private final DbxRawClientV2 a;
  
  public DbxUserAuthRequests(DbxRawClientV2 paramDbxRawClientV2)
  {
    a = paramDbxRawClientV2;
  }
  
  public void tokenRevoke()
    throws DbxApiException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/auth/token/revoke", null, false, StoneSerializers.void_(), StoneSerializers.void_(), StoneSerializers.void_());
      return;
    }
    catch (DbxWrappedException localDbxWrappedException)
    {
      String str = localDbxWrappedException.getRequestId();
      LocalizedText localLocalizedText = localDbxWrappedException.getUserMessage();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected error response for \"token/revoke\":");
      localStringBuilder.append(localDbxWrappedException.getErrorValue());
      throw new DbxApiException(str, localLocalizedText, localStringBuilder.toString());
    }
  }
}
