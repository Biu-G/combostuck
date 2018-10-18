package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class PreviewErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final PreviewError errorValue;
  
  public PreviewErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, PreviewError paramPreviewError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramPreviewError));
    if (paramPreviewError != null)
    {
      errorValue = paramPreviewError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
