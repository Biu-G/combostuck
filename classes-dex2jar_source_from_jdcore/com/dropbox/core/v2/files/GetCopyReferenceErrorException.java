package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GetCopyReferenceErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GetCopyReferenceError errorValue;
  
  public GetCopyReferenceErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GetCopyReferenceError paramGetCopyReferenceError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGetCopyReferenceError));
    if (paramGetCopyReferenceError != null)
    {
      errorValue = paramGetCopyReferenceError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
