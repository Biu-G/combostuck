package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GroupCreateErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GroupCreateError errorValue;
  
  public GroupCreateErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GroupCreateError paramGroupCreateError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGroupCreateError));
    if (paramGroupCreateError != null)
    {
      errorValue = paramGroupCreateError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
