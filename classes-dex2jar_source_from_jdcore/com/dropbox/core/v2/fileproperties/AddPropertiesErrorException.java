package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class AddPropertiesErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final AddPropertiesError errorValue;
  
  public AddPropertiesErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, AddPropertiesError paramAddPropertiesError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramAddPropertiesError));
    if (paramAddPropertiesError != null)
    {
      errorValue = paramAddPropertiesError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
