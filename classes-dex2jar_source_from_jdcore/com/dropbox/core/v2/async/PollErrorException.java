package com.dropbox.core.v2.async;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class PollErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final PollError errorValue;
  
  public PollErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, PollError paramPollError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramPollError));
    if (paramPollError != null)
    {
      errorValue = paramPollError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
