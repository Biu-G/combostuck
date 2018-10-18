package com.dropbox.core.v2.team;

import com.dropbox.core.DbxException;

public class DevicesListMembersDevicesBuilder
{
  private final DbxTeamTeamRequests a;
  private final ListMembersDevicesArg.Builder b;
  
  DevicesListMembersDevicesBuilder(DbxTeamTeamRequests paramDbxTeamTeamRequests, ListMembersDevicesArg.Builder paramBuilder)
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
  
  public ListMembersDevicesResult start()
    throws ListMembersDevicesErrorException, DbxException
  {
    ListMembersDevicesArg localListMembersDevicesArg = b.build();
    return a.a(localListMembersDevicesArg);
  }
  
  public DevicesListMembersDevicesBuilder withCursor(String paramString)
  {
    b.withCursor(paramString);
    return this;
  }
  
  public DevicesListMembersDevicesBuilder withIncludeDesktopClients(Boolean paramBoolean)
  {
    b.withIncludeDesktopClients(paramBoolean);
    return this;
  }
  
  public DevicesListMembersDevicesBuilder withIncludeMobileClients(Boolean paramBoolean)
  {
    b.withIncludeMobileClients(paramBoolean);
    return this;
  }
  
  public DevicesListMembersDevicesBuilder withIncludeWebSessions(Boolean paramBoolean)
  {
    b.withIncludeWebSessions(paramBoolean);
    return this;
  }
}
