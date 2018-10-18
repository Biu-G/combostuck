package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GroupSelectorErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GroupSelectorError errorValue;
  
  public GroupSelectorErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GroupSelectorError paramGroupSelectorError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGroupSelectorError));
    if (paramGroupSelectorError != null)
    {
      errorValue = paramGroupSelectorError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
