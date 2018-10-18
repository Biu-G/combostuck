package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class UploadSessionFinishErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final UploadSessionFinishError errorValue;
  
  public UploadSessionFinishErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, UploadSessionFinishError paramUploadSessionFinishError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramUploadSessionFinishError));
    if (paramUploadSessionFinishError != null)
    {
      errorValue = paramUploadSessionFinishError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
