package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class RevokeDeviceSessionBatchErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final RevokeDeviceSessionBatchError errorValue;
  
  public RevokeDeviceSessionBatchErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, RevokeDeviceSessionBatchError paramRevokeDeviceSessionBatchError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramRevokeDeviceSessionBatchError));
    if (paramRevokeDeviceSessionBatchError != null)
    {
      errorValue = paramRevokeDeviceSessionBatchError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
