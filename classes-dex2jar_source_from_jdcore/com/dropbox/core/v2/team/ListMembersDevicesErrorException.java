package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListMembersDevicesErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListMembersDevicesError errorValue;
  
  public ListMembersDevicesErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListMembersDevicesError paramListMembersDevicesError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListMembersDevicesError));
    if (paramListMembersDevicesError != null)
    {
      errorValue = paramListMembersDevicesError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
