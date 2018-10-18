package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class TeamFolderPermanentlyDeleteErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final TeamFolderPermanentlyDeleteError errorValue;
  
  public TeamFolderPermanentlyDeleteErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, TeamFolderPermanentlyDeleteError paramTeamFolderPermanentlyDeleteError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramTeamFolderPermanentlyDeleteError));
    if (paramTeamFolderPermanentlyDeleteError != null)
    {
      errorValue = paramTeamFolderPermanentlyDeleteError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
