package com.dropbox.core.v2.auth;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class TokenFromOAuth1ErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final TokenFromOAuth1Error errorValue;
  
  public TokenFromOAuth1ErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, TokenFromOAuth1Error paramTokenFromOAuth1Error)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramTokenFromOAuth1Error));
    if (paramTokenFromOAuth1Error != null)
    {
      errorValue = paramTokenFromOAuth1Error;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
