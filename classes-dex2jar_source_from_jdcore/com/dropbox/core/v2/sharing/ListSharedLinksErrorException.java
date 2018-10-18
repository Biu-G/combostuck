package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListSharedLinksErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListSharedLinksError errorValue;
  
  public ListSharedLinksErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListSharedLinksError paramListSharedLinksError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListSharedLinksError));
    if (paramListSharedLinksError != null)
    {
      errorValue = paramListSharedLinksError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
