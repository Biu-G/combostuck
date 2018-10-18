package com.dropbox.core.v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.DbxUploadStyleBuilder;
import com.dropbox.core.v2.fileproperties.PropertyGroup;
import java.util.Date;
import java.util.List;

public class UploadBuilder
  extends DbxUploadStyleBuilder<FileMetadata, UploadError, UploadErrorException>
{
  private final DbxUserFilesRequests a;
  private final CommitInfo.Builder b;
  
  UploadBuilder(DbxUserFilesRequests paramDbxUserFilesRequests, CommitInfo.Builder paramBuilder)
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
  
  public UploadUploader start()
    throws UploadErrorException, DbxException
  {
    CommitInfo localCommitInfo = b.build();
    return a.a(localCommitInfo);
  }
  
  public UploadBuilder withAutorename(Boolean paramBoolean)
  {
    b.withAutorename(paramBoolean);
    return this;
  }
  
  public UploadBuilder withClientModified(Date paramDate)
  {
    b.withClientModified(paramDate);
    return this;
  }
  
  public UploadBuilder withMode(WriteMode paramWriteMode)
  {
    b.withMode(paramWriteMode);
    return this;
  }
  
  public UploadBuilder withMute(Boolean paramBoolean)
  {
    b.withMute(paramBoolean);
    return this;
  }
  
  public UploadBuilder withPropertyGroups(List<PropertyGroup> paramList)
  {
    b.withPropertyGroups(paramList);
    return this;
  }
}
