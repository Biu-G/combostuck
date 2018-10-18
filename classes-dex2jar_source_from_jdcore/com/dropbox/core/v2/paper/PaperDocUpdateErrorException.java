package com.dropbox.core.v2.paper;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class PaperDocUpdateErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final PaperDocUpdateError errorValue;
  
  public PaperDocUpdateErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, PaperDocUpdateError paramPaperDocUpdateError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramPaperDocUpdateError));
    if (paramPaperDocUpdateError != null)
    {
      errorValue = paramPaperDocUpdateError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
