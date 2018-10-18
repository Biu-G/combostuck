package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class RevokeLinkedAppBatchErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final RevokeLinkedAppBatchError errorValue;
  
  public RevokeLinkedAppBatchErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, RevokeLinkedAppBatchError paramRevokeLinkedAppBatchError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramRevokeLinkedAppBatchError));
    if (paramRevokeLinkedAppBatchError != null)
    {
      errorValue = paramRevokeLinkedAppBatchError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
