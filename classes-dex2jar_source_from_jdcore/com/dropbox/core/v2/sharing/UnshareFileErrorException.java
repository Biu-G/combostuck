package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class UnshareFileErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final UnshareFileError errorValue;
  
  public UnshareFileErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, UnshareFileError paramUnshareFileError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramUnshareFileError));
    if (paramUnshareFileError != null)
    {
      errorValue = paramUnshareFileError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
