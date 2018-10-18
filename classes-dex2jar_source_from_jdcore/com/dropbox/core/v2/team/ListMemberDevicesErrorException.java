package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class ListMemberDevicesErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final ListMemberDevicesError errorValue;
  
  public ListMemberDevicesErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, ListMemberDevicesError paramListMemberDevicesError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramListMemberDevicesError));
    if (paramListMemberDevicesError != null)
    {
      errorValue = paramListMemberDevicesError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
