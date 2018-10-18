package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class PropertiesSearchContinueErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final PropertiesSearchContinueError errorValue;
  
  public PropertiesSearchContinueErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, PropertiesSearchContinueError paramPropertiesSearchContinueError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramPropertiesSearchContinueError));
    if (paramPropertiesSearchContinueError != null)
    {
      errorValue = paramPropertiesSearchContinueError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
