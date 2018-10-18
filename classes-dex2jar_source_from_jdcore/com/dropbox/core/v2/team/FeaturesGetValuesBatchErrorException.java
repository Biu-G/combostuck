package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class FeaturesGetValuesBatchErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final FeaturesGetValuesBatchError errorValue;
  
  public FeaturesGetValuesBatchErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, FeaturesGetValuesBatchError paramFeaturesGetValuesBatchError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramFeaturesGetValuesBatchError));
    if (paramFeaturesGetValuesBatchError != null)
    {
      errorValue = paramFeaturesGetValuesBatchError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
