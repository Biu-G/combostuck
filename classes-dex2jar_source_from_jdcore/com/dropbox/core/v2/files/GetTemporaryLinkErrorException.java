package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GetTemporaryLinkErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GetTemporaryLinkError errorValue;
  
  public GetTemporaryLinkErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GetTemporaryLinkError paramGetTemporaryLinkError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGetTemporaryLinkError));
    if (paramGetTemporaryLinkError != null)
    {
      errorValue = paramGetTemporaryLinkError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
