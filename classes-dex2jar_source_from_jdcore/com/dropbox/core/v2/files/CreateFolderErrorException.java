package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class CreateFolderErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final CreateFolderError errorValue;
  
  public CreateFolderErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, CreateFolderError paramCreateFolderError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramCreateFolderError));
    if (paramCreateFolderError != null)
    {
      errorValue = paramCreateFolderError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
