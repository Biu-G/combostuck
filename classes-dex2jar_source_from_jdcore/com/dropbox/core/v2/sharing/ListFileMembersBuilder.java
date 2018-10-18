package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxException;
import java.util.List;

public class ListFileMembersBuilder
{
  private final DbxUserSharingRequests a;
  private final ListFileMembersArg.Builder b;
  
  ListFileMembersBuilder(DbxUserSharingRequests paramDbxUserSharingRequests, ListFileMembersArg.Builder paramBuilder)
  {
    if (paramDbxUserSharingRequests != null)
    {
      a = paramDbxUserSharingRequests;
      if (paramBuilder != null)
      {
        b = paramBuilder;
        return;
      }
      throw new NullPointerException("_builder");
    }
    throw new NullPointerException("_client");
  }
  
  public SharedFileMembers start()
    throws ListFileMembersErrorException, DbxException
  {
    ListFileMembersArg localListFileMembersArg = b.build();
    return a.a(localListFileMembersArg);
  }
  
  public ListFileMembersBuilder withActions(List<MemberAction> paramList)
  {
    b.withActions(paramList);
    return this;
  }
  
  public ListFileMembersBuilder withIncludeInherited(Boolean paramBoolean)
  {
    b.withIncludeInherited(paramBoolean);
    return this;
  }
  
  public ListFileMembersBuilder withLimit(Long paramLong)
  {
    b.withLimit(paramLong);
    return this;
  }
}
