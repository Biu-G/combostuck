package com.dropbox.core.v2.files;

import com.dropbox.core.DbxException;

public class ListRevisionsBuilder
{
  private final DbxUserFilesRequests a;
  private final ListRevisionsArg.Builder b;
  
  ListRevisionsBuilder(DbxUserFilesRequests paramDbxUserFilesRequests, ListRevisionsArg.Builder paramBuilder)
  {
    if (paramDbxUserFilesRequests != null)
    {
      a = paramDbxUserFilesRequests;
      if (paramBuilder != null)
      {
        b = paramBuilder;
        return;
      }
      throw new NullPointerException("_builder");
    }
    throw new NullPointerException("_client");
  }
  
  public ListRevisionsResult start()
    throws ListRevisionsErrorException, DbxException
  {
    ListRevisionsArg localListRevisionsArg = b.build();
    return a.a(localListRevisionsArg);
  }
  
  public ListRevisionsBuilder withLimit(Long paramLong)
  {
    b.withLimit(paramLong);
    return this;
  }
  
  public ListRevisionsBuilder withMode(ListRevisionsMode paramListRevisionsMode)
  {
    b.withMode(paramListRevisionsMode);
    return this;
  }
}
