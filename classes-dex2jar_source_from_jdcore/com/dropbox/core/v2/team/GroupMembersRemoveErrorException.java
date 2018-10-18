package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GroupMembersRemoveErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GroupMembersRemoveError errorValue;
  
  public GroupMembersRemoveErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GroupMembersRemoveError paramGroupMembersRemoveError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGroupMembersRemoveError));
    if (paramGroupMembersRemoveError != null)
    {
      errorValue = paramGroupMembersRemoveError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
