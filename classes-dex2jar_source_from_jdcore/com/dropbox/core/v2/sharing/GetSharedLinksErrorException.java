package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GetSharedLinksErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GetSharedLinksError errorValue;
  
  public GetSharedLinksErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GetSharedLinksError paramGetSharedLinksError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGetSharedLinksError));
    if (paramGetSharedLinksError != null)
    {
      errorValue = paramGetSharedLinksError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
