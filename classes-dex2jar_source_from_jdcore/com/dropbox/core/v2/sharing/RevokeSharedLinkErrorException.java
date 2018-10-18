package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class RevokeSharedLinkErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final RevokeSharedLinkError errorValue;
  
  public RevokeSharedLinkErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, RevokeSharedLinkError paramRevokeSharedLinkError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramRevokeSharedLinkError));
    if (paramRevokeSharedLinkError != null)
    {
      errorValue = paramRevokeSharedLinkError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
