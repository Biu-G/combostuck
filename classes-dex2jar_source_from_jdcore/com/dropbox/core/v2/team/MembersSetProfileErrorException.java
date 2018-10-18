package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class MembersSetProfileErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final MembersSetProfileError errorValue;
  
  public MembersSetProfileErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, MembersSetProfileError paramMembersSetProfileError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramMembersSetProfileError));
    if (paramMembersSetProfileError != null)
    {
      errorValue = paramMembersSetProfileError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
