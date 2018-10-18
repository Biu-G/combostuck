package com.dropbox.core.v2.filerequests;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GetFileRequestErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GetFileRequestError errorValue;
  
  public GetFileRequestErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GetFileRequestError paramGetFileRequestError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGetFileRequestError));
    if (paramGetFileRequestError != null)
    {
      errorValue = paramGetFileRequestError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
