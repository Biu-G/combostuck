package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class RemoveFolderMemberErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final RemoveFolderMemberError errorValue;
  
  public RemoveFolderMemberErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, RemoveFolderMemberError paramRemoveFolderMemberError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramRemoveFolderMemberError));
    if (paramRemoveFolderMemberError != null)
    {
      errorValue = paramRemoveFolderMemberError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
