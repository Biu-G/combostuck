package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListMemberAppsErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListMemberAppsError errorValue;
  
  public ListMemberAppsErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListMemberAppsError paramListMemberAppsError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListMemberAppsError));
    if (paramListMemberAppsError != null)
    {
      errorValue = paramListMemberAppsError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
