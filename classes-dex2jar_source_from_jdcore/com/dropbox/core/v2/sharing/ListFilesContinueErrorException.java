package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListFilesContinueErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListFilesContinueError errorValue;
  
  public ListFilesContinueErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListFilesContinueError paramListFilesContinueError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListFilesContinueError));
    if (paramListFilesContinueError != null)
    {
      errorValue = paramListFilesContinueError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
