package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class RemoveFileMemberErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final RemoveFileMemberError errorValue;
  
  public RemoveFileMemberErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, RemoveFileMemberError paramRemoveFileMemberError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramRemoveFileMemberError));
    if (paramRemoveFileMemberError != null)
    {
      errorValue = paramRemoveFileMemberError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
