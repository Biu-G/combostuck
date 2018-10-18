package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class AddFileMemberErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final AddFileMemberError errorValue;
  
  public AddFileMemberErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, AddFileMemberError paramAddFileMemberError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramAddFileMemberError));
    if (paramAddFileMemberError != null)
    {
      errorValue = paramAddFileMemberError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
