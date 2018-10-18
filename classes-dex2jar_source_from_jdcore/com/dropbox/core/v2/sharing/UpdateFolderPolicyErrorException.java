package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class UpdateFolderPolicyErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final UpdateFolderPolicyError errorValue;
  
  public UpdateFolderPolicyErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, UpdateFolderPolicyError paramUpdateFolderPolicyError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramUpdateFolderPolicyError));
    if (paramUpdateFolderPolicyError != null)
    {
      errorValue = paramUpdateFolderPolicyError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
