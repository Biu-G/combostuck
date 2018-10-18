package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class RelinquishFolderMembershipErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final RelinquishFolderMembershipError errorValue;
  
  public RelinquishFolderMembershipErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, RelinquishFolderMembershipError paramRelinquishFolderMembershipError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramRelinquishFolderMembershipError));
    if (paramRelinquishFolderMembershipError != null)
    {
      errorValue = paramRelinquishFolderMembershipError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
