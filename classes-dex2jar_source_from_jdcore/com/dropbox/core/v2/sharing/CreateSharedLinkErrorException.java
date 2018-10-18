package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class CreateSharedLinkErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final CreateSharedLinkError errorValue;
  
  public CreateSharedLinkErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, CreateSharedLinkError paramCreateSharedLinkError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramCreateSharedLinkError));
    if (paramCreateSharedLinkError != null)
    {
      errorValue = paramCreateSharedLinkError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
