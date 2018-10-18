package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListFolderContinueErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListFolderContinueError errorValue;
  
  public ListFolderContinueErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListFolderContinueError paramListFolderContinueError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListFolderContinueError));
    if (paramListFolderContinueError != null)
    {
      errorValue = paramListFolderContinueError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
