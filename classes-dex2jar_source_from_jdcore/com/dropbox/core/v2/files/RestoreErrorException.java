package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class RestoreErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final RestoreError errorValue;
  
  public RestoreErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, RestoreError paramRestoreError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramRestoreError));
    if (paramRestoreError != null)
    {
      errorValue = paramRestoreError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
