package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class RelinquishFileMembershipErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final RelinquishFileMembershipError errorValue;
  
  public RelinquishFileMembershipErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, RelinquishFileMembershipError paramRelinquishFileMembershipError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramRelinquishFileMembershipError));
    if (paramRelinquishFileMembershipError != null)
    {
      errorValue = paramRelinquishFileMembershipError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
