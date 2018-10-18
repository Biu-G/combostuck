package com.dropbox.core.v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.DbxUploadStyleBuilder;
import com.dropbox.core.v2.fileproperties.PropertyGroup;
import java.util.Date;
import java.util.List;

public class AlphaUploadBuilder
  extends DbxUploadStyleBuilder<FileMetadata, UploadErrorWithProperties, UploadErrorWithPropertiesException>
{
  private final DbxUserFilesRequests a;
  private final CommitInfoWithProperties.Builder b;
  
  AlphaUploadBuilder(DbxUserFilesRequests paramDbxUserFilesRequests, CommitInfoWithProperties.Builder paramBuilder)
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
  
  public AlphaUploadUploader start()
    throws UploadErrorWithPropertiesException, DbxException
  {
    CommitInfoWithProperties localCommitInfoWithProperties = b.build();
    return a.a(localCommitInfoWithProperties);
  }
  
  public AlphaUploadBuilder withAutorename(Boolean paramBoolean)
  {
    b.withAutorename(paramBoolean);
    return this;
  }
  
  public AlphaUploadBuilder withClientModified(Date paramDate)
  {
    b.withClientModified(paramDate);
    return this;
  }
  
  public AlphaUploadBuilder withMode(WriteMode paramWriteMode)
  {
    b.withMode(paramWriteMode);
    return this;
  }
  
  public AlphaUploadBuilder withMute(Boolean paramBoolean)
  {
    b.withMute(paramBoolean);
    return this;
  }
  
  public AlphaUploadBuilder withPropertyGroups(List<PropertyGroup> paramList)
  {
    b.withPropertyGroups(paramList);
    return this;
  }
}
