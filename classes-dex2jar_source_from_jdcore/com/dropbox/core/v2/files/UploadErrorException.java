package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class UploadErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final UploadError errorValue;
  
  public UploadErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, UploadError paramUploadError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramUploadError));
    if (paramUploadError != null)
    {
      errorValue = paramUploadError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
