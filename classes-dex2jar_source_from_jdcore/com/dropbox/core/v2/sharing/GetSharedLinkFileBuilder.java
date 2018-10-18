package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.v2.DbxDownloadStyleBuilder;

public class GetSharedLinkFileBuilder
  extends DbxDownloadStyleBuilder<SharedLinkMetadata>
{
  private final DbxUserSharingRequests a;
  private final GetSharedLinkMetadataArg.Builder b;
  
  GetSharedLinkFileBuilder(DbxUserSharingRequests paramDbxUserSharingRequests, GetSharedLinkMetadataArg.Builder paramBuilder)
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
  
  public DbxDownloader<SharedLinkMetadata> start()
    throws GetSharedLinkFileErrorException, DbxException
  {
    GetSharedLinkMetadataArg localGetSharedLinkMetadataArg = b.build();
    return a.a(localGetSharedLinkMetadataArg, getHeaders());
  }
  
  public GetSharedLinkFileBuilder withLinkPassword(String paramString)
  {
    b.withLinkPassword(paramString);
    return this;
  }
  
  public GetSharedLinkFileBuilder withPath(String paramString)
  {
    b.withPath(paramString);
    return this;
  }
}
