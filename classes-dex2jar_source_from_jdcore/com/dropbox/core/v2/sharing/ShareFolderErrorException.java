package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ShareFolderErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ShareFolderError errorValue;
  
  public ShareFolderErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ShareFolderError paramShareFolderError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramShareFolderError));
    if (paramShareFolderError != null)
    {
      errorValue = paramShareFolderError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
