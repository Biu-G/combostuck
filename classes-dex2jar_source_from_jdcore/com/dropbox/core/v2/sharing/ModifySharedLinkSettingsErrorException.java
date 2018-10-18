package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ModifySharedLinkSettingsErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ModifySharedLinkSettingsError errorValue;
  
  public ModifySharedLinkSettingsErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ModifySharedLinkSettingsError paramModifySharedLinkSettingsError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramModifySharedLinkSettingsError));
    if (paramModifySharedLinkSettingsError != null)
    {
      errorValue = paramModifySharedLinkSettingsError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
