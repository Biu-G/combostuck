package com.dropbox.core.v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.fileproperties.TemplateFilterBase;

public class ListFolderGetLatestCursorBuilder
{
  private final DbxUserFilesRequests a;
  private final ListFolderArg.Builder b;
  
  ListFolderGetLatestCursorBuilder(DbxUserFilesRequests paramDbxUserFilesRequests, ListFolderArg.Builder paramBuilder)
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
  
  public ListFolderGetLatestCursorResult start()
    throws ListFolderErrorException, DbxException
  {
    ListFolderArg localListFolderArg = b.build();
    return a.b(localListFolderArg);
  }
  
  public ListFolderGetLatestCursorBuilder withIncludeDeleted(Boolean paramBoolean)
  {
    b.withIncludeDeleted(paramBoolean);
    return this;
  }
  
  public ListFolderGetLatestCursorBuilder withIncludeHasExplicitSharedMembers(Boolean paramBoolean)
  {
    b.withIncludeHasExplicitSharedMembers(paramBoolean);
    return this;
  }
  
  public ListFolderGetLatestCursorBuilder withIncludeMediaInfo(Boolean paramBoolean)
  {
    b.withIncludeMediaInfo(paramBoolean);
    return this;
  }
  
  public ListFolderGetLatestCursorBuilder withIncludeMountedFolders(Boolean paramBoolean)
  {
    b.withIncludeMountedFolders(paramBoolean);
    return this;
  }
  
  public ListFolderGetLatestCursorBuilder withIncludePropertyGroups(TemplateFilterBase paramTemplateFilterBase)
  {
    b.withIncludePropertyGroups(paramTemplateFilterBase);
    return this;
  }
  
  public ListFolderGetLatestCursorBuilder withLimit(Long paramLong)
  {
    b.withLimit(paramLong);
    return this;
  }
  
  public ListFolderGetLatestCursorBuilder withRecursive(Boolean paramBoolean)
  {
    b.withRecursive(paramBoolean);
    return this;
  }
  
  public ListFolderGetLatestCursorBuilder withSharedLink(SharedLink paramSharedLink)
  {
    b.withSharedLink(paramSharedLink);
    return this;
  }
}
