package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListRevisionsErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListRevisionsError errorValue;
  
  public ListRevisionsErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListRevisionsError paramListRevisionsError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListRevisionsError));
    if (paramListRevisionsError != null)
    {
      errorValue = paramListRevisionsError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
