package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class MembersListErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final MembersListError errorValue;
  
  public MembersListErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, MembersListError paramMembersListError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramMembersListError));
    if (paramMembersListError != null)
    {
      errorValue = paramMembersListError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
