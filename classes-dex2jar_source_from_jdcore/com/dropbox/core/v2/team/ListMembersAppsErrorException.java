package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListMembersAppsErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListMembersAppsError errorValue;
  
  public ListMembersAppsErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListMembersAppsError paramListMembersAppsError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListMembersAppsError));
    if (paramListMembersAppsError != null)
    {
      errorValue = paramListMembersAppsError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
