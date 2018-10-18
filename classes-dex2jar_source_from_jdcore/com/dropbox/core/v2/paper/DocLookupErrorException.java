package com.dropbox.core.v2.paper;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class DocLookupErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final DocLookupError errorValue;
  
  public DocLookupErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, DocLookupError paramDocLookupError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramDocLookupError));
    if (paramDocLookupError != null)
    {
      errorValue = paramDocLookupError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
