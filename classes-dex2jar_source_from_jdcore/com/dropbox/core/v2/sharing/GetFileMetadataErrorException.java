package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class GetFileMetadataErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final GetFileMetadataError errorValue;
  
  public GetFileMetadataErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, GetFileMetadataError paramGetFileMetadataError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramGetFileMetadataError));
    if (paramGetFileMetadataError != null)
    {
      errorValue = paramGetFileMetadataError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
