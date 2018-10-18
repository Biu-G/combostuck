package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ExcludedUsersUpdateErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ExcludedUsersUpdateError errorValue;
  
  public ExcludedUsersUpdateErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ExcludedUsersUpdateError paramExcludedUsersUpdateError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramExcludedUsersUpdateError));
    if (paramExcludedUsersUpdateError != null)
    {
      errorValue = paramExcludedUsersUpdateError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
