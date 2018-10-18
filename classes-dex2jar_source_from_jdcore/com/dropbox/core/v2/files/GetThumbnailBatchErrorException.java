package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GetThumbnailBatchErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GetThumbnailBatchError errorValue;
  
  public GetThumbnailBatchErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GetThumbnailBatchError paramGetThumbnailBatchError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGetThumbnailBatchError));
    if (paramGetThumbnailBatchError != null)
    {
      errorValue = paramGetThumbnailBatchError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
