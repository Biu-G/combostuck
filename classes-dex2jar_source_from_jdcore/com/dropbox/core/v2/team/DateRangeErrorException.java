package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class DateRangeErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final DateRangeError errorValue;
  
  public DateRangeErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, DateRangeError paramDateRangeError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramDateRangeError));
    if (paramDateRangeError != null)
    {
      errorValue = paramDateRangeError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
