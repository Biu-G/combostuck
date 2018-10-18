package com.dropbox.core.v2.filerequests;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListFileRequestsErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListFileRequestsError errorValue;
  
  public ListFileRequestsErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListFileRequestsError paramListFileRequestsError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListFileRequestsError));
    if (paramListFileRequestsError != null)
    {
      errorValue = paramListFileRequestsError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
