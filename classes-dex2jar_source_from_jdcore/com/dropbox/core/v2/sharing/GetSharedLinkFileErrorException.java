package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GetSharedLinkFileErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GetSharedLinkFileError errorValue;
  
  public GetSharedLinkFileErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GetSharedLinkFileError paramGetSharedLinkFileError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGetSharedLinkFileError));
    if (paramGetSharedLinkFileError != null)
    {
      errorValue = paramGetSharedLinkFileError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
