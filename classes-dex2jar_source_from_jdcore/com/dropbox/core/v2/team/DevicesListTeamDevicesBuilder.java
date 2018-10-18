package com.dropbox.core.v2.team;

import com.dropbox.core.DbxException;

public class DevicesListTeamDevicesBuilder
{
  private final DbxTeamTeamRequests a;
  private final ListTeamDevicesArg.Builder b;
  
  DevicesListTeamDevicesBuilder(DbxTeamTeamRequests paramDbxTeamTeamRequests, ListTeamDevicesArg.Builder paramBuilder)
  {
    if (paramDbxTeamTeamRequests != null)
    {
      a = paramDbxTeamTeamRequests;
      if (paramBuilder != null)
      {
        b = paramBuilder;
        return;
      }
      throw new NullPointerException("_builder");
    }
    throw new NullPointerException("_client");
  }
  
  public ListTeamDevicesResult start()
    throws ListTeamDevicesErrorException, DbxException
  {
    ListTeamDevicesArg localListTeamDevicesArg = b.build();
    return a.a(localListTeamDevicesArg);
  }
  
  public DevicesListTeamDevicesBuilder withCursor(String paramString)
  {
    b.withCursor(paramString);
    return this;
  }
  
  public DevicesListTeamDevicesBuilder withIncludeDesktopClients(Boolean paramBoolean)
  {
    b.withIncludeDesktopClients(paramBoolean);
    return this;
  }
  
  public DevicesListTeamDevicesBuilder withIncludeMobileClients(Boolean paramBoolean)
  {
    b.withIncludeMobileClients(paramBoolean);
    return this;
  }
  
  public DevicesListTeamDevicesBuilder withIncludeWebSessions(Boolean paramBoolean)
  {
    b.withIncludeWebSessions(paramBoolean);
    return this;
  }
}
