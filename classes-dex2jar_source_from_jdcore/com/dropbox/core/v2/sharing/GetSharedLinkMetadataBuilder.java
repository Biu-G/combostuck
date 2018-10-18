package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxException;

public class GetSharedLinkMetadataBuilder
{
  private final DbxUserSharingRequests a;
  private final GetSharedLinkMetadataArg.Builder b;
  
  GetSharedLinkMetadataBuilder(DbxUserSharingRequests paramDbxUserSharingRequests, GetSharedLinkMetadataArg.Builder paramBuilder)
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
  
  public SharedLinkMetadata start()
    throws SharedLinkErrorException, DbxException
  {
    GetSharedLinkMetadataArg localGetSharedLinkMetadataArg = b.build();
    return a.a(localGetSharedLinkMetadataArg);
  }
  
  public GetSharedLinkMetadataBuilder withLinkPassword(String paramString)
  {
    b.withLinkPassword(paramString);
    return this;
  }
  
  public GetSharedLinkMetadataBuilder withPath(String paramString)
  {
    b.withPath(paramString);
    return this;
  }
}
