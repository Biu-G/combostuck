package com.dropbox.core.v2.files;

import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor.Uploader;
import com.dropbox.core.stone.StoneSerializers;

public class UploadSessionAppendV2Uploader
  extends DbxUploader<Void, UploadSessionLookupError, UploadSessionLookupErrorException>
{
  public UploadSessionAppendV2Uploader(HttpRequestor.Uploader paramUploader, String paramString)
  {
    super(paramUploader, StoneSerializers.void_(), UploadSessionLookupError.a.a, paramString);
  }
  
  protected UploadSessionLookupErrorException newException(DbxWrappedException paramDbxWrappedException)
  {
    return new UploadSessionLookupErrorException("2/files/upload_session/append_v2", paramDbxWrappedException.getRequestId(), paramDbxWrappedException.getUserMessage(), (UploadSessionLookupError)paramDbxWrappedException.getErrorValue());
  }
}
