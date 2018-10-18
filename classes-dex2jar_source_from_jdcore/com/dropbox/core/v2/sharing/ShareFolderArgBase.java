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
import java.util.regex.Pattern;

class ShareFolderArgBase
{
  protected final AclUpdatePolicy c;
  protected final boolean d;
  protected final MemberPolicy e;
  protected final String f;
  protected final SharedLinkPolicy g;
  protected final ViewerInfoPolicy h;
  
  public ShareFolderArgBase(String paramString, AclUpdatePolicy paramAclUpdatePolicy, boolean paramBoolean, MemberPolicy paramMemberPolicy, SharedLinkPolicy paramSharedLinkPolicy, ViewerInfoPolicy paramViewerInfoPolicy)
  {
    c = paramAclUpdatePolicy;
    d = paramBoolean;
    e = paramMemberPolicy;
    if (paramString != null)
    {
      if (Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)", paramString))
      {
        f = paramString;
        g = paramSharedLinkPolicy;
        h = paramViewerInfoPolicy;
        return;
      }
      throw new IllegalArgumentException("String 'path' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'path' is null");
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
      paramObject = (ShareFolderArgBase)paramObject;
      if (((f == f) || (f.equals(f))) && ((c == c) || ((c != null) && (c.equals(c)))) && (d == d) && ((e == e) || ((e != null) && (e.equals(e)))) && ((g == g) || ((g != null) && (g.equals(g)))))
      {
        if (h == h) {
          break label202;
        }
        if ((h != null) && (h.equals(h))) {
          return true;
        }
      }
      bool = false;
      label202:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { c, Boolean.valueOf(d), e, f, g, h });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected AclUpdatePolicy aclUpdatePolicy;
    protected boolean forceAsync;
    protected MemberPolicy memberPolicy;
    protected final String path;
    protected SharedLinkPolicy sharedLinkPolicy;
    protected ViewerInfoPolicy viewerInfoPolicy;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        if (Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)", paramString))
        {
          path = paramString;
          aclUpdatePolicy = null;
          forceAsync = false;
          memberPolicy = null;
          sharedLinkPolicy = null;
          viewerInfoPolicy = null;
          return;
        }
        throw new IllegalArgumentException("String 'path' does not match pattern");
      }
      throw new IllegalArgumentException("Required value for 'path' is null");
    }
    
    public ShareFolderArgBase build()
    {
      return new ShareFolderArgBase(path, aclUpdatePolicy, forceAsync, memberPolicy, sharedLinkPolicy, viewerInfoPolicy);
    }
    
    public Builder withAclUpdatePolicy(AclUpdatePolicy paramAclUpdatePolicy)
    {
      aclUpdatePolicy = paramAclUpdatePolicy;
      return this;
    }
    
    public Builder withForceAsync(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        forceAsync = paramBoolean.booleanValue();
        return this;
      }
      forceAsync = false;
      return this;
    }
    
    public Builder withMemberPolicy(MemberPolicy paramMemberPolicy)
    {
      memberPolicy = paramMemberPolicy;
      return this;
    }
    
    public Builder withSharedLinkPolicy(SharedLinkPolicy paramSharedLinkPolicy)
    {
      sharedLinkPolicy = paramSharedLinkPolicy;
      return this;
    }
    
    public Builder withViewerInfoPolicy(ViewerInfoPolicy paramViewerInfoPolicy)
    {
      viewerInfoPolicy = paramViewerInfoPolicy;
      return this;
    }
  }
  
  private static class a
    extends StructSerializer<ShareFolderArgBase>
  {
    public static final a a = new a();
    
    private a() {}
    
    public ShareFolderArgBase a(JsonParser paramJsonParser, boolean paramBoolean)
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
        Boolean localBoolean = Boolean.valueOf(false);
        String str1 = null;
        localObject1 = str1;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        Object localObject4 = localObject3;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("path".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("acl_update_policy".equals(str2)) {
            localObject1 = (AclUpdatePolicy)StoneSerializers.nullable(AclUpdatePolicy.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("force_async".equals(str2)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("member_policy".equals(str2)) {
            localObject2 = (MemberPolicy)StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("shared_link_policy".equals(str2)) {
            localObject3 = (SharedLinkPolicy)StoneSerializers.nullable(SharedLinkPolicy.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("viewer_info_policy".equals(str2)) {
            localObject4 = (ViewerInfoPolicy)StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new ShareFolderArgBase(str1, (AclUpdatePolicy)localObject1, localBoolean.booleanValue(), (MemberPolicy)localObject2, (SharedLinkPolicy)localObject3, (ViewerInfoPolicy)localObject4);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"path\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ShareFolderArgBase paramShareFolderArgBase, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("path");
      StoneSerializers.string().serialize(f, paramJsonGenerator);
      if (c != null)
      {
        paramJsonGenerator.writeFieldName("acl_update_policy");
        StoneSerializers.nullable(AclUpdatePolicy.Serializer.INSTANCE).serialize(c, paramJsonGenerator);
      }
      paramJsonGenerator.writeFieldName("force_async");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(d), paramJsonGenerator);
      if (e != null)
      {
        paramJsonGenerator.writeFieldName("member_policy");
        StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).serialize(e, paramJsonGenerator);
      }
      if (g != null)
      {
        paramJsonGenerator.writeFieldName("shared_link_policy");
        StoneSerializers.nullable(SharedLinkPolicy.Serializer.INSTANCE).serialize(g, paramJsonGenerator);
      }
      if (h != null)
      {
        paramJsonGenerator.writeFieldName("viewer_info_policy");
        StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).serialize(h, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
