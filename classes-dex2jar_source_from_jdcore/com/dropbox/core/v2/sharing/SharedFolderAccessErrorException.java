package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class SharedFolderAccessErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final SharedFolderAccessError errorValue;
  
  public SharedFolderAccessErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, SharedFolderAccessError paramSharedFolderAccessError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramSharedFolderAccessError));
    if (paramSharedFolderAccessError != null)
    {
      errorValue = paramSharedFolderAccessError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
