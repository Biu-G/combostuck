package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GroupMemberSetAccessTypeErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GroupMemberSetAccessTypeError errorValue;
  
  public GroupMemberSetAccessTypeErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GroupMemberSetAccessTypeError paramGroupMemberSetAccessTypeError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGroupMemberSetAccessTypeError));
    if (paramGroupMemberSetAccessTypeError != null)
    {
      errorValue = paramGroupMemberSetAccessTypeError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
