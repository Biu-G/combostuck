package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class SaveCopyReferenceErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final SaveCopyReferenceError errorValue;
  
  public SaveCopyReferenceErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, SaveCopyReferenceError paramSaveCopyReferenceError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramSaveCopyReferenceError));
    if (paramSaveCopyReferenceError != null)
    {
      errorValue = paramSaveCopyReferenceError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
