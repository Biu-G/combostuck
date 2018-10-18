package com.dropbox.core.v2.team;

import com.dropbox.core.DbxException;

public class MembersListBuilder
{
  private final DbxTeamTeamRequests a;
  private final MembersListArg.Builder b;
  
  MembersListBuilder(DbxTeamTeamRequests paramDbxTeamTeamRequests, MembersListArg.Builder paramBuilder)
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
  
  public MembersListResult start()
    throws MembersListErrorException, DbxException
  {
    MembersListArg localMembersListArg = b.build();
    return a.a(localMembersListArg);
  }
  
  public MembersListBuilder withIncludeRemoved(Boolean paramBoolean)
  {
    b.withIncludeRemoved(paramBoolean);
    return this;
  }
  
  public MembersListBuilder withLimit(Long paramLong)
  {
    b.withLimit(paramLong);
    return this;
  }
}
