package com.dropbox.core.v2.filerequests;

import com.dropbox.core.DbxException;

public class CreateBuilder
{
  private final DbxUserFileRequestsRequests a;
  private final CreateFileRequestArgs.Builder b;
  
  CreateBuilder(DbxUserFileRequestsRequests paramDbxUserFileRequestsRequests, CreateFileRequestArgs.Builder paramBuilder)
  {
    if (paramDbxUserFileRequestsRequests != null)
    {
      a = paramDbxUserFileRequestsRequests;
      if (paramBuilder != null)
      {
        b = paramBuilder;
        return;
      }
      throw new NullPointerException("_builder");
    }
    throw new NullPointerException("_client");
  }
  
  public FileRequest start()
    throws CreateFileRequestErrorException, DbxException
  {
    CreateFileRequestArgs localCreateFileRequestArgs = b.build();
    return a.a(localCreateFileRequestArgs);
  }
  
  public CreateBuilder withDeadline(FileRequestDeadline paramFileRequestDeadline)
  {
    b.withDeadline(paramFileRequestDeadline);
    return this;
  }
  
  public CreateBuilder withOpen(Boolean paramBoolean)
  {
    b.withOpen(paramBoolean);
    return this;
  }
}
