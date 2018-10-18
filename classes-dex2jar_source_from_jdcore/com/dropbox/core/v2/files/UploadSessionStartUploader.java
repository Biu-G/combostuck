package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.LocalizedText;
import com.dropbox.core.http.HttpRequestor.Uploader;
import com.dropbox.core.stone.StoneSerializers;

public class UploadSessionStartUploader
  extends DbxUploader<UploadSessionStartResult, Void, DbxApiException>
{
  public UploadSessionStartUploader(HttpRequestor.Uploader paramUploader, String paramString)
  {
    super(paramUploader, UploadSessionStartResult.a.a, StoneSerializers.void_(), paramString);
  }
  
  protected DbxApiException newException(DbxWrappedException paramDbxWrappedException)
  {
    String str = paramDbxWrappedException.getRequestId();
    LocalizedText localLocalizedText = paramDbxWrappedException.getUserMessage();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Unexpected error response for \"upload_session/start\":");
    localStringBuilder.append(paramDbxWrappedException.getErrorValue());
    return new DbxApiException(str, localLocalizedText, localStringBuilder.toString());
  }
}
