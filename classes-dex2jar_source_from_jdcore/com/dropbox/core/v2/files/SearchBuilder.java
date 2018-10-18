package com.dropbox.core.v2.files;

import com.dropbox.core.DbxException;

public class SearchBuilder
{
  private final DbxUserFilesRequests a;
  private final SearchArg.Builder b;
  
  SearchBuilder(DbxUserFilesRequests paramDbxUserFilesRequests, SearchArg.Builder paramBuilder)
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
  
  public SearchResult start()
    throws SearchErrorException, DbxException
  {
    SearchArg localSearchArg = b.build();
    return a.a(localSearchArg);
  }
  
  public SearchBuilder withMaxResults(Long paramLong)
  {
    b.withMaxResults(paramLong);
    return this;
  }
  
  public SearchBuilder withMode(SearchMode paramSearchMode)
  {
    b.withMode(paramSearchMode);
    return this;
  }
  
  public SearchBuilder withStart(Long paramLong)
  {
    b.withStart(paramLong);
    return this;
  }
}
