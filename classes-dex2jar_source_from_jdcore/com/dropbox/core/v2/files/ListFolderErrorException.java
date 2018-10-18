package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListFolderErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListFolderError errorValue;
  
  public ListFolderErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListFolderError paramListFolderError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListFolderError));
    if (paramListFolderError != null)
    {
      errorValue = paramListFolderError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
