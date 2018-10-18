package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class CustomQuotaErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final CustomQuotaError errorValue;
  
  public CustomQuotaErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, CustomQuotaError paramCustomQuotaError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramCustomQuotaError));
    if (paramCustomQuotaError != null)
    {
      errorValue = paramCustomQuotaError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
