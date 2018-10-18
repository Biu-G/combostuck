package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class TeamFolderCreateErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final TeamFolderCreateError errorValue;
  
  public TeamFolderCreateErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, TeamFolderCreateError paramTeamFolderCreateError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramTeamFolderCreateError));
    if (paramTeamFolderCreateError != null)
    {
      errorValue = paramTeamFolderCreateError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
