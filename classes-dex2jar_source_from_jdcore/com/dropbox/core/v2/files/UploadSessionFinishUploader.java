package com.dropbox.core.v2.files;

import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor.Uploader;

public class UploadSessionFinishUploader
  extends DbxUploader<FileMetadata, UploadSessionFinishError, UploadSessionFinishErrorException>
{
  public UploadSessionFinishUploader(HttpRequestor.Uploader paramUploader, String paramString)
  {
    super(paramUploader, FileMetadata.a.a, UploadSessionFinishError.a.a, paramString);
  }
  
  protected UploadSessionFinishErrorException newException(DbxWrappedException paramDbxWrappedException)
  {
    return new UploadSessionFinishErrorException("2/files/upload_session/finish", paramDbxWrappedException.getRequestId(), paramDbxWrappedException.getUserMessage(), (UploadSessionFinishError)paramDbxWrappedException.getErrorValue());
  }
}
