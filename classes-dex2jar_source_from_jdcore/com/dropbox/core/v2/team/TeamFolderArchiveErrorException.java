package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class TeamFolderArchiveErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final TeamFolderArchiveError errorValue;
  
  public TeamFolderArchiveErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, TeamFolderArchiveError paramTeamFolderArchiveError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramTeamFolderArchiveError));
    if (paramTeamFolderArchiveError != null)
    {
      errorValue = paramTeamFolderArchiveError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
