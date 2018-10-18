package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class DownloadErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final DownloadError errorValue;
  
  public DownloadErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, DownloadError paramDownloadError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramDownloadError));
    if (paramDownloadError != null)
    {
      errorValue = paramDownloadError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
