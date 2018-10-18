package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListTeamAppsErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListTeamAppsError errorValue;
  
  public ListTeamAppsErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListTeamAppsError paramListTeamAppsError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListTeamAppsError));
    if (paramListTeamAppsError != null)
    {
      errorValue = paramListTeamAppsError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
