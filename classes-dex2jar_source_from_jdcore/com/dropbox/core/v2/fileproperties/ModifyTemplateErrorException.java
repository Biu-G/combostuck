package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ModifyTemplateErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ModifyTemplateError errorValue;
  
  public ModifyTemplateErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ModifyTemplateError paramModifyTemplateError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramModifyTemplateError));
    if (paramModifyTemplateError != null)
    {
      errorValue = paramModifyTemplateError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
