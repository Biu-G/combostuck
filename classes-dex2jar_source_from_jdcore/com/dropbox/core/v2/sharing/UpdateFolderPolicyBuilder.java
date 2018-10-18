package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxException;
import java.util.List;

public class UpdateFolderPolicyBuilder
{
  private final DbxUserSharingRequests a;
  private final UpdateFolderPolicyArg.Builder b;
  
  UpdateFolderPolicyBuilder(DbxUserSharingRequests paramDbxUserSharingRequests, UpdateFolderPolicyArg.Builder paramBuilder)
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
  
  public SharedFolderMetadata start()
    throws UpdateFolderPolicyErrorException, DbxException
  {
    UpdateFolderPolicyArg localUpdateFolderPolicyArg = b.build();
    return a.a(localUpdateFolderPolicyArg);
  }
  
  public UpdateFolderPolicyBuilder withAclUpdatePolicy(AclUpdatePolicy paramAclUpdatePolicy)
  {
    b.withAclUpdatePolicy(paramAclUpdatePolicy);
    return this;
  }
  
  public UpdateFolderPolicyBuilder withActions(List<FolderAction> paramList)
  {
    b.withActions(paramList);
    return this;
  }
  
  public UpdateFolderPolicyBuilder withLinkSettings(LinkSettings paramLinkSettings)
  {
    b.withLinkSettings(paramLinkSettings);
    return this;
  }
  
  public UpdateFolderPolicyBuilder withMemberPolicy(MemberPolicy paramMemberPolicy)
  {
    b.withMemberPolicy(paramMemberPolicy);
    return this;
  }
  
  public UpdateFolderPolicyBuilder withSharedLinkPolicy(SharedLinkPolicy paramSharedLinkPolicy)
  {
    b.withSharedLinkPolicy(paramSharedLinkPolicy);
    return this;
  }
  
  public UpdateFolderPolicyBuilder withViewerInfoPolicy(ViewerInfoPolicy paramViewerInfoPolicy)
  {
    b.withViewerInfoPolicy(paramViewerInfoPolicy);
    return this;
  }
}
