package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;

public class CreateFolderBatchBuilder
{
  private final DbxUserFilesRequests a;
  private final CreateFolderBatchArg.Builder b;
  
  CreateFolderBatchBuilder(DbxUserFilesRequests paramDbxUserFilesRequests, CreateFolderBatchArg.Builder paramBuilder)
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
  
  public CreateFolderBatchLaunch start()
    throws DbxApiException, DbxException
  {
    CreateFolderBatchArg localCreateFolderBatchArg = b.build();
    return a.a(localCreateFolderBatchArg);
  }
  
  public CreateFolderBatchBuilder withAutorename(Boolean paramBoolean)
  {
    b.withAutorename(paramBoolean);
    return this;
  }
  
  public CreateFolderBatchBuilder withForceAsync(Boolean paramBoolean)
  {
    b.withForceAsync(paramBoolean);
    return this;
  }
}
