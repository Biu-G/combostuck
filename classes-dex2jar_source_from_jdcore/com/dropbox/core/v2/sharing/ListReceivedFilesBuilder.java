package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxException;
import java.util.List;

public class ListReceivedFilesBuilder
{
  private final DbxUserSharingRequests a;
  private final ListFilesArg.Builder b;
  
  ListReceivedFilesBuilder(DbxUserSharingRequests paramDbxUserSharingRequests, ListFilesArg.Builder paramBuilder)
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
  
  public ListFilesResult start()
    throws SharingUserErrorException, DbxException
  {
    ListFilesArg localListFilesArg = b.build();
    return a.a(localListFilesArg);
  }
  
  public ListReceivedFilesBuilder withActions(List<FileAction> paramList)
  {
    b.withActions(paramList);
    return this;
  }
  
  public ListReceivedFilesBuilder withLimit(Long paramLong)
  {
    b.withLimit(paramLong);
    return this;
  }
}
