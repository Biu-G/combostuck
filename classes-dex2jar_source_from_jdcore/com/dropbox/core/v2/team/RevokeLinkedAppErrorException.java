package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class RevokeLinkedAppErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final RevokeLinkedAppError errorValue;
  
  public RevokeLinkedAppErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, RevokeLinkedAppError paramRevokeLinkedAppError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramRevokeLinkedAppError));
    if (paramRevokeLinkedAppError != null)
    {
      errorValue = paramRevokeLinkedAppError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
