package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class SharedLinkErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final SharedLinkError errorValue;
  
  public SharedLinkErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, SharedLinkError paramSharedLinkError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramSharedLinkError));
    if (paramSharedLinkError != null)
    {
      errorValue = paramSharedLinkError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
