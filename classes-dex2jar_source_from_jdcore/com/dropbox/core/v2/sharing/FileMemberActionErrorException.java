package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class FileMemberActionErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final FileMemberActionError errorValue;
  
  public FileMemberActionErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, FileMemberActionError paramFileMemberActionError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramFileMemberActionError));
    if (paramFileMemberActionError != null)
    {
      errorValue = paramFileMemberActionError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
