package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class TeamFolderUpdateSyncSettingsErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final TeamFolderUpdateSyncSettingsError errorValue;
  
  public TeamFolderUpdateSyncSettingsErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, TeamFolderUpdateSyncSettingsError paramTeamFolderUpdateSyncSettingsError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramTeamFolderUpdateSyncSettingsError));
    if (paramTeamFolderUpdateSyncSettingsError != null)
    {
      errorValue = paramTeamFolderUpdateSyncSettingsError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
