package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class MembersListContinueErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final MembersListContinueError errorValue;
  
  public MembersListContinueErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, MembersListContinueError paramMembersListContinueError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramMembersListContinueError));
    if (paramMembersListContinueError != null)
    {
      errorValue = paramMembersListContinueError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
