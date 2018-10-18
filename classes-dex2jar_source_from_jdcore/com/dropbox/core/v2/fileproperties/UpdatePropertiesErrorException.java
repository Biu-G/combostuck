package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class UpdatePropertiesErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final UpdatePropertiesError errorValue;
  
  public UpdatePropertiesErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, UpdatePropertiesError paramUpdatePropertiesError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramUpdatePropertiesError));
    if (paramUpdatePropertiesError != null)
    {
      errorValue = paramUpdatePropertiesError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
