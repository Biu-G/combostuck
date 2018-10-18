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
import java.util.regex.Pattern;

class UpdateFolderPolicyArg
{
  protected final String a;
  protected final MemberPolicy b;
  protected final AclUpdatePolicy c;
  protected final ViewerInfoPolicy d;
  protected final SharedLinkPolicy e;
  protected final LinkSettings f;
  protected final List<FolderAction> g;
  
  public UpdateFolderPolicyArg(String paramString)
  {
    this(paramString, null, null, null, null, null, null);
  }
  
  public UpdateFolderPolicyArg(String paramString, MemberPolicy paramMemberPolicy, AclUpdatePolicy paramAclUpdatePolicy, ViewerInfoPolicy paramViewerInfoPolicy, SharedLinkPolicy paramSharedLinkPolicy, LinkSettings paramLinkSettings, List<FolderAction> paramList)
  {
    if (paramString != null)
    {
      if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString))
      {
        a = paramString;
        b = paramMemberPolicy;
        c = paramAclUpdatePolicy;
        d = paramViewerInfoPolicy;
        e = paramSharedLinkPolicy;
        f = paramLinkSettings;
        if (paramList != null)
        {
          paramString = paramList.iterator();
          while (paramString.hasNext()) {
            if ((FolderAction)paramString.next() == null) {
              throw new IllegalArgumentException("An item in list 'actions' is null");
            }
          }
        }
        g = paramList;
        return;
      }
      throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
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
      paramObject = (UpdateFolderPolicyArg)paramObject;
      if (((a == a) || (a.equals(a))) && ((b == b) || ((b != null) && (b.equals(b)))) && ((c == c) || ((c != null) && (c.equals(c)))) && ((d == d) || ((d != null) && (d.equals(d)))) && ((e == e) || ((e != null) && (e.equals(e)))) && ((f == f) || ((f != null) && (f.equals(f)))))
      {
        if (g == g) {
          break label257;
        }
        if ((g != null) && (g.equals(g))) {
          return true;
        }
      }
      bool = false;
      label257:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c, d, e, f, g });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected AclUpdatePolicy aclUpdatePolicy;
    protected List<FolderAction> actions;
    protected LinkSettings linkSettings;
    protected MemberPolicy memberPolicy;
    protected final String sharedFolderId;
    protected SharedLinkPolicy sharedLinkPolicy;
    protected ViewerInfoPolicy viewerInfoPolicy;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString))
        {
          sharedFolderId = paramString;
          memberPolicy = null;
          aclUpdatePolicy = null;
          viewerInfoPolicy = null;
          sharedLinkPolicy = null;
          linkSettings = null;
          actions = null;
          return;
        }
        throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
      }
      throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
    }
    
    public UpdateFolderPolicyArg build()
    {
      return new UpdateFolderPolicyArg(sharedFolderId, memberPolicy, aclUpdatePolicy, viewerInfoPolicy, sharedLinkPolicy, linkSettings, actions);
    }
    
    public Builder withAclUpdatePolicy(AclUpdatePolicy paramAclUpdatePolicy)
    {
      aclUpdatePolicy = paramAclUpdatePolicy;
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
    
    public Builder withLinkSettings(LinkSettings paramLinkSettings)
    {
      linkSettings = paramLinkSettings;
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
  
  static class a
    extends StructSerializer<UpdateFolderPolicyArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public UpdateFolderPolicyArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("shared_folder_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("member_policy".equals(str2)) {
            localObject1 = (MemberPolicy)StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("acl_update_policy".equals(str2)) {
            localObject2 = (AclUpdatePolicy)StoneSerializers.nullable(AclUpdatePolicy.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("viewer_info_policy".equals(str2)) {
            localObject3 = (ViewerInfoPolicy)StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("shared_link_policy".equals(str2)) {
            localObject4 = (SharedLinkPolicy)StoneSerializers.nullable(SharedLinkPolicy.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("link_settings".equals(str2)) {
            localObject5 = (LinkSettings)StoneSerializers.nullableStruct(LinkSettings.a.a).deserialize(paramJsonParser);
          } else if ("actions".equals(str2)) {
            localObject6 = (List)StoneSerializers.nullable(StoneSerializers.list(FolderAction.a.a)).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new UpdateFolderPolicyArg(str1, (MemberPolicy)localObject1, (AclUpdatePolicy)localObject2, (ViewerInfoPolicy)localObject3, (SharedLinkPolicy)localObject4, (LinkSettings)localObject5, (List)localObject6);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"shared_folder_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(UpdateFolderPolicyArg paramUpdateFolderPolicyArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("shared_folder_id");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      if (b != null)
      {
        paramJsonGenerator.writeFieldName("member_policy");
        StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).serialize(b, paramJsonGenerator);
      }
      if (c != null)
      {
        paramJsonGenerator.writeFieldName("acl_update_policy");
        StoneSerializers.nullable(AclUpdatePolicy.Serializer.INSTANCE).serialize(c, paramJsonGenerator);
      }
      if (d != null)
      {
        paramJsonGenerator.writeFieldName("viewer_info_policy");
        StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).serialize(d, paramJsonGenerator);
      }
      if (e != null)
      {
        paramJsonGenerator.writeFieldName("shared_link_policy");
        StoneSerializers.nullable(SharedLinkPolicy.Serializer.INSTANCE).serialize(e, paramJsonGenerator);
      }
      if (f != null)
      {
        paramJsonGenerator.writeFieldName("link_settings");
        StoneSerializers.nullableStruct(LinkSettings.a.a).serialize(f, paramJsonGenerator);
      }
      if (g != null)
      {
        paramJsonGenerator.writeFieldName("actions");
        StoneSerializers.nullable(StoneSerializers.list(FolderAction.a.a)).serialize(g, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
