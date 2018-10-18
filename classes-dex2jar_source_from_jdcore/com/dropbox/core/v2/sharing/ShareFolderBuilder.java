package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxException;
import java.util.List;

public class ShareFolderBuilder
{
  private final DbxUserSharingRequests a;
  private final ShareFolderArg.Builder b;
  
  ShareFolderBuilder(DbxUserSharingRequests paramDbxUserSharingRequests, ShareFolderArg.Builder paramBuilder)
  {
    if (paramDbxUserSharingRequests != null)
    {
      a = paramDbxUserSharingRequests;
      if (paramBuilder != null)
      {
        b = paramBuilder;
        return;
      }
      throw new NullPointerException("_builder");
    }
    throw new NullPointerException("_client");
  }
  
  public ShareFolderLaunch start()
    throws ShareFolderErrorException, DbxException
  {
    ShareFolderArg localShareFolderArg = b.build();
    return a.a(localShareFolderArg);
  }
  
  public ShareFolderBuilder withAclUpdatePolicy(AclUpdatePolicy paramAclUpdatePolicy)
  {
    b.withAclUpdatePolicy(paramAclUpdatePolicy);
    return this;
  }
  
  public ShareFolderBuilder withActions(List<FolderAction> paramList)
  {
    b.withActions(paramList);
    return this;
  }
  
  public ShareFolderBuilder withForceAsync(Boolean paramBoolean)
  {
    b.withForceAsync(paramBoolean);
    return this;
  }
  
  public ShareFolderBuilder withLinkSettings(LinkSettings paramLinkSettings)
  {
    b.withLinkSettings(paramLinkSettings);
    return this;
  }
  
  public ShareFolderBuilder withMemberPolicy(MemberPolicy paramMemberPolicy)
  {
    b.withMemberPolicy(paramMemberPolicy);
    return this;
  }
  
  public ShareFolderBuilder withSharedLinkPolicy(SharedLinkPolicy paramSharedLinkPolicy)
  {
    b.withSharedLinkPolicy(paramSharedLinkPolicy);
    return this;
  }
  
  public ShareFolderBuilder withViewerInfoPolicy(ViewerInfoPolicy paramViewerInfoPolicy)
  {
    b.withViewerInfoPolicy(paramViewerInfoPolicy);
    return this;
  }
}
