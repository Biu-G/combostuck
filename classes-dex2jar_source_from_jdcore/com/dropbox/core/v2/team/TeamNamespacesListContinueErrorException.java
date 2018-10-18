package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class TeamNamespacesListContinueErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final TeamNamespacesListContinueError errorValue;
  
  public TeamNamespacesListContinueErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, TeamNamespacesListContinueError paramTeamNamespacesListContinueError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramTeamNamespacesListContinueError));
    if (paramTeamNamespacesListContinueError != null)
    {
      errorValue = paramTeamNamespacesListContinueError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
