package com.dropbox.core.v2;

import com.dropbox.core.v2.auth.DbxUserAuthRequests;
import com.dropbox.core.v2.fileproperties.DbxUserFilePropertiesRequests;
import com.dropbox.core.v2.filerequests.DbxUserFileRequestsRequests;
import com.dropbox.core.v2.files.DbxUserFilesRequests;
import com.dropbox.core.v2.paper.DbxUserPaperRequests;
import com.dropbox.core.v2.sharing.DbxUserSharingRequests;
import com.dropbox.core.v2.users.DbxUserUsersRequests;

public class DbxClientV2Base
{
  protected final DbxRawClientV2 _client;
  private final DbxUserAuthRequests a;
  private final DbxUserFilePropertiesRequests b;
  private final DbxUserFileRequestsRequests c;
  private final DbxUserFilesRequests d;
  private final DbxUserPaperRequests e;
  private final DbxUserSharingRequests f;
  private final DbxUserUsersRequests g;
  
  protected DbxClientV2Base(DbxRawClientV2 paramDbxRawClientV2)
  {
    _client = paramDbxRawClientV2;
    a = new DbxUserAuthRequests(paramDbxRawClientV2);
    b = new DbxUserFilePropertiesRequests(paramDbxRawClientV2);
    c = new DbxUserFileRequestsRequests(paramDbxRawClientV2);
    d = new DbxUserFilesRequests(paramDbxRawClientV2);
    e = new DbxUserPaperRequests(paramDbxRawClientV2);
    f = new DbxUserSharingRequests(paramDbxRawClientV2);
    g = new DbxUserUsersRequests(paramDbxRawClientV2);
  }
  
  public DbxUserAuthRequests auth()
  {
    return a;
  }
  
  public DbxUserFilePropertiesRequests fileProperties()
  {
    return b;
  }
  
  public DbxUserFileRequestsRequests fileRequests()
  {
    return c;
  }
  
  public DbxUserFilesRequests files()
  {
    return d;
  }
  
  public DbxUserPaperRequests paper()
  {
    return e;
  }
  
  public DbxUserSharingRequests sharing()
  {
    return f;
  }
  
  public DbxUserUsersRequests users()
  {
    return g;
  }
}
