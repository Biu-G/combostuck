package com.dropbox.core.v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.fileproperties.TemplateFilterBase;

public class GetMetadataBuilder
{
  private final DbxUserFilesRequests a;
  private final GetMetadataArg.Builder b;
  
  GetMetadataBuilder(DbxUserFilesRequests paramDbxUserFilesRequests, GetMetadataArg.Builder paramBuilder)
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
  
  public Metadata start()
    throws GetMetadataErrorException, DbxException
  {
    GetMetadataArg localGetMetadataArg = b.build();
    return a.a(localGetMetadataArg);
  }
  
  public GetMetadataBuilder withIncludeDeleted(Boolean paramBoolean)
  {
    b.withIncludeDeleted(paramBoolean);
    return this;
  }
  
  public GetMetadataBuilder withIncludeHasExplicitSharedMembers(Boolean paramBoolean)
  {
    b.withIncludeHasExplicitSharedMembers(paramBoolean);
    return this;
  }
  
  public GetMetadataBuilder withIncludeMediaInfo(Boolean paramBoolean)
  {
    b.withIncludeMediaInfo(paramBoolean);
    return this;
  }
  
  public GetMetadataBuilder withIncludePropertyGroups(TemplateFilterBase paramTemplateFilterBase)
  {
    b.withIncludePropertyGroups(paramTemplateFilterBase);
    return this;
  }
}
