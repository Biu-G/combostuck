package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class UploadSessionLookupErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final UploadSessionLookupError errorValue;
  
  public UploadSessionLookupErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, UploadSessionLookupError paramUploadSessionLookupError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramUploadSessionLookupError));
    if (paramUploadSessionLookupError != null)
    {
      errorValue = paramUploadSessionLookupError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
