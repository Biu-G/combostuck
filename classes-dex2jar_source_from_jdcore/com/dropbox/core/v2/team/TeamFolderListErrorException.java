package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class TeamFolderListErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final TeamFolderListError errorValue;
  
  public TeamFolderListErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, TeamFolderListError paramTeamFolderListError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramTeamFolderListError));
    if (paramTeamFolderListError != null)
    {
      errorValue = paramTeamFolderListError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
