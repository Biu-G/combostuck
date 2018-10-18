package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class SetCustomQuotaErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final SetCustomQuotaError errorValue;
  
  public SetCustomQuotaErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, SetCustomQuotaError paramSetCustomQuotaError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramSetCustomQuotaError));
    if (paramSetCustomQuotaError != null)
    {
      errorValue = paramSetCustomQuotaError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
