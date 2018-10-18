package com.dropbox.core.v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.fileproperties.TemplateFilterBase;

public class ListFolderBuilder
{
  private final DbxUserFilesRequests a;
  private final ListFolderArg.Builder b;
  
  ListFolderBuilder(DbxUserFilesRequests paramDbxUserFilesRequests, ListFolderArg.Builder paramBuilder)
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
  
  public ListFolderResult start()
    throws ListFolderErrorException, DbxException
  {
    ListFolderArg localListFolderArg = b.build();
    return a.a(localListFolderArg);
  }
  
  public ListFolderBuilder withIncludeDeleted(Boolean paramBoolean)
  {
    b.withIncludeDeleted(paramBoolean);
    return this;
  }
  
  public ListFolderBuilder withIncludeHasExplicitSharedMembers(Boolean paramBoolean)
  {
    b.withIncludeHasExplicitSharedMembers(paramBoolean);
    return this;
  }
  
  public ListFolderBuilder withIncludeMediaInfo(Boolean paramBoolean)
  {
    b.withIncludeMediaInfo(paramBoolean);
    return this;
  }
  
  public ListFolderBuilder withIncludeMountedFolders(Boolean paramBoolean)
  {
    b.withIncludeMountedFolders(paramBoolean);
    return this;
  }
  
  public ListFolderBuilder withIncludePropertyGroups(TemplateFilterBase paramTemplateFilterBase)
  {
    b.withIncludePropertyGroups(paramTemplateFilterBase);
    return this;
  }
  
  public ListFolderBuilder withLimit(Long paramLong)
  {
    b.withLimit(paramLong);
    return this;
  }
  
  public ListFolderBuilder withRecursive(Boolean paramBoolean)
  {
    b.withRecursive(paramBoolean);
    return this;
  }
  
  public ListFolderBuilder withSharedLink(SharedLink paramSharedLink)
  {
    b.withSharedLink(paramSharedLink);
    return this;
  }
}
