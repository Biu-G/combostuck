package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GroupsMembersListContinueErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GroupsMembersListContinueError errorValue;
  
  public GroupsMembersListContinueErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GroupsMembersListContinueError paramGroupsMembersListContinueError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGroupsMembersListContinueError));
    if (paramGroupsMembersListContinueError != null)
    {
      errorValue = paramGroupsMembersListContinueError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
