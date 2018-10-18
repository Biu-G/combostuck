package com.dropbox.core.v2.team;

import com.dropbox.core.DbxException;

public class DevicesListMemberDevicesBuilder
{
  private final DbxTeamTeamRequests a;
  private final ListMemberDevicesArg.Builder b;
  
  DevicesListMemberDevicesBuilder(DbxTeamTeamRequests paramDbxTeamTeamRequests, ListMemberDevicesArg.Builder paramBuilder)
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
  
  public ListMemberDevicesResult start()
    throws ListMemberDevicesErrorException, DbxException
  {
    ListMemberDevicesArg localListMemberDevicesArg = b.build();
    return a.a(localListMemberDevicesArg);
  }
  
  public DevicesListMemberDevicesBuilder withIncludeDesktopClients(Boolean paramBoolean)
  {
    b.withIncludeDesktopClients(paramBoolean);
    return this;
  }
  
  public DevicesListMemberDevicesBuilder withIncludeMobileClients(Boolean paramBoolean)
  {
    b.withIncludeMobileClients(paramBoolean);
    return this;
  }
  
  public DevicesListMemberDevicesBuilder withIncludeWebSessions(Boolean paramBoolean)
  {
    b.withIncludeWebSessions(paramBoolean);
    return this;
  }
}
