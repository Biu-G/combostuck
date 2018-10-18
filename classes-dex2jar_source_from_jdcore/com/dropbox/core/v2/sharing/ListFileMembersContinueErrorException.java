package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListFileMembersContinueErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListFileMembersContinueError errorValue;
  
  public ListFileMembersContinueErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListFileMembersContinueError paramListFileMembersContinueError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListFileMembersContinueError));
    if (paramListFileMembersContinueError != null)
    {
      errorValue = paramListFileMembersContinueError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
