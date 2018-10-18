package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class FolderPolicy
{
  protected final AclUpdatePolicy aclUpdatePolicy;
  protected final MemberPolicy memberPolicy;
  protected final MemberPolicy resolvedMemberPolicy;
  protected final SharedLinkPolicy sharedLinkPolicy;
  protected final ViewerInfoPolicy viewerInfoPolicy;
  
  public FolderPolicy(AclUpdatePolicy paramAclUpdatePolicy, SharedLinkPolicy paramSharedLinkPolicy)
  {
    this(paramAclUpdatePolicy, paramSharedLinkPolicy, null, null, null);
  }
  
  public FolderPolicy(AclUpdatePolicy paramAclUpdatePolicy, SharedLinkPolicy paramSharedLinkPolicy, MemberPolicy paramMemberPolicy1, MemberPolicy paramMemberPolicy2, ViewerInfoPolicy paramViewerInfoPolicy)
  {
    memberPolicy = paramMemberPolicy1;
    resolvedMemberPolicy = paramMemberPolicy2;
    if (paramAclUpdatePolicy != null)
    {
      aclUpdatePolicy = paramAclUpdatePolicy;
      if (paramSharedLinkPolicy != null)
      {
        sharedLinkPolicy = paramSharedLinkPolicy;
        viewerInfoPolicy = paramViewerInfoPolicy;
        return;
      }
      throw new IllegalArgumentException("Required value for 'sharedLinkPolicy' is null");
    }
    throw new IllegalArgumentException("Required value for 'aclUpdatePolicy' is null");
  }
  
  public static Builder newBuilder(AclUpdatePolicy paramAclUpdatePolicy, SharedLinkPolicy paramSharedLinkPolicy)
  {
    return new Builder(paramAclUpdatePolicy, paramSharedLinkPolicy);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (paramObject.getClass().equals(getClass()))
    {
      paramObject = (FolderPolicy)paramObject;
      if (((aclUpdatePolicy == aclUpdatePolicy) || (aclUpdatePolicy.equals(aclUpdatePolicy))) && ((sharedLinkPolicy == sharedLinkPolicy) || (sharedLinkPolicy.equals(sharedLinkPolicy))) && ((memberPolicy == memberPolicy) || ((memberPolicy != null) && (memberPolicy.equals(memberPolicy)))) && ((resolvedMemberPolicy == resolvedMemberPolicy) || ((resolvedMemberPolicy != null) && (resolvedMemberPolicy.equals(resolvedMemberPolicy)))))
      {
        if (viewerInfoPolicy == viewerInfoPolicy) {
          break label184;
        }
        if ((viewerInfoPolicy != null) && (viewerInfoPolicy.equals(viewerInfoPolicy))) {
          return true;
        }
      }
      bool = false;
      label184:
      return bool;
    }
    return false;
  }
  
  public AclUpdatePolicy getAclUpdatePolicy()
  {
    return aclUpdatePolicy;
  }
  
  public MemberPolicy getMemberPolicy()
  {
    return memberPolicy;
  }
  
  public MemberPolicy getResolvedMemberPolicy()
  {
    return resolvedMemberPolicy;
  }
  
  public SharedLinkPolicy getSharedLinkPolicy()
  {
    return sharedLinkPolicy;
  }
  
  public ViewerInfoPolicy getViewerInfoPolicy()
  {
    return viewerInfoPolicy;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { memberPolicy, resolvedMemberPolicy, aclUpdatePolicy, sharedLinkPolicy, viewerInfoPolicy });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  public static class Builder
  {
    protected final AclUpdatePolicy aclUpdatePolicy;
    protected MemberPolicy memberPolicy;
    protected MemberPolicy resolvedMemberPolicy;
    protected final SharedLinkPolicy sharedLinkPolicy;
    protected ViewerInfoPolicy viewerInfoPolicy;
    
    protected Builder(AclUpdatePolicy paramAclUpdatePolicy, SharedLinkPolicy paramSharedLinkPolicy)
    {
      if (paramAclUpdatePolicy != null)
      {
        aclUpdatePolicy = paramAclUpdatePolicy;
        if (paramSharedLinkPolicy != null)
        {
          sharedLinkPolicy = paramSharedLinkPolicy;
          memberPolicy = null;
          resolvedMemberPolicy = null;
          viewerInfoPolicy = null;
          return;
        }
        throw new IllegalArgumentException("Required value for 'sharedLinkPolicy' is null");
      }
      throw new IllegalArgumentException("Required value for 'aclUpdatePolicy' is null");
    }
    
    public FolderPolicy build()
    {
      return new FolderPolicy(aclUpdatePolicy, sharedLinkPolicy, memberPolicy, resolvedMemberPolicy, viewerInfoPolicy);
    }
    
    public Builder withMemberPolicy(MemberPolicy paramMemberPolicy)
    {
      memberPolicy = paramMemberPolicy;
      return this;
    }
    
    public Builder withResolvedMemberPolicy(MemberPolicy paramMemberPolicy)
    {
      resolvedMemberPolicy = paramMemberPolicy;
      return this;
    }
    
    public Builder withViewerInfoPolicy(ViewerInfoPolicy paramViewerInfoPolicy)
    {
      viewerInfoPolicy = paramViewerInfoPolicy;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<FolderPolicy>
  {
    public static final a a = new a();
    
    a() {}
    
    public FolderPolicy a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject1 = readTag(paramJsonParser);
      }
      else
      {
        localObject1 = null;
      }
      if (localObject1 == null)
      {
        AclUpdatePolicy localAclUpdatePolicy = null;
        localObject1 = localAclUpdatePolicy;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        Object localObject4 = localObject3;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("acl_update_policy".equals(str)) {
            localAclUpdatePolicy = AclUpdatePolicy.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("shared_link_policy".equals(str)) {
            localObject1 = SharedLinkPolicy.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("member_policy".equals(str)) {
            localObject2 = (MemberPolicy)StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("resolved_member_policy".equals(str)) {
            localObject3 = (MemberPolicy)StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("viewer_info_policy".equals(str)) {
            localObject4 = (ViewerInfoPolicy)StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localAclUpdatePolicy != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new FolderPolicy(localAclUpdatePolicy, (SharedLinkPolicy)localObject1, (MemberPolicy)localObject2, (MemberPolicy)localObject3, (ViewerInfoPolicy)localObject4);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"shared_link_policy\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"acl_update_policy\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(FolderPolicy paramFolderPolicy, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("acl_update_policy");
      AclUpdatePolicy.Serializer.INSTANCE.serialize(aclUpdatePolicy, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("shared_link_policy");
      SharedLinkPolicy.Serializer.INSTANCE.serialize(sharedLinkPolicy, paramJsonGenerator);
      if (memberPolicy != null)
      {
        paramJsonGenerator.writeFieldName("member_policy");
        StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).serialize(memberPolicy, paramJsonGenerator);
      }
      if (resolvedMemberPolicy != null)
      {
        paramJsonGenerator.writeFieldName("resolved_member_policy");
        StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).serialize(resolvedMemberPolicy, paramJsonGenerator);
      }
      if (viewerInfoPolicy != null)
      {
        paramJsonGenerator.writeFieldName("viewer_info_policy");
        StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).serialize(viewerInfoPolicy, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
