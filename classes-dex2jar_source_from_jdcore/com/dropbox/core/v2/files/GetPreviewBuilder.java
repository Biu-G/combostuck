package com.dropbox.core.v2.files;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.v2.DbxDownloadStyleBuilder;
import java.util.regex.Pattern;

public class GetPreviewBuilder
  extends DbxDownloadStyleBuilder<FileMetadata>
{
  private final DbxUserFilesRequests a;
  private final String b;
  private String c;
  
  GetPreviewBuilder(DbxUserFilesRequests paramDbxUserFilesRequests, String paramString)
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
    throws PreviewErrorException, DbxException
  {
    j localJ = new j(b, c);
    return a.a(localJ, getHeaders());
  }
  
  public GetPreviewBuilder withRev(String paramString)
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
