package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class AlphaGetMetadataErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final AlphaGetMetadataError errorValue;
  
  public AlphaGetMetadataErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, AlphaGetMetadataError paramAlphaGetMetadataError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramAlphaGetMetadataError));
    if (paramAlphaGetMetadataError != null)
    {
      errorValue = paramAlphaGetMetadataError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
