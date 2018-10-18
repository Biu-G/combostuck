package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxException;

public class ListSharedLinksBuilder
{
  private final DbxUserSharingRequests a;
  private final ListSharedLinksArg.Builder b;
  
  ListSharedLinksBuilder(DbxUserSharingRequests paramDbxUserSharingRequests, ListSharedLinksArg.Builder paramBuilder)
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
  
  public ListSharedLinksResult start()
    throws ListSharedLinksErrorException, DbxException
  {
    ListSharedLinksArg localListSharedLinksArg = b.build();
    return a.a(localListSharedLinksArg);
  }
  
  public ListSharedLinksBuilder withCursor(String paramString)
  {
    b.withCursor(paramString);
    return this;
  }
  
  public ListSharedLinksBuilder withDirectOnly(Boolean paramBoolean)
  {
    b.withDirectOnly(paramBoolean);
    return this;
  }
  
  public ListSharedLinksBuilder withPath(String paramString)
  {
    b.withPath(paramString);
    return this;
  }
}
