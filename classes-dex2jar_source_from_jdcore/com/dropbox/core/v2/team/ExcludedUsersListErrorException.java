package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ExcludedUsersListErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ExcludedUsersListError errorValue;
  
  public ExcludedUsersListErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ExcludedUsersListError paramExcludedUsersListError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramExcludedUsersListError));
    if (paramExcludedUsersListError != null)
    {
      errorValue = paramExcludedUsersListError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
