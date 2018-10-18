package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class DeleteErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final DeleteError errorValue;
  
  public DeleteErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, DeleteError paramDeleteError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramDeleteError));
    if (paramDeleteError != null)
    {
      errorValue = paramDeleteError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
