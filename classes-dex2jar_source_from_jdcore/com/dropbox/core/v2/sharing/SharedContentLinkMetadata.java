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
import java.util.Date;
import java.util.List;

public class SharedContentLinkMetadata
  extends SharedContentLinkMetadataBase
{
  protected final AudienceExceptions audienceExceptions;
  protected final String url;
  
  public SharedContentLinkMetadata(List<LinkAudience> paramList, LinkAudience paramLinkAudience, List<LinkPermission> paramList1, boolean paramBoolean, String paramString)
  {
    this(paramList, paramLinkAudience, paramList1, paramBoolean, paramString, null, null, null, null);
  }
  
  public SharedContentLinkMetadata(List<LinkAudience> paramList, LinkAudience paramLinkAudience, List<LinkPermission> paramList1, boolean paramBoolean, String paramString, AccessLevel paramAccessLevel, AudienceRestrictingSharedFolder paramAudienceRestrictingSharedFolder, Date paramDate, AudienceExceptions paramAudienceExceptions)
  {
    super(paramList, paramLinkAudience, paramList1, paramBoolean, paramAccessLevel, paramAudienceRestrictingSharedFolder, paramDate);
    audienceExceptions = paramAudienceExceptions;
    if (paramString != null)
    {
      url = paramString;
      return;
    }
    throw new IllegalArgumentException("Required value for 'url' is null");
  }
  
  public static Builder newBuilder(List<LinkAudience> paramList, LinkAudience paramLinkAudience, List<LinkPermission> paramList1, boolean paramBoolean, String paramString)
  {
    return new Builder(paramList, paramLinkAudience, paramList1, paramBoolean, paramString);
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
      paramObject = (SharedContentLinkMetadata)paramObject;
      if (((audienceOptions == audienceOptions) || (audienceOptions.equals(audienceOptions))) && ((currentAudience == currentAudience) || (currentAudience.equals(currentAudience))) && ((linkPermissions == linkPermissions) || (linkPermissions.equals(linkPermissions))) && (passwordProtected == passwordProtected) && ((url == url) || (url.equals(url))) && ((accessLevel == accessLevel) || ((accessLevel != null) && (accessLevel.equals(accessLevel)))) && ((audienceRestrictingSharedFolder == audienceRestrictingSharedFolder) || ((audienceRestrictingSharedFolder != null) && (audienceRestrictingSharedFolder.equals(audienceRestrictingSharedFolder)))) && ((expiry == expiry) || ((expiry != null) && (expiry.equals(expiry)))))
      {
        if (audienceExceptions == audienceExceptions) {
          break label281;
        }
        if ((audienceExceptions != null) && (audienceExceptions.equals(audienceExceptions))) {
          return true;
        }
      }
      bool = false;
      label281:
      return bool;
    }
    return false;
  }
  
  public AccessLevel getAccessLevel()
  {
    return accessLevel;
  }
  
  public AudienceExceptions getAudienceExceptions()
  {
    return audienceExceptions;
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
  
  public String getUrl()
  {
    return url;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { audienceExceptions, url });
    return super.hashCode() * 31 + i;
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
    protected AudienceExceptions audienceExceptions;
    protected final String url;
    
    protected Builder(List<LinkAudience> paramList, LinkAudience paramLinkAudience, List<LinkPermission> paramList1, boolean paramBoolean, String paramString)
    {
      super(paramLinkAudience, paramList1, paramBoolean);
      if (paramString != null)
      {
        url = paramString;
        audienceExceptions = null;
        return;
      }
      throw new IllegalArgumentException("Required value for 'url' is null");
    }
    
    public SharedContentLinkMetadata build()
    {
      return new SharedContentLinkMetadata(audienceOptions, currentAudience, linkPermissions, passwordProtected, url, accessLevel, audienceRestrictingSharedFolder, expiry, audienceExceptions);
    }
    
    public Builder withAccessLevel(AccessLevel paramAccessLevel)
    {
      super.withAccessLevel(paramAccessLevel);
      return this;
    }
    
    public Builder withAudienceExceptions(AudienceExceptions paramAudienceExceptions)
    {
      audienceExceptions = paramAudienceExceptions;
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
    extends StructSerializer<SharedContentLinkMetadata>
  {
    public static final a a = new a();
    
    a() {}
    
    public SharedContentLinkMetadata a(JsonParser paramJsonParser, boolean paramBoolean)
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
        Object localObject6 = localObject5;
        Object localObject7 = localObject6;
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
          } else if ("url".equals(str)) {
            localObject3 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("access_level".equals(str)) {
            localObject4 = (AccessLevel)StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("audience_restricting_shared_folder".equals(str)) {
            localObject5 = (AudienceRestrictingSharedFolder)StoneSerializers.nullableStruct(AudienceRestrictingSharedFolder.a.a).deserialize(paramJsonParser);
          } else if ("expiry".equals(str)) {
            localObject6 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else if ("audience_exceptions".equals(str)) {
            localObject7 = (AudienceExceptions)StoneSerializers.nullableStruct(AudienceExceptions.a.a).deserialize(paramJsonParser);
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
                if (localObject3 != null)
                {
                  localObject1 = new SharedContentLinkMetadata(localList, (LinkAudience)localObject1, (List)localObject2, localBoolean.booleanValue(), (String)localObject3, (AccessLevel)localObject4, (AudienceRestrictingSharedFolder)localObject5, (Date)localObject6, (AudienceExceptions)localObject7);
                  if (!paramBoolean) {
                    expectEndObject(paramJsonParser);
                  }
                  return localObject1;
                }
                throw new JsonParseException(paramJsonParser, "Required field \"url\" missing.");
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
    
    public void a(SharedContentLinkMetadata paramSharedContentLinkMetadata, JsonGenerator paramJsonGenerator, boolean paramBoolean)
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
      paramJsonGenerator.writeFieldName("url");
      StoneSerializers.string().serialize(url, paramJsonGenerator);
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
      if (audienceExceptions != null)
      {
        paramJsonGenerator.writeFieldName("audience_exceptions");
        StoneSerializers.nullableStruct(AudienceExceptions.a.a).serialize(audienceExceptions, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
