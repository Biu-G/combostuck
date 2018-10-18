package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GroupUpdateErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GroupUpdateError errorValue;
  
  public GroupUpdateErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GroupUpdateError paramGroupUpdateError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGroupUpdateError));
    if (paramGroupUpdateError != null)
    {
      errorValue = paramGroupUpdateError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
