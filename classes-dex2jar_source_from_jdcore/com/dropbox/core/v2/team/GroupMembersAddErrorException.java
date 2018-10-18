package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GroupMembersAddErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GroupMembersAddError errorValue;
  
  public GroupMembersAddErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GroupMembersAddError paramGroupMembersAddError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGroupMembersAddError));
    if (paramGroupMembersAddError != null)
    {
      errorValue = paramGroupMembersAddError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
