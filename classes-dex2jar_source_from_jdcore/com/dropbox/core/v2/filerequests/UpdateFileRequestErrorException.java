package com.dropbox.core.v2.filerequests;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class UpdateFileRequestErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final UpdateFileRequestError errorValue;
  
  public UpdateFileRequestErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, UpdateFileRequestError paramUpdateFileRequestError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramUpdateFileRequestError));
    if (paramUpdateFileRequestError != null)
    {
      errorValue = paramUpdateFileRequestError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
