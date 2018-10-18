package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class TeamFolderActivateErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final TeamFolderActivateError errorValue;
  
  public TeamFolderActivateErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, TeamFolderActivateError paramTeamFolderActivateError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramTeamFolderActivateError));
    if (paramTeamFolderActivateError != null)
    {
      errorValue = paramTeamFolderActivateError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
