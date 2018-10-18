package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class SharingUserErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final SharingUserError errorValue;
  
  public SharingUserErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, SharingUserError paramSharingUserError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramSharingUserError));
    if (paramSharingUserError != null)
    {
      errorValue = paramSharingUserError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
