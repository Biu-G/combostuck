package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class SaveUrlErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final SaveUrlError errorValue;
  
  public SaveUrlErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, SaveUrlError paramSaveUrlError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramSaveUrlError));
    if (paramSaveUrlError != null)
    {
      errorValue = paramSaveUrlError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
