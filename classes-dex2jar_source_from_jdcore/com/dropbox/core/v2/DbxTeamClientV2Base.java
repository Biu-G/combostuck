package com.dropbox.core.v2;

import com.dropbox.core.v2.fileproperties.DbxTeamFilePropertiesRequests;
import com.dropbox.core.v2.team.DbxTeamTeamRequests;
import com.dropbox.core.v2.teamlog.DbxTeamTeamLogRequests;

public class DbxTeamClientV2Base
{
  protected final DbxRawClientV2 _client;
  private final DbxTeamFilePropertiesRequests a;
  private final DbxTeamTeamRequests b;
  private final DbxTeamTeamLogRequests c;
  
  protected DbxTeamClientV2Base(DbxRawClientV2 paramDbxRawClientV2)
  {
    _client = paramDbxRawClientV2;
    a = new DbxTeamFilePropertiesRequests(paramDbxRawClientV2);
    b = new DbxTeamTeamRequests(paramDbxRawClientV2);
    c = new DbxTeamTeamLogRequests(paramDbxRawClientV2);
  }
  
  public DbxTeamFilePropertiesRequests fileProperties()
  {
    return a;
  }
  
  public DbxTeamTeamRequests team()
  {
    return b;
  }
  
  public DbxTeamTeamLogRequests teamLog()
  {
    return c;
  }
}
