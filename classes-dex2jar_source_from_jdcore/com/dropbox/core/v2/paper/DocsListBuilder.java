package com.dropbox.core.v2.paper;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;

public class DocsListBuilder
{
  private final DbxUserPaperRequests a;
  private final ListPaperDocsArgs.Builder b;
  
  DocsListBuilder(DbxUserPaperRequests paramDbxUserPaperRequests, ListPaperDocsArgs.Builder paramBuilder)
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
  
  public ListPaperDocsResponse start()
    throws DbxApiException, DbxException
  {
    ListPaperDocsArgs localListPaperDocsArgs = b.build();
    return a.a(localListPaperDocsArgs);
  }
  
  public DocsListBuilder withFilterBy(ListPaperDocsFilterBy paramListPaperDocsFilterBy)
  {
    b.withFilterBy(paramListPaperDocsFilterBy);
    return this;
  }
  
  public DocsListBuilder withLimit(Integer paramInteger)
  {
    b.withLimit(paramInteger);
    return this;
  }
  
  public DocsListBuilder withSortBy(ListPaperDocsSortBy paramListPaperDocsSortBy)
  {
    b.withSortBy(paramListPaperDocsSortBy);
    return this;
  }
  
  public DocsListBuilder withSortOrder(ListPaperDocsSortOrder paramListPaperDocsSortOrder)
  {
    b.withSortOrder(paramListPaperDocsSortOrder);
    return this;
  }
}
