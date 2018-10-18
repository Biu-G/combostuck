package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class MembersRemoveErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final MembersRemoveError errorValue;
  
  public MembersRemoveErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, MembersRemoveError paramMembersRemoveError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramMembersRemoveError));
    if (paramMembersRemoveError != null)
    {
      errorValue = paramMembersRemoveError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
