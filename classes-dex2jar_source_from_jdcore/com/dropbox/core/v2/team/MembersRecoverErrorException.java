package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class MembersRecoverErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final MembersRecoverError errorValue;
  
  public MembersRecoverErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, MembersRecoverError paramMembersRecoverError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramMembersRecoverError));
    if (paramMembersRecoverError != null)
    {
      errorValue = paramMembersRecoverError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
