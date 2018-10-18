package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.LocalizedText;

public class UpdateFolderMemberErrorException
  extends DbxApiException
{
  private static final long serialVersionUID = 0L;
  public final UpdateFolderMemberError errorValue;
  
  public UpdateFolderMemberErrorException(String paramString1, String paramString2, LocalizedText paramLocalizedText, UpdateFolderMemberError paramUpdateFolderMemberError)
  {
    super(paramString2, paramLocalizedText, buildMessage(paramString1, paramLocalizedText, paramUpdateFolderMemberError));
    if (paramUpdateFolderMemberError != null)
    {
      errorValue = paramUpdateFolderMemberError;
      return;
    }
    throw new NullPointerException("errorValue");
  }
}
