package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListFolderLongpollErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListFolderLongpollError errorValue;
  
  public ListFolderLongpollErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListFolderLongpollError paramListFolderLongpollError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListFolderLongpollError));
    if (paramListFolderLongpollError != null)
    {
      errorValue = paramListFolderLongpollError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
