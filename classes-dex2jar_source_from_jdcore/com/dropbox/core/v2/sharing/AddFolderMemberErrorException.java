package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class AddFolderMemberErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final AddFolderMemberError errorValue;
  
  public AddFolderMemberErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, AddFolderMemberError paramAddFolderMemberError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramAddFolderMemberError));
    if (paramAddFolderMemberError != null)
    {
      errorValue = paramAddFolderMemberError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
