package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import java.util.List;

public class ListFoldersBuilder
{
  private final DbxUserSharingRequests a;
  private final ListFoldersArgs.Builder b;
  
  ListFoldersBuilder(DbxUserSharingRequests paramDbxUserSharingRequests, ListFoldersArgs.Builder paramBuilder)
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
  
  public ListFoldersResult start()
    throws DbxApiException, DbxException
  {
    ListFoldersArgs localListFoldersArgs = b.build();
    return a.a(localListFoldersArgs);
  }
  
  public ListFoldersBuilder withActions(List<FolderAction> paramList)
  {
    b.withActions(paramList);
    return this;
  }
  
  public ListFoldersBuilder withLimit(Long paramLong)
  {
    b.withLimit(paramLong);
    return this;
  }
}
