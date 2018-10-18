package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class MembersGetInfoErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final MembersGetInfoError errorValue;
  
  public MembersGetInfoErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, MembersGetInfoError paramMembersGetInfoError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramMembersGetInfoError));
    if (paramMembersGetInfoError != null)
    {
      errorValue = paramMembersGetInfoError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
