package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class TemplateErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final TemplateError errorValue;
  
  public TemplateErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, TemplateError paramTemplateError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramTemplateError));
    if (paramTemplateError != null)
    {
      errorValue = paramTemplateError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
