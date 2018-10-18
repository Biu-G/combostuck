package com.dropbox.core.v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.teamcommon.GroupManagementType;

public class GroupsUpdateBuilder
{
  private final DbxTeamTeamRequests a;
  private final GroupUpdateArgs.Builder b;
  
  GroupsUpdateBuilder(DbxTeamTeamRequests paramDbxTeamTeamRequests, GroupUpdateArgs.Builder paramBuilder)
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
  
  public GroupFullInfo start()
    throws GroupUpdateErrorException, DbxException
  {
    GroupUpdateArgs localGroupUpdateArgs = b.build();
    return a.a(localGroupUpdateArgs);
  }
  
  public GroupsUpdateBuilder withNewGroupExternalId(String paramString)
  {
    b.withNewGroupExternalId(paramString);
    return this;
  }
  
  public GroupsUpdateBuilder withNewGroupManagementType(GroupManagementType paramGroupManagementType)
  {
    b.withNewGroupManagementType(paramGroupManagementType);
    return this;
  }
  
  public GroupsUpdateBuilder withNewGroupName(String paramString)
  {
    b.withNewGroupName(paramString);
    return this;
  }
  
  public GroupsUpdateBuilder withReturnMembers(Boolean paramBoolean)
  {
    b.withReturnMembers(paramBoolean);
    return this;
  }
}
