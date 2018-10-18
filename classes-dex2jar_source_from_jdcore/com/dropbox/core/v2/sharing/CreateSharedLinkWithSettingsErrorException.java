package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class CreateSharedLinkWithSettingsErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final CreateSharedLinkWithSettingsError errorValue;
  
  public CreateSharedLinkWithSettingsErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, CreateSharedLinkWithSettingsError paramCreateSharedLinkWithSettingsError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramCreateSharedLinkWithSettingsError));
    if (paramCreateSharedLinkWithSettingsError != null)
    {
      errorValue = paramCreateSharedLinkWithSettingsError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
