package com.dropbox.core.v2;

import com.dropbox.core.v2.auth.DbxAppAuthRequests;

public class DbxAppClientV2Base
{
  protected final DbxRawClientV2 _client;
  private final DbxAppAuthRequests a;
  
  protected DbxAppClientV2Base(DbxRawClientV2 paramDbxRawClientV2)
  {
    _client = paramDbxRawClientV2;
    a = new DbxAppAuthRequests(paramDbxRawClientV2);
  }
  
  public DbxAppAuthRequests auth()
  {
    return a;
  }
}
