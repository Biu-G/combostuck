package com.dropbox.core.v2.paper;

import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor.Uploader;

public class DocsCreateUploader
  extends DbxUploader<PaperDocCreateUpdateResult, PaperDocCreateError, PaperDocCreateErrorException>
{
  public DocsCreateUploader(HttpRequestor.Uploader paramUploader, String paramString)
  {
    super(paramUploader, PaperDocCreateUpdateResult.a.a, PaperDocCreateError.a.a, paramString);
  }
  
  protected PaperDocCreateErrorException newException(DbxWrappedException paramDbxWrappedException)
  {
    return new PaperDocCreateErrorException("2/paper/docs/create", paramDbxWrappedException.getRequestId(), paramDbxWrappedException.getUserMessage(), (PaperDocCreateError)paramDbxWrappedException.getErrorValue());
  }
}
