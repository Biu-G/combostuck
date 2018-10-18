package com.dropbox.core.v2.paper;

import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor.Uploader;

public class DocsUpdateUploader
  extends DbxUploader<PaperDocCreateUpdateResult, PaperDocUpdateError, PaperDocUpdateErrorException>
{
  public DocsUpdateUploader(HttpRequestor.Uploader paramUploader, String paramString)
  {
    super(paramUploader, PaperDocCreateUpdateResult.a.a, PaperDocUpdateError.a.a, paramString);
  }
  
  protected PaperDocUpdateErrorException newException(DbxWrappedException paramDbxWrappedException)
  {
    return new PaperDocUpdateErrorException("2/paper/docs/update", paramDbxWrappedException.getRequestId(), paramDbxWrappedException.getUserMessage(), (PaperDocUpdateError)paramDbxWrappedException.getErrorValue());
  }
}
