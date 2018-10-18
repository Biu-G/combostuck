package com.dropbox.core.v2.files;

import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor.Uploader;

public class AlphaUploadUploader
  extends DbxUploader<FileMetadata, UploadErrorWithProperties, UploadErrorWithPropertiesException>
{
  public AlphaUploadUploader(HttpRequestor.Uploader paramUploader, String paramString)
  {
    super(paramUploader, FileMetadata.a.a, UploadErrorWithProperties.a.a, paramString);
  }
  
  protected UploadErrorWithPropertiesException newException(DbxWrappedException paramDbxWrappedException)
  {
    return new UploadErrorWithPropertiesException("2/files/alpha/upload", paramDbxWrappedException.getRequestId(), paramDbxWrappedException.getUserMessage(), (UploadErrorWithProperties)paramDbxWrappedException.getErrorValue());
  }
}
