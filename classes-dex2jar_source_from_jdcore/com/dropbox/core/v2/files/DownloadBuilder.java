package com.dropbox.core.v2.files;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.v2.DbxDownloadStyleBuilder;
import java.util.regex.Pattern;

public class DownloadBuilder
  extends DbxDownloadStyleBuilder<FileMetadata>
{
  private final DbxUserFilesRequests a;
  private final String b;
  private String c;
  
  DownloadBuilder(DbxUserFilesRequests paramDbxUserFilesRequests, String paramString)
  {
    if (paramDbxUserFilesRequests != null)
    {
      a = paramDbxUserFilesRequests;
      b = paramString;
      c = null;
      return;
    }
    throw new NullPointerException("_client");
  }
  
  public DbxDownloader<FileMetadata> start()
    throws DownloadErrorException, DbxException
  {
    c localC = new c(b, c);
    return a.a(localC, getHeaders());
  }
  
  public DownloadBuilder withRev(String paramString)
  {
    if (paramString != null) {
      if (paramString.length() >= 9)
      {
        if (!Pattern.matches("[0-9a-f]+", paramString)) {
          throw new IllegalArgumentException("String 'rev' does not match pattern");
        }
      }
      else {
        throw new IllegalArgumentException("String 'rev' is shorter than 9");
      }
    }
    c = paramString;
    return this;
  }
}
