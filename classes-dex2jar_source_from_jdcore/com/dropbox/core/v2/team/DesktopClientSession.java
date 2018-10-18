package com.dropbox.core.v2.team;

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

public class DesktopClientSession
  extends DeviceSession
{
  protected final DesktopPlatform clientType;
  protected final String clientVersion;
  protected final String hostName;
  protected final boolean isDeleteOnUnlinkSupported;
  protected final String platform;
  
  public DesktopClientSession(String paramString1, String paramString2, DesktopPlatform paramDesktopPlatform, String paramString3, String paramString4, boolean paramBoolean)
  {
    this(paramString1, paramString2, paramDesktopPlatform, paramString3, paramString4, paramBoolean, null, null, null, null);
  }
  
  public DesktopClientSession(String paramString1, String paramString2, DesktopPlatform paramDesktopPlatform, String paramString3, String paramString4, boolean paramBoolean, String paramString5, String paramString6, Date paramDate1, Date paramDate2)
  {
    super(paramString1, paramString5, paramString6, paramDate1, paramDate2);
    if (paramString2 != null)
    {
      hostName = paramString2;
      if (paramDesktopPlatform != null)
      {
        clientType = paramDesktopPlatform;
        if (paramString3 != null)
        {
          clientVersion = paramString3;
          if (paramString4 != null)
          {
            platform = paramString4;
            isDeleteOnUnlinkSupported = paramBoolean;
            return;
          }
          throw new IllegalArgumentException("Required value for 'platform' is null");
        }
        throw new IllegalArgumentException("Required value for 'clientVersion' is null");
      }
      throw new IllegalArgumentException("Required value for 'clientType' is null");
    }
    throw new IllegalArgumentException("Required value for 'hostName' is null");
  }
  
  public static Builder newBuilder(String paramString1, String paramString2, DesktopPlatform paramDesktopPlatform, String paramString3, String paramString4, boolean paramBoolean)
  {
    return new Builder(paramString1, paramString2, paramDesktopPlatform, paramString3, paramString4, paramBoolean);
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
      paramObject = (DesktopClientSession)paramObject;
      if (((sessionId == sessionId) || (sessionId.equals(sessionId))) && ((hostName == hostName) || (hostName.equals(hostName))) && ((clientType == clientType) || (clientType.equals(clientType))) && ((clientVersion == clientVersion) || (clientVersion.equals(clientVersion))) && ((platform == platform) || (platform.equals(platform))) && (isDeleteOnUnlinkSupported == isDeleteOnUnlinkSupported) && ((ipAddress == ipAddress) || ((ipAddress != null) && (ipAddress.equals(ipAddress)))) && ((country == country) || ((country != null) && (country.equals(country)))) && ((created == created) || ((created != null) && (created.equals(created)))))
      {
        if (updated == updated) {
          break label302;
        }
        if ((updated != null) && (updated.equals(updated))) {
          return true;
        }
      }
      bool = false;
      label302:
      return bool;
    }
    return false;
  }
  
  public DesktopPlatform getClientType()
  {
    return clientType;
  }
  
  public String getClientVersion()
  {
    return clientVersion;
  }
  
  public String getCountry()
  {
    return country;
  }
  
  public Date getCreated()
  {
    return created;
  }
  
  public String getHostName()
  {
    return hostName;
  }
  
  public String getIpAddress()
  {
    return ipAddress;
  }
  
  public boolean getIsDeleteOnUnlinkSupported()
  {
    return isDeleteOnUnlinkSupported;
  }
  
  public String getPlatform()
  {
    return platform;
  }
  
  public String getSessionId()
  {
    return sessionId;
  }
  
  public Date getUpdated()
  {
    return updated;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { hostName, clientType, clientVersion, platform, Boolean.valueOf(isDeleteOnUnlinkSupported) });
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
    extends DeviceSession.Builder
  {
    protected final DesktopPlatform clientType;
    protected final String clientVersion;
    protected final String hostName;
    protected final boolean isDeleteOnUnlinkSupported;
    protected final String platform;
    
    protected Builder(String paramString1, String paramString2, DesktopPlatform paramDesktopPlatform, String paramString3, String paramString4, boolean paramBoolean)
    {
      super();
      if (paramString2 != null)
      {
        hostName = paramString2;
        if (paramDesktopPlatform != null)
        {
          clientType = paramDesktopPlatform;
          if (paramString3 != null)
          {
            clientVersion = paramString3;
            if (paramString4 != null)
            {
              platform = paramString4;
              isDeleteOnUnlinkSupported = paramBoolean;
              return;
            }
            throw new IllegalArgumentException("Required value for 'platform' is null");
          }
          throw new IllegalArgumentException("Required value for 'clientVersion' is null");
        }
        throw new IllegalArgumentException("Required value for 'clientType' is null");
      }
      throw new IllegalArgumentException("Required value for 'hostName' is null");
    }
    
    public DesktopClientSession build()
    {
      return new DesktopClientSession(sessionId, hostName, clientType, clientVersion, platform, isDeleteOnUnlinkSupported, ipAddress, country, created, updated);
    }
    
    public Builder withCountry(String paramString)
    {
      super.withCountry(paramString);
      return this;
    }
    
    public Builder withCreated(Date paramDate)
    {
      super.withCreated(paramDate);
      return this;
    }
    
    public Builder withIpAddress(String paramString)
    {
      super.withIpAddress(paramString);
      return this;
    }
    
    public Builder withUpdated(Date paramDate)
    {
      super.withUpdated(paramDate);
      return this;
    }
  }
  
  static class a
    extends StructSerializer<DesktopClientSession>
  {
    public static final a a = new a();
    
    a() {}
    
    public DesktopClientSession a(JsonParser paramJsonParser, boolean paramBoolean)
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
        String str1 = null;
        localObject1 = str1;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        Object localObject4 = localObject3;
        Object localObject5 = localObject4;
        Object localObject6 = localObject5;
        Object localObject7 = localObject6;
        Object localObject8 = localObject7;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("session_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("host_name".equals(str2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("client_type".equals(str2)) {
            localObject2 = DesktopPlatform.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("client_version".equals(str2)) {
            localObject3 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("platform".equals(str2)) {
            localObject4 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("is_delete_on_unlink_supported".equals(str2)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("ip_address".equals(str2)) {
            localObject5 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("country".equals(str2)) {
            localObject6 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("created".equals(str2)) {
            localObject7 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else if ("updated".equals(str2)) {
            localObject8 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject1 != null)
          {
            if (localObject2 != null)
            {
              if (localObject3 != null)
              {
                if (localObject4 != null)
                {
                  if (localBoolean != null)
                  {
                    localObject1 = new DesktopClientSession(str1, (String)localObject1, (DesktopPlatform)localObject2, (String)localObject3, (String)localObject4, localBoolean.booleanValue(), (String)localObject5, (String)localObject6, (Date)localObject7, (Date)localObject8);
                    if (!paramBoolean) {
                      expectEndObject(paramJsonParser);
                    }
                    return localObject1;
                  }
                  throw new JsonParseException(paramJsonParser, "Required field \"is_delete_on_unlink_supported\" missing.");
                }
                throw new JsonParseException(paramJsonParser, "Required field \"platform\" missing.");
              }
              throw new JsonParseException(paramJsonParser, "Required field \"client_version\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"client_type\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"host_name\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"session_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(DesktopClientSession paramDesktopClientSession, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("session_id");
      StoneSerializers.string().serialize(sessionId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("host_name");
      StoneSerializers.string().serialize(hostName, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("client_type");
      DesktopPlatform.Serializer.INSTANCE.serialize(clientType, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("client_version");
      StoneSerializers.string().serialize(clientVersion, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("platform");
      StoneSerializers.string().serialize(platform, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("is_delete_on_unlink_supported");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(isDeleteOnUnlinkSupported), paramJsonGenerator);
      if (ipAddress != null)
      {
        paramJsonGenerator.writeFieldName("ip_address");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(ipAddress, paramJsonGenerator);
      }
      if (country != null)
      {
        paramJsonGenerator.writeFieldName("country");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(country, paramJsonGenerator);
      }
      if (created != null)
      {
        paramJsonGenerator.writeFieldName("created");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(created, paramJsonGenerator);
      }
      if (updated != null)
      {
        paramJsonGenerator.writeFieldName("updated");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(updated, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
