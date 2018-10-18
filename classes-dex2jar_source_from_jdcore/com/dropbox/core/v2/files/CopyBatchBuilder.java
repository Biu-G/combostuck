package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;

public class CopyBatchBuilder
{
  private final DbxUserFilesRequests a;
  private final RelocationBatchArg.Builder b;
  
  CopyBatchBuilder(DbxUserFilesRequests paramDbxUserFilesRequests, RelocationBatchArg.Builder paramBuilder)
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
    return a.a(localRelocationBatchArg);
  }
  
  public CopyBatchBuilder withAllowOwnershipTransfer(Boolean paramBoolean)
  {
    b.withAllowOwnershipTransfer(paramBoolean);
    return this;
  }
  
  public CopyBatchBuilder withAllowSharedFolder(Boolean paramBoolean)
  {
    b.withAllowSharedFolder(paramBoolean);
    return this;
  }
  
  public CopyBatchBuilder withAutorename(Boolean paramBoolean)
  {
    b.withAutorename(paramBoolean);
    return this;
  }
}
