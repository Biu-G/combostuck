package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class TeamFolderRenameErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final TeamFolderRenameError errorValue;
  
  public TeamFolderRenameErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, TeamFolderRenameError paramTeamFolderRenameError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramTeamFolderRenameError));
    if (paramTeamFolderRenameError != null)
    {
      errorValue = paramTeamFolderRenameError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
