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
import java.util.Iterator;
import java.util.List;

class ShareFolderArg
  extends ShareFolderArgBase
{
  protected final List<FolderAction> a;
  protected final LinkSettings b;
  
  public ShareFolderArg(String paramString)
  {
    this(paramString, null, false, null, null, null, null, null);
  }
  
  public ShareFolderArg(String paramString, AclUpdatePolicy paramAclUpdatePolicy, boolean paramBoolean, MemberPolicy paramMemberPolicy, SharedLinkPolicy paramSharedLinkPolicy, ViewerInfoPolicy paramViewerInfoPolicy, List<FolderAction> paramList, LinkSettings paramLinkSettings)
  {
    super(paramString, paramAclUpdatePolicy, paramBoolean, paramMemberPolicy, paramSharedLinkPolicy, paramViewerInfoPolicy);
    if (paramList != null)
    {
      paramString = paramList.iterator();
      while (paramString.hasNext()) {
        if ((FolderAction)paramString.next() == null) {
          throw new IllegalArgumentException("An item in list 'actions' is null");
        }
      }
    }
    a = paramList;
    b = paramLinkSettings;
  }
  
  public static Builder a(String paramString)
  {
    return new Builder(paramString);
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
      paramObject = (ShareFolderArg)paramObject;
      if (((f == f) || (f.equals(f))) && ((c == c) || ((c != null) && (c.equals(c)))) && (d == d) && ((e == e) || ((e != null) && (e.equals(e)))) && ((g == g) || ((g != null) && (g.equals(g)))) && ((h == h) || ((h != null) && (h.equals(h)))) && ((a == a) || ((a != null) && (a.equals(a)))))
      {
        if (b == b) {
          break label268;
        }
        if ((b != null) && (b.equals(b))) {
          return true;
        }
      }
      bool = false;
      label268:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, b });
    return super.hashCode() * 31 + i;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
    extends ShareFolderArgBase.Builder
  {
    protected List<FolderAction> actions = null;
    protected LinkSettings linkSettings = null;
    
    protected Builder(String paramString)
    {
      super();
    }
    
    public ShareFolderArg build()
    {
      return new ShareFolderArg(path, aclUpdatePolicy, forceAsync, memberPolicy, sharedLinkPolicy, viewerInfoPolicy, actions, linkSettings);
    }
    
    public Builder withAclUpdatePolicy(AclUpdatePolicy paramAclUpdatePolicy)
    {
      super.withAclUpdatePolicy(paramAclUpdatePolicy);
      return this;
    }
    
    public Builder withActions(List<FolderAction> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((FolderAction)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'actions' is null");
          }
        }
      }
      actions = paramList;
      return this;
    }
    
    public Builder withForceAsync(Boolean paramBoolean)
    {
      super.withForceAsync(paramBoolean);
      return this;
    }
    
    public Builder withLinkSettings(LinkSettings paramLinkSettings)
    {
      linkSettings = paramLinkSettings;
      return this;
    }
    
    public Builder withMemberPolicy(MemberPolicy paramMemberPolicy)
    {
      super.withMemberPolicy(paramMemberPolicy);
      return this;
    }
    
    public Builder withSharedLinkPolicy(SharedLinkPolicy paramSharedLinkPolicy)
    {
      super.withSharedLinkPolicy(paramSharedLinkPolicy);
      return this;
    }
    
    public Builder withViewerInfoPolicy(ViewerInfoPolicy paramViewerInfoPolicy)
    {
      super.withViewerInfoPolicy(paramViewerInfoPolicy);
      return this;
    }
  }
  
  static class a
    extends StructSerializer<ShareFolderArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public ShareFolderArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
        Object localObject5 = localObject4;
        Object localObject6 = localObject5;
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
          } else if ("actions".equals(str2)) {
            localObject5 = (List)StoneSerializers.nullable(StoneSerializers.list(FolderAction.a.a)).deserialize(paramJsonParser);
          } else if ("link_settings".equals(str2)) {
            localObject6 = (LinkSettings)StoneSerializers.nullableStruct(LinkSettings.a.a).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new ShareFolderArg(str1, (AclUpdatePolicy)localObject1, localBoolean.booleanValue(), (MemberPolicy)localObject2, (SharedLinkPolicy)localObject3, (ViewerInfoPolicy)localObject4, (List)localObject5, (LinkSettings)localObject6);
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
    
    public void a(ShareFolderArg paramShareFolderArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
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
      if (a != null)
      {
        paramJsonGenerator.writeFieldName("actions");
        StoneSerializers.nullable(StoneSerializers.list(FolderAction.a.a)).serialize(a, paramJsonGenerator);
      }
      if (b != null)
      {
        paramJsonGenerator.writeFieldName("link_settings");
        StoneSerializers.nullableStruct(LinkSettings.a.a).serialize(b, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
