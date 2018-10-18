package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxException;
import java.util.List;

public class ListFolderMembersBuilder
{
  private final DbxUserSharingRequests a;
  private final ListFolderMembersArgs.Builder b;
  
  ListFolderMembersBuilder(DbxUserSharingRequests paramDbxUserSharingRequests, ListFolderMembersArgs.Builder paramBuilder)
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
  
  public SharedFolderMembers start()
    throws SharedFolderAccessErrorException, DbxException
  {
    ListFolderMembersArgs localListFolderMembersArgs = b.build();
    return a.a(localListFolderMembersArgs);
  }
  
  public ListFolderMembersBuilder withActions(List<MemberAction> paramList)
  {
    b.withActions(paramList);
    return this;
  }
  
  public ListFolderMembersBuilder withLimit(Long paramLong)
  {
    b.withLimit(paramLong);
    return this;
  }
}
