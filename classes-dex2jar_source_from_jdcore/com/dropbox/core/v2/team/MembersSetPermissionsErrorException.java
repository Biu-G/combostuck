package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class MembersSetPermissionsErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final MembersSetPermissionsError errorValue;
  
  public MembersSetPermissionsErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, MembersSetPermissionsError paramMembersSetPermissionsError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramMembersSetPermissionsError));
    if (paramMembersSetPermissionsError != null)
    {
      errorValue = paramMembersSetPermissionsError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
