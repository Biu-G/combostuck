package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;

public class MoveBatchBuilder
{
  private final DbxUserFilesRequests a;
  private final RelocationBatchArg.Builder b;
  
  MoveBatchBuilder(DbxUserFilesRequests paramDbxUserFilesRequests, RelocationBatchArg.Builder paramBuilder)
  {
    if (paramDbxUserFilesRequests != null)
    {
      a = paramDbxUserFilesRequests;
      if (paramBuilder != null)
      {
        b = paramBuilder;
        return;
      }
      throw new NullPointerException("_builder");
    }
    throw new NullPointerException("_client");
  }
  
  public RelocationBatchLaunch start()
    throws DbxApiException, DbxException
  {
    RelocationBatchArg localRelocationBatchArg = b.build();
    return a.b(localRelocationBatchArg);
  }
  
  public MoveBatchBuilder withAllowOwnershipTransfer(Boolean paramBoolean)
  {
    b.withAllowOwnershipTransfer(paramBoolean);
    return this;
  }
  
  public MoveBatchBuilder withAllowSharedFolder(Boolean paramBoolean)
  {
    b.withAllowSharedFolder(paramBoolean);
    return this;
  }
  
  public MoveBatchBuilder withAutorename(Boolean paramBoolean)
  {
    b.withAutorename(paramBoolean);
    return this;
  }
}
