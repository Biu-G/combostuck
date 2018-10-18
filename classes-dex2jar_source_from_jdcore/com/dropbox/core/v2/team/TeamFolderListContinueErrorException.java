package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class TeamFolderListContinueErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final TeamFolderListContinueError errorValue;
  
  public TeamFolderListContinueErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, TeamFolderListContinueError paramTeamFolderListContinueError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramTeamFolderListContinueError));
    if (paramTeamFolderListContinueError != null)
    {
      errorValue = paramTeamFolderListContinueError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
