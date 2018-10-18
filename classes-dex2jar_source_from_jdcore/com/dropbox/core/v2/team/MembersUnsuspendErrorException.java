package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class MembersUnsuspendErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final MembersUnsuspendError errorValue;
  
  public MembersUnsuspendErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, MembersUnsuspendError paramMembersUnsuspendError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramMembersUnsuspendError));
    if (paramMembersUnsuspendError != null)
    {
      errorValue = paramMembersUnsuspendError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
