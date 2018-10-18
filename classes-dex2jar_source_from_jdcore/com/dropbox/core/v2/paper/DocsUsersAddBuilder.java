package com.dropbox.core.v2.paper;

import com.dropbox.core.DbxException;
import java.util.List;

public class DocsUsersAddBuilder
{
  private final DbxUserPaperRequests a;
  private final AddPaperDocUser.Builder b;
  
  DocsUsersAddBuilder(DbxUserPaperRequests paramDbxUserPaperRequests, AddPaperDocUser.Builder paramBuilder)
  {
    if (paramDbxUserPaperRequests != null)
    {
      a = paramDbxUserPaperRequests;
      if (paramBuilder != null)
      {
        b = paramBuilder;
        return;
      }
      throw new NullPointerException("_builder");
    }
    throw new NullPointerException("_client");
  }
  
  public List<AddPaperDocUserMemberResult> start()
    throws DocLookupErrorException, DbxException
  {
    AddPaperDocUser localAddPaperDocUser = b.build();
    return a.a(localAddPaperDocUser);
  }
  
  public DocsUsersAddBuilder withCustomMessage(String paramString)
  {
    b.withCustomMessage(paramString);
    return this;
  }
  
  public DocsUsersAddBuilder withQuiet(Boolean paramBoolean)
  {
    b.withQuiet(paramBoolean);
    return this;
  }
}
