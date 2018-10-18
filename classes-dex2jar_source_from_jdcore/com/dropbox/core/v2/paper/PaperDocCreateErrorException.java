package com.dropbox.core.v2.paper;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class PaperDocCreateErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final PaperDocCreateError errorValue;
  
  public PaperDocCreateErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, PaperDocCreateError paramPaperDocCreateError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramPaperDocCreateError));
    if (paramPaperDocCreateError != null)
    {
      errorValue = paramPaperDocCreateError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
