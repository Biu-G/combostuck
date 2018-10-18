package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ExcludedUsersListContinueErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ExcludedUsersListContinueError errorValue;
  
  public ExcludedUsersListContinueErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ExcludedUsersListContinueError paramExcludedUsersListContinueError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramExcludedUsersListContinueError));
    if (paramExcludedUsersListContinueError != null)
    {
      errorValue = paramExcludedUsersListContinueError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
