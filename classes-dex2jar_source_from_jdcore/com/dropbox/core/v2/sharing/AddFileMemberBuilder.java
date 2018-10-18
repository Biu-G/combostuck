package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxException;
import java.util.List;

public class AddFileMemberBuilder
{
  private final DbxUserSharingRequests a;
  private final AddFileMemberArgs.Builder b;
  
  AddFileMemberBuilder(DbxUserSharingRequests paramDbxUserSharingRequests, AddFileMemberArgs.Builder paramBuilder)
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
  
  public List<FileMemberActionResult> start()
    throws AddFileMemberErrorException, DbxException
  {
    AddFileMemberArgs localAddFileMemberArgs = b.build();
    return a.a(localAddFileMemberArgs);
  }
  
  public AddFileMemberBuilder withAccessLevel(AccessLevel paramAccessLevel)
  {
    b.withAccessLevel(paramAccessLevel);
    return this;
  }
  
  public AddFileMemberBuilder withAddMessageAsComment(Boolean paramBoolean)
  {
    b.withAddMessageAsComment(paramBoolean);
    return this;
  }
  
  public AddFileMemberBuilder withCustomMessage(String paramString)
  {
    b.withCustomMessage(paramString);
    return this;
  }
  
  public AddFileMemberBuilder withQuiet(Boolean paramBoolean)
  {
    b.withQuiet(paramBoolean);
    return this;
  }
}
