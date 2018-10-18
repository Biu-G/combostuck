package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GetMetadataErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GetMetadataError errorValue;
  
  public GetMetadataErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GetMetadataError paramGetMetadataError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGetMetadataError));
    if (paramGetMetadataError != null)
    {
      errorValue = paramGetMetadataError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
