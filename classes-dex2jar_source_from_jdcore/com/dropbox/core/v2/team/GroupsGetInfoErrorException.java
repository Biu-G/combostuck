package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GroupsGetInfoErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GroupsGetInfoError errorValue;
  
  public GroupsGetInfoErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GroupsGetInfoError paramGroupsGetInfoError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGroupsGetInfoError));
    if (paramGroupsGetInfoError != null)
    {
      errorValue = paramGroupsGetInfoError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
