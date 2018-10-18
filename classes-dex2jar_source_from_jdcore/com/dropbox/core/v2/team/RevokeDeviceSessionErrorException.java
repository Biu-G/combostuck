package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class RevokeDeviceSessionErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final RevokeDeviceSessionError errorValue;
  
  public RevokeDeviceSessionErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, RevokeDeviceSessionError paramRevokeDeviceSessionError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramRevokeDeviceSessionError));
    if (paramRevokeDeviceSessionError != null)
    {
      errorValue = paramRevokeDeviceSessionError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
