package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class MembersSuspendErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final MembersSuspendError errorValue;
  
  public MembersSuspendErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, MembersSuspendError paramMembersSuspendError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramMembersSuspendError));
    if (paramMembersSuspendError != null)
    {
      errorValue = paramMembersSuspendError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
