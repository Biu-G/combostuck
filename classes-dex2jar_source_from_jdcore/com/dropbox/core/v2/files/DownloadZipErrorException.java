package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class DownloadZipErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final DownloadZipError errorValue;
  
  public DownloadZipErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, DownloadZipError paramDownloadZipError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramDownloadZipError));
    if (paramDownloadZipError != null)
    {
      errorValue = paramDownloadZipError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
