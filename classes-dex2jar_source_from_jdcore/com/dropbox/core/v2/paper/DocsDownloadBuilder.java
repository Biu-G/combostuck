package com.dropbox.core.v2.paper;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.v2.DbxDownloadStyleBuilder;

public class DocsDownloadBuilder
  extends DbxDownloadStyleBuilder<PaperDocExportResult>
{
  private final DbxUserPaperRequests a;
  private final String b;
  private final ExportFormat c;
  
  DocsDownloadBuilder(DbxUserPaperRequests paramDbxUserPaperRequests, String paramString, ExportFormat paramExportFormat)
  {
    if (paramDbxUserPaperRequests != null)
    {
      a = paramDbxUserPaperRequests;
      b = paramString;
      c = paramExportFormat;
      return;
    }
    throw new NullPointerException("_client");
  }
  
  public DbxDownloader<PaperDocExportResult> start()
    throws DocLookupErrorException, DbxException
  {
    f localF = new f(b, c);
    return a.a(localF, getHeaders());
  }
}
