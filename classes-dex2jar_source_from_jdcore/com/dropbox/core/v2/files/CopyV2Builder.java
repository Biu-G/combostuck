package com.dropbox.core.v2.files;

import com.dropbox.core.DbxException;

public class CopyV2Builder
{
  private final DbxUserFilesRequests a;
  private final RelocationArg.Builder b;
  
  CopyV2Builder(DbxUserFilesRequests paramDbxUserFilesRequests, RelocationArg.Builder paramBuilder)
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
  
  public RelocationResult start()
    throws RelocationErrorException, DbxException
  {
    RelocationArg localRelocationArg = b.build();
    return a.b(localRelocationArg);
  }
  
  public CopyV2Builder withAllowOwnershipTransfer(Boolean paramBoolean)
  {
    b.withAllowOwnershipTransfer(paramBoolean);
    return this;
  }
  
  public CopyV2Builder withAllowSharedFolder(Boolean paramBoolean)
  {
    b.withAllowSharedFolder(paramBoolean);
    return this;
  }
  
  public CopyV2Builder withAutorename(Boolean paramBoolean)
  {
    b.withAutorename(paramBoolean);
    return this;
  }
}
