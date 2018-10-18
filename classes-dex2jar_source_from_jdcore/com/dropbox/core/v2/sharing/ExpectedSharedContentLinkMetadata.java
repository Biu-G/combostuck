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
import java.util.Date;
import java.util.List;

public class ExpectedSharedContentLinkMetadata
  extends SharedContentLinkMetadataBase
{
  public ExpectedSharedContentLinkMetadata(List<LinkAudience> paramList, LinkAudience paramLinkAudience, List<LinkPermission> paramList1, boolean paramBoolean)
  {
    this(paramList, paramLinkAudience, paramList1, paramBoolean, null, null, null);
  }
  
  public ExpectedSharedContentLinkMetadata(List<LinkAudience> paramList, LinkAudience paramLinkAudience, List<LinkPermission> paramList1, boolean paramBoolean, AccessLevel paramAccessLevel, AudienceRestrictingSharedFolder paramAudienceRestrictingSharedFolder, Date paramDate)
  {
    super(paramList, paramLinkAudience, paramList1, paramBoolean, paramAccessLevel, paramAudienceRestrictingSharedFolder, paramDate);
  }
  
  public static Builder newBuilder(List<LinkAudience> paramList, LinkAudience paramLinkAudience, List<LinkPermission> paramList1, boolean paramBoolean)
  {
    return new Builder(paramList, paramLinkAudience, paramList1, paramBoolean);
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
      paramObject = (ExpectedSharedContentLinkMetadata)paramObject;
      if (((audienceOptions == audienceOptions) || (audienceOptions.equals(audienceOptions))) && ((currentAudience == currentAudience) || (currentAudience.equals(currentAudience))) && ((linkPermissions == linkPermissions) || (linkPermissions.equals(linkPermissions))) && (passwordProtected == passwordProtected) && ((accessLevel == accessLevel) || ((accessLevel != null) && (accessLevel.equals(accessLevel)))) && ((audienceRestrictingSharedFolder == audienceRestrictingSharedFolder) || ((audienceRestrictingSharedFolder != null) && (audienceRestrictingSharedFolder.equals(audienceRestrictingSharedFolder)))))
      {
        if (expiry == expiry) {
          break label224;
        }
        if ((expiry != null) && (expiry.equals(expiry))) {
          return true;
        }
      }
      bool = false;
      label224:
      return bool;
    }
    return false;
  }
  
  public AccessLevel getAccessLevel()
  {
    return accessLevel;
  }
  
  public List<LinkAudience> getAudienceOptions()
  {
    return audienceOptions;
  }
  
  public AudienceRestrictingSharedFolder getAudienceRestrictingSharedFolder()
  {
    return audienceRestrictingSharedFolder;
  }
  
  public LinkAudience getCurrentAudience()
  {
    return currentAudience;
  }
  
  public Date getExpiry()
  {
    return expiry;
  }
  
  public List<LinkPermission> getLinkPermissions()
  {
    return linkPermissions;
  }
  
  public boolean getPasswordProtected()
  {
    return passwordProtected;
  }
  
  public int hashCode()
  {
    return getClass().toString().hashCode();
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
    extends SharedContentLinkMetadataBase.Builder
  {
    protected Builder(List<LinkAudience> paramList, LinkAudience paramLinkAudience, List<LinkPermission> paramList1, boolean paramBoolean)
    {
      super(paramLinkAudience, paramList1, paramBoolean);
    }
    
    public ExpectedSharedContentLinkMetadata build()
    {
      return new ExpectedSharedContentLinkMetadata(audienceOptions, currentAudience, linkPermissions, passwordProtected, accessLevel, audienceRestrictingSharedFolder, expiry);
    }
    
    public Builder withAccessLevel(AccessLevel paramAccessLevel)
    {
      super.withAccessLevel(paramAccessLevel);
      return this;
    }
    
    public Builder withAudienceRestrictingSharedFolder(AudienceRestrictingSharedFolder paramAudienceRestrictingSharedFolder)
    {
      super.withAudienceRestrictingSharedFolder(paramAudienceRestrictingSharedFolder);
      return this;
    }
    
    public Builder withExpiry(Date paramDate)
    {
      super.withExpiry(paramDate);
      return this;
    }
  }
  
  static class a
    extends StructSerializer<ExpectedSharedContentLinkMetadata>
  {
    public static final a a = new a();
    
    a() {}
    
    public ExpectedSharedContentLinkMetadata a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Boolean localBoolean = null;
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
        List localList = null;
        localObject1 = localList;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        Object localObject4 = localObject3;
        Object localObject5 = localObject4;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("audience_options".equals(str)) {
            localList = (List)StoneSerializers.list(LinkAudience.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("current_audience".equals(str)) {
            localObject1 = LinkAudience.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("link_permissions".equals(str)) {
            localObject2 = (List)StoneSerializers.list(LinkPermission.a.a).deserialize(paramJsonParser);
          } else if ("password_protected".equals(str)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("access_level".equals(str)) {
            localObject3 = (AccessLevel)StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("audience_restricting_shared_folder".equals(str)) {
            localObject4 = (AudienceRestrictingSharedFolder)StoneSerializers.nullableStruct(AudienceRestrictingSharedFolder.a.a).deserialize(paramJsonParser);
          } else if ("expiry".equals(str)) {
            localObject5 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localList != null)
        {
          if (localObject1 != null)
          {
            if (localObject2 != null)
            {
              if (localBoolean != null)
              {
                localObject1 = new ExpectedSharedContentLinkMetadata(localList, (LinkAudience)localObject1, (List)localObject2, localBoolean.booleanValue(), (AccessLevel)localObject3, (AudienceRestrictingSharedFolder)localObject4, (Date)localObject5);
                if (!paramBoolean) {
                  expectEndObject(paramJsonParser);
                }
                return localObject1;
              }
              throw new JsonParseException(paramJsonParser, "Required field \"password_protected\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"link_permissions\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"current_audience\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"audience_options\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ExpectedSharedContentLinkMetadata paramExpectedSharedContentLinkMetadata, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("audience_options");
      StoneSerializers.list(LinkAudience.Serializer.INSTANCE).serialize(audienceOptions, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("current_audience");
      LinkAudience.Serializer.INSTANCE.serialize(currentAudience, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("link_permissions");
      StoneSerializers.list(LinkPermission.a.a).serialize(linkPermissions, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("password_protected");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(passwordProtected), paramJsonGenerator);
      if (accessLevel != null)
      {
        paramJsonGenerator.writeFieldName("access_level");
        StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize(accessLevel, paramJsonGenerator);
      }
      if (audienceRestrictingSharedFolder != null)
      {
        paramJsonGenerator.writeFieldName("audience_restricting_shared_folder");
        StoneSerializers.nullableStruct(AudienceRestrictingSharedFolder.a.a).serialize(audienceRestrictingSharedFolder, paramJsonGenerator);
      }
      if (expiry != null)
      {
        paramJsonGenerator.writeFieldName("expiry");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(expiry, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
