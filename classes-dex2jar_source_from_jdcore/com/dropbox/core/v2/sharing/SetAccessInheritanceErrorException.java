package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class SetAccessInheritanceErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final SetAccessInheritanceError errorValue;
  
  public SetAccessInheritanceErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, SetAccessInheritanceError paramSetAccessInheritanceError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramSetAccessInheritanceError));
    if (paramSetAccessInheritanceError != null)
    {
      errorValue = paramSetAccessInheritanceError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
