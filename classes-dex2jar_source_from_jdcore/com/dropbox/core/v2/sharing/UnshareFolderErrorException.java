package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class UnshareFolderErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final UnshareFolderError errorValue;
  
  public UnshareFolderErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, UnshareFolderError paramUnshareFolderError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramUnshareFolderError));
    if (paramUnshareFolderError != null)
    {
      errorValue = paramUnshareFolderError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
