package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListTeamDevicesErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListTeamDevicesError errorValue;
  
  public ListTeamDevicesErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListTeamDevicesError paramListTeamDevicesError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListTeamDevicesError));
    if (paramListTeamDevicesError != null)
    {
      errorValue = paramListTeamDevicesError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
