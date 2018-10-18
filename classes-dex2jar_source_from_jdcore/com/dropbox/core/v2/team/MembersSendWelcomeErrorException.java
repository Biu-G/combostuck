package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class MembersSendWelcomeErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final MembersSendWelcomeError errorValue;
  
  public MembersSendWelcomeErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, MembersSendWelcomeError paramMembersSendWelcomeError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramMembersSendWelcomeError));
    if (paramMembersSendWelcomeError != null)
    {
      errorValue = paramMembersSendWelcomeError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
