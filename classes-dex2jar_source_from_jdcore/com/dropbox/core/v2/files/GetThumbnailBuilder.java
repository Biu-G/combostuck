package com.dropbox.core.v2.files;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.v2.DbxDownloadStyleBuilder;

public class GetThumbnailBuilder
  extends DbxDownloadStyleBuilder<FileMetadata>
{
  private final DbxUserFilesRequests a;
  private final ThumbnailArg.Builder b;
  
  GetThumbnailBuilder(DbxUserFilesRequests paramDbxUserFilesRequests, ThumbnailArg.Builder paramBuilder)
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
  
  public DbxDownloader<FileMetadata> start()
    throws ThumbnailErrorException, DbxException
  {
    ThumbnailArg localThumbnailArg = b.build();
    return a.a(localThumbnailArg, getHeaders());
  }
  
  public GetThumbnailBuilder withFormat(ThumbnailFormat paramThumbnailFormat)
  {
    b.withFormat(paramThumbnailFormat);
    return this;
  }
  
  public GetThumbnailBuilder withMode(ThumbnailMode paramThumbnailMode)
  {
    b.withMode(paramThumbnailMode);
    return this;
  }
  
  public GetThumbnailBuilder withSize(ThumbnailSize paramThumbnailSize)
  {
    b.withSize(paramThumbnailSize);
    return this;
  }
}
