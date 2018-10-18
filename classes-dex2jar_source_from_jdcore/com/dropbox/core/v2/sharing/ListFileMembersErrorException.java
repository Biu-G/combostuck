package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListFileMembersErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListFileMembersError errorValue;
  
  public ListFileMembersErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListFileMembersError paramListFileMembersError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListFileMembersError));
    if (paramListFileMembersError != null)
    {
      errorValue = paramListFileMembersError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
