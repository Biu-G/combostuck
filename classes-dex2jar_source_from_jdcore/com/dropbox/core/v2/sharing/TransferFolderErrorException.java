package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class TransferFolderErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final TransferFolderError errorValue;
  
  public TransferFolderErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, TransferFolderError paramTransferFolderError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramTransferFolderError));
    if (paramTransferFolderError != null)
    {
      errorValue = paramTransferFolderError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
