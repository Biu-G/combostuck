package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class TokenGetAuthenticatedAdminErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final TokenGetAuthenticatedAdminError errorValue;
  
  public TokenGetAuthenticatedAdminErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, TokenGetAuthenticatedAdminError paramTokenGetAuthenticatedAdminError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramTokenGetAuthenticatedAdminError));
    if (paramTokenGetAuthenticatedAdminError != null)
    {
      errorValue = paramTokenGetAuthenticatedAdminError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
