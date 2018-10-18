package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class UploadErrorWithPropertiesException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final UploadErrorWithProperties errorValue;
  
  public UploadErrorWithPropertiesException(String paramString1, String paramString2, LocalizedText paramLocalizedText, UploadErrorWithProperties paramUploadErrorWithProperties)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramUploadErrorWithProperties));
    if (paramUploadErrorWithProperties != null)
    {
      errorValue = paramUploadErrorWithProperties;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
