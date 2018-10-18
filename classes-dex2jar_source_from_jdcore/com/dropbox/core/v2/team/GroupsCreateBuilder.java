package com.dropbox.core.v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.teamcommon.GroupManagementType;

public class GroupsCreateBuilder
{
  private final DbxTeamTeamRequests a;
  private final GroupCreateArg.Builder b;
  
  GroupsCreateBuilder(DbxTeamTeamRequests paramDbxTeamTeamRequests, GroupCreateArg.Builder paramBuilder)
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
    throws GroupCreateErrorException, DbxException
  {
    GroupCreateArg localGroupCreateArg = b.build();
    return a.a(localGroupCreateArg);
  }
  
  public GroupsCreateBuilder withGroupExternalId(String paramString)
  {
    b.withGroupExternalId(paramString);
    return this;
  }
  
  public GroupsCreateBuilder withGroupManagementType(GroupManagementType paramGroupManagementType)
  {
    b.withGroupManagementType(paramGroupManagementType);
    return this;
  }
}
