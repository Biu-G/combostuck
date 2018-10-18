package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class SearchErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final SearchError errorValue;
  
  public SearchErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, SearchError paramSearchError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramSearchError));
    if (paramSearchError != null)
    {
      errorValue = paramSearchError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
