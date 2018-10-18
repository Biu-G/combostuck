package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GroupsPollErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GroupsPollError errorValue;
  
  public GroupsPollErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GroupsPollError paramGroupsPollError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGroupsPollError));
    if (paramGroupsPollError != null)
    {
      errorValue = paramGroupsPollError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
