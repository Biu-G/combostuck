package com.dropbox.core.v2.filerequests;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class CreateFileRequestErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final CreateFileRequestError errorValue;
  
  public CreateFileRequestErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, CreateFileRequestError paramCreateFileRequestError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramCreateFileRequestError));
    if (paramCreateFileRequestError != null)
    {
      errorValue = paramCreateFileRequestError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
