package com.dropbox.core.v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.async.LaunchEmptyResult;

public class MembersRemoveBuilder
{
  private final DbxTeamTeamRequests a;
  private final MembersRemoveArg.Builder b;
  
  MembersRemoveBuilder(DbxTeamTeamRequests paramDbxTeamTeamRequests, MembersRemoveArg.Builder paramBuilder)
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
  
  public LaunchEmptyResult start()
    throws MembersRemoveErrorException, DbxException
  {
    MembersRemoveArg localMembersRemoveArg = b.build();
    return a.a(localMembersRemoveArg);
  }
  
  public MembersRemoveBuilder withKeepAccount(Boolean paramBoolean)
  {
    b.withKeepAccount(paramBoolean);
    return this;
  }
  
  public MembersRemoveBuilder withTransferAdminId(UserSelectorArg paramUserSelectorArg)
  {
    b.withTransferAdminId(paramUserSelectorArg);
    return this;
  }
  
  public MembersRemoveBuilder withTransferDestId(UserSelectorArg paramUserSelectorArg)
  {
    b.withTransferDestId(paramUserSelectorArg);
    return this;
  }
  
  public MembersRemoveBuilder withWipeData(Boolean paramBoolean)
  {
    b.withWipeData(paramBoolean);
    return this;
  }
}
