package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxException;

public class CreateSharedLinkBuilder
{
  private final DbxUserSharingRequests a;
  private final CreateSharedLinkArg.Builder b;
  
  CreateSharedLinkBuilder(DbxUserSharingRequests paramDbxUserSharingRequests, CreateSharedLinkArg.Builder paramBuilder)
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
  
  public PathLinkMetadata start()
    throws CreateSharedLinkErrorException, DbxException
  {
    CreateSharedLinkArg localCreateSharedLinkArg = b.build();
    return a.a(localCreateSharedLinkArg);
  }
  
  public CreateSharedLinkBuilder withPendingUpload(PendingUploadMode paramPendingUploadMode)
  {
    b.withPendingUpload(paramPendingUploadMode);
    return this;
  }
  
  public CreateSharedLinkBuilder withShortUrl(Boolean paramBoolean)
  {
    b.withShortUrl(paramBoolean);
    return this;
  }
}
