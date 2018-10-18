package com.dropbox.core.v2.files;

import com.dropbox.core.DbxException;

public class MoveBuilder
{
  private final DbxUserFilesRequests a;
  private final RelocationArg.Builder b;
  
  MoveBuilder(DbxUserFilesRequests paramDbxUserFilesRequests, RelocationArg.Builder paramBuilder)
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
  
  public Metadata start()
    throws RelocationErrorException, DbxException
  {
    RelocationArg localRelocationArg = b.build();
    return a.c(localRelocationArg);
  }
  
  public MoveBuilder withAllowOwnershipTransfer(Boolean paramBoolean)
  {
    b.withAllowOwnershipTransfer(paramBoolean);
    return this;
  }
  
  public MoveBuilder withAllowSharedFolder(Boolean paramBoolean)
  {
    b.withAllowSharedFolder(paramBoolean);
    return this;
  }
  
  public MoveBuilder withAutorename(Boolean paramBoolean)
  {
    b.withAutorename(paramBoolean);
    return this;
  }
}
