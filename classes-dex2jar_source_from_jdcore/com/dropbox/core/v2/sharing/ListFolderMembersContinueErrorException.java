package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListFolderMembersContinueErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListFolderMembersContinueError errorValue;
  
  public ListFolderMembersContinueErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListFolderMembersContinueError paramListFolderMembersContinueError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListFolderMembersContinueError));
    if (paramListFolderMembersContinueError != null)
    {
      errorValue = paramListFolderMembersContinueError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
