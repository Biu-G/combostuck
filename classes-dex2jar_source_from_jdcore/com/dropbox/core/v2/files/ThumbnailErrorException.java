package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ThumbnailErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ThumbnailError errorValue;
  
  public ThumbnailErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ThumbnailError paramThumbnailError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramThumbnailError));
    if (paramThumbnailError != null)
    {
      errorValue = paramThumbnailError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
