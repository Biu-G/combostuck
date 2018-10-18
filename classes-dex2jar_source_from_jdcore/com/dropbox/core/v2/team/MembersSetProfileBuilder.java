package com.dropbox.core.v2.team;

import com.dropbox.core.DbxException;

public class MembersSetProfileBuilder
{
  private final DbxTeamTeamRequests a;
  private final MembersSetProfileArg.Builder b;
  
  MembersSetProfileBuilder(DbxTeamTeamRequests paramDbxTeamTeamRequests, MembersSetProfileArg.Builder paramBuilder)
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
  
  public TeamMemberInfo start()
    throws MembersSetProfileErrorException, DbxException
  {
    MembersSetProfileArg localMembersSetProfileArg = b.build();
    return a.a(localMembersSetProfileArg);
  }
  
  public MembersSetProfileBuilder withNewEmail(String paramString)
  {
    b.withNewEmail(paramString);
    return this;
  }
  
  public MembersSetProfileBuilder withNewExternalId(String paramString)
  {
    b.withNewExternalId(paramString);
    return this;
  }
  
  public MembersSetProfileBuilder withNewGivenName(String paramString)
  {
    b.withNewGivenName(paramString);
    return this;
  }
  
  public MembersSetProfileBuilder withNewIsDirectoryRestricted(Boolean paramBoolean)
  {
    b.withNewIsDirectoryRestricted(paramBoolean);
    return this;
  }
  
  public MembersSetProfileBuilder withNewPersistentId(String paramString)
  {
    b.withNewPersistentId(paramString);
    return this;
  }
  
  public MembersSetProfileBuilder withNewSurname(String paramString)
  {
    b.withNewSurname(paramString);
    return this;
  }
}
