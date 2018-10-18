package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class RelocationErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final RelocationError errorValue;
  
  public RelocationErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, RelocationError paramRelocationError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramRelocationError));
    if (paramRelocationError != null)
    {
      errorValue = paramRelocationError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
