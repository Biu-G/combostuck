package com.dropbox.core.v2.paper;

import com.dropbox.core.DbxException;

public class DocsUsersListBuilder
{
  private final DbxUserPaperRequests a;
  private final ListUsersOnPaperDocArgs.Builder b;
  
  DocsUsersListBuilder(DbxUserPaperRequests paramDbxUserPaperRequests, ListUsersOnPaperDocArgs.Builder paramBuilder)
  {
    if (paramDbxUserPaperRequests != null)
    {
      a = paramDbxUserPaperRequests;
      if (paramBuilder != null)
      {
        b = paramBuilder;
        return;
      }
      throw new NullPointerException("_builder");
    }
    throw new NullPointerException("_client");
  }
  
  public ListUsersOnPaperDocResponse start()
    throws DocLookupErrorException, DbxException
  {
    ListUsersOnPaperDocArgs localListUsersOnPaperDocArgs = b.build();
    return a.a(localListUsersOnPaperDocArgs);
  }
  
  public DocsUsersListBuilder withFilterBy(UserOnPaperDocFilter paramUserOnPaperDocFilter)
  {
    b.withFilterBy(paramUserOnPaperDocFilter);
    return this;
  }
  
  public DocsUsersListBuilder withLimit(Integer paramInteger)
  {
    b.withLimit(paramInteger);
    return this;
  }
}
