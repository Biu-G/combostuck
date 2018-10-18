package com.dropbox.core.v2.paper;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListUsersCursorErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListUsersCursorError errorValue;
  
  public ListUsersCursorErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListUsersCursorError paramListUsersCursorError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListUsersCursorError));
    if (paramListUsersCursorError != null)
    {
      errorValue = paramListUsersCursorError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
