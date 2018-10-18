package com.dropbox.core.v2.filerequests;

import com.dropbox.core.DbxException;

public class UpdateBuilder
{
  private final DbxUserFileRequestsRequests a;
  private final UpdateFileRequestArgs.Builder b;
  
  UpdateBuilder(DbxUserFileRequestsRequests paramDbxUserFileRequestsRequests, UpdateFileRequestArgs.Builder paramBuilder)
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
    throws UpdateFileRequestErrorException, DbxException
  {
    UpdateFileRequestArgs localUpdateFileRequestArgs = b.build();
    return a.a(localUpdateFileRequestArgs);
  }
  
  public UpdateBuilder withDeadline(UpdateFileRequestDeadline paramUpdateFileRequestDeadline)
  {
    b.withDeadline(paramUpdateFileRequestDeadline);
    return this;
  }
  
  public UpdateBuilder withDestination(String paramString)
  {
    b.withDestination(paramString);
    return this;
  }
  
  public UpdateBuilder withOpen(Boolean paramBoolean)
  {
    b.withOpen(paramBoolean);
    return this;
  }
  
  public UpdateBuilder withTitle(String paramString)
  {
    b.withTitle(paramString);
    return this;
  }
}
