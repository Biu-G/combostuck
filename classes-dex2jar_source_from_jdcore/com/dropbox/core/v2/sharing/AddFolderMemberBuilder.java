package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxException;

public class AddFolderMemberBuilder
{
  private final DbxUserSharingRequests a;
  private final AddFolderMemberArg.Builder b;
  
  AddFolderMemberBuilder(DbxUserSharingRequests paramDbxUserSharingRequests, AddFolderMemberArg.Builder paramBuilder)
  {
    if (paramDbxUserSharingRequests != null)
    {
      a = paramDbxUserSharingRequests;
      if (paramBuilder != null)
      {
        b = paramBuilder;
        return;
      }
      throw new NullPointerException("_builder");
    }
    throw new NullPointerException("_client");
  }
  
  public void start()
    throws AddFolderMemberErrorException, DbxException
  {
    AddFolderMemberArg localAddFolderMemberArg = b.build();
    a.a(localAddFolderMemberArg);
  }
  
  public AddFolderMemberBuilder withCustomMessage(String paramString)
  {
    b.withCustomMessage(paramString);
    return this;
  }
  
  public AddFolderMemberBuilder withQuiet(Boolean paramBoolean)
  {
    b.withQuiet(paramBoolean);
    return this;
  }
}
