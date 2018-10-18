package com.dropbox.core.v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.fileproperties.TemplateFilterBase;
import java.util.List;

public class AlphaGetMetadataBuilder
{
  private final DbxUserFilesRequests a;
  private final AlphaGetMetadataArg.Builder b;
  
  AlphaGetMetadataBuilder(DbxUserFilesRequests paramDbxUserFilesRequests, AlphaGetMetadataArg.Builder paramBuilder)
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
    throws AlphaGetMetadataErrorException, DbxException
  {
    AlphaGetMetadataArg localAlphaGetMetadataArg = b.build();
    return a.a(localAlphaGetMetadataArg);
  }
  
  public AlphaGetMetadataBuilder withIncludeDeleted(Boolean paramBoolean)
  {
    b.withIncludeDeleted(paramBoolean);
    return this;
  }
  
  public AlphaGetMetadataBuilder withIncludeHasExplicitSharedMembers(Boolean paramBoolean)
  {
    b.withIncludeHasExplicitSharedMembers(paramBoolean);
    return this;
  }
  
  public AlphaGetMetadataBuilder withIncludeMediaInfo(Boolean paramBoolean)
  {
    b.withIncludeMediaInfo(paramBoolean);
    return this;
  }
  
  public AlphaGetMetadataBuilder withIncludePropertyGroups(TemplateFilterBase paramTemplateFilterBase)
  {
    b.withIncludePropertyGroups(paramTemplateFilterBase);
    return this;
  }
  
  public AlphaGetMetadataBuilder withIncludePropertyTemplates(List<String> paramList)
  {
    b.withIncludePropertyTemplates(paramList);
    return this;
  }
}
