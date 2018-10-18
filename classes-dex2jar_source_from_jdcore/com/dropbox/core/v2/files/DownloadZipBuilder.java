package com.dropbox.core.v2.files;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.v2.DbxDownloadStyleBuilder;

public class DownloadZipBuilder
  extends DbxDownloadStyleBuilder<DownloadZipResult>
{
  private final DbxUserFilesRequests a;
  private final String b;
  
  DownloadZipBuilder(DbxUserFilesRequests paramDbxUserFilesRequests, String paramString)
  {
    if (paramDbxUserFilesRequests != null)
    {
      a = paramDbxUserFilesRequests;
      b = paramString;
      return;
    }
    throw new NullPointerException("_client");
  }
  
  public DbxDownloader<DownloadZipResult> start()
    throws DownloadZipErrorException, DbxException
  {
    d localD = new d(b);
    return a.a(localD, getHeaders());
  }
}
