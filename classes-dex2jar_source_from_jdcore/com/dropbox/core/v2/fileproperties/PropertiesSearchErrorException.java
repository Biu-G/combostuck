package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class PropertiesSearchErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final PropertiesSearchError errorValue;
  
  public PropertiesSearchErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, PropertiesSearchError paramPropertiesSearchError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramPropertiesSearchError));
    if (paramPropertiesSearchError != null)
    {
      errorValue = paramPropertiesSearchError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
