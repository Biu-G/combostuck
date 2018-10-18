package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class MountFolderErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final MountFolderError errorValue;
  
  public MountFolderErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, MountFolderError paramMountFolderError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramMountFolderError));
    if (paramMountFolderError != null)
    {
      errorValue = paramMountFolderError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
