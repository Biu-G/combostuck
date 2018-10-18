package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListFoldersContinueErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListFoldersContinueError errorValue;
  
  public ListFoldersContinueErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListFoldersContinueError paramListFoldersContinueError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListFoldersContinueError));
    if (paramListFoldersContinueError != null)
    {
      errorValue = paramListFoldersContinueError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
