package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GroupDeleteErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GroupDeleteError errorValue;
  
  public GroupDeleteErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GroupDeleteError paramGroupDeleteError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGroupDeleteError));
    if (paramGroupDeleteError != null)
    {
      errorValue = paramGroupDeleteError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
