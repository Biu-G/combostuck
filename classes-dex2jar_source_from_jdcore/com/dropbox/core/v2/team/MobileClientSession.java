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

public class MobileClientSession
  extends DeviceSession
{
  protected final MobileClientPlatform clientType;
  protected final String clientVersion;
  protected final String deviceName;
  protected final String lastCarrier;
  protected final String osVersion;
  
  public MobileClientSession(String paramString1, String paramString2, MobileClientPlatform paramMobileClientPlatform)
  {
    this(paramString1, paramString2, paramMobileClientPlatform, null, null, null, null, null, null, null);
  }
  
  public MobileClientSession(String paramString1, String paramString2, MobileClientPlatform paramMobileClientPlatform, String paramString3, String paramString4, Date paramDate1, Date paramDate2, String paramString5, String paramString6, String paramString7)
  {
    super(paramString1, paramString3, paramString4, paramDate1, paramDate2);
    if (paramString2 != null)
    {
      deviceName = paramString2;
      if (paramMobileClientPlatform != null)
      {
        clientType = paramMobileClientPlatform;
        clientVersion = paramString5;
        osVersion = paramString6;
        lastCarrier = paramString7;
        return;
      }
      throw new IllegalArgumentException("Required value for 'clientType' is null");
    }
    throw new IllegalArgumentException("Required value for 'deviceName' is null");
  }
  
  public static Builder newBuilder(String paramString1, String paramString2, MobileClientPlatform paramMobileClientPlatform)
  {
    return new Builder(paramString1, paramString2, paramMobileClientPlatform);
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
      paramObject = (MobileClientSession)paramObject;
      if (((sessionId == sessionId) || (sessionId.equals(sessionId))) && ((deviceName == deviceName) || (deviceName.equals(deviceName))) && ((clientType == clientType) || (clientType.equals(clientType))) && ((ipAddress == ipAddress) || ((ipAddress != null) && (ipAddress.equals(ipAddress)))) && ((country == country) || ((country != null) && (country.equals(country)))) && ((created == created) || ((created != null) && (created.equals(created)))) && ((updated == updated) || ((updated != null) && (updated.equals(updated)))) && ((clientVersion == clientVersion) || ((clientVersion != null) && (clientVersion.equals(clientVersion)))) && ((osVersion == osVersion) || ((osVersion != null) && (osVersion.equals(osVersion)))))
      {
        if (lastCarrier == lastCarrier) {
          break label337;
        }
        if ((lastCarrier != null) && (lastCarrier.equals(lastCarrier))) {
          return true;
        }
      }
      bool = false;
      label337:
      return bool;
    }
    return false;
  }
  
  public MobileClientPlatform getClientType()
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
  
  public String getDeviceName()
  {
    return deviceName;
  }
  
  public String getIpAddress()
  {
    return ipAddress;
  }
  
  public String getLastCarrier()
  {
    return lastCarrier;
  }
  
  public String getOsVersion()
  {
    return osVersion;
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
    int i = Arrays.hashCode(new Object[] { deviceName, clientType, clientVersion, osVersion, lastCarrier });
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
    protected final MobileClientPlatform clientType;
    protected String clientVersion;
    protected final String deviceName;
    protected String lastCarrier;
    protected String osVersion;
    
    protected Builder(String paramString1, String paramString2, MobileClientPlatform paramMobileClientPlatform)
    {
      super();
      if (paramString2 != null)
      {
        deviceName = paramString2;
        if (paramMobileClientPlatform != null)
        {
          clientType = paramMobileClientPlatform;
          clientVersion = null;
          osVersion = null;
          lastCarrier = null;
          return;
        }
        throw new IllegalArgumentException("Required value for 'clientType' is null");
      }
      throw new IllegalArgumentException("Required value for 'deviceName' is null");
    }
    
    public MobileClientSession build()
    {
      return new MobileClientSession(sessionId, deviceName, clientType, ipAddress, country, created, updated, clientVersion, osVersion, lastCarrier);
    }
    
    public Builder withClientVersion(String paramString)
    {
      clientVersion = paramString;
      return this;
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
    
    public Builder withLastCarrier(String paramString)
    {
      lastCarrier = paramString;
      return this;
    }
    
    public Builder withOsVersion(String paramString)
    {
      osVersion = paramString;
      return this;
    }
    
    public Builder withUpdated(Date paramDate)
    {
      super.withUpdated(paramDate);
      return this;
    }
  }
  
  static class a
    extends StructSerializer<MobileClientSession>
  {
    public static final a a = new a();
    
    a() {}
    
    public MobileClientSession a(JsonParser paramJsonParser, boolean paramBoolean)
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
        Object localObject7 = localObject6;
        Object localObject8 = localObject7;
        Object localObject9 = localObject8;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("session_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("device_name".equals(str2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("client_type".equals(str2)) {
            localObject2 = MobileClientPlatform.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("ip_address".equals(str2)) {
            localObject3 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("country".equals(str2)) {
            localObject4 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("created".equals(str2)) {
            localObject5 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else if ("updated".equals(str2)) {
            localObject6 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else if ("client_version".equals(str2)) {
            localObject7 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("os_version".equals(str2)) {
            localObject8 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("last_carrier".equals(str2)) {
            localObject9 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
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
              localObject1 = new MobileClientSession(str1, (String)localObject1, (MobileClientPlatform)localObject2, (String)localObject3, (String)localObject4, (Date)localObject5, (Date)localObject6, (String)localObject7, (String)localObject8, (String)localObject9);
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"client_type\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"device_name\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"session_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(MobileClientSession paramMobileClientSession, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("session_id");
      StoneSerializers.string().serialize(sessionId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("device_name");
      StoneSerializers.string().serialize(deviceName, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("client_type");
      MobileClientPlatform.Serializer.INSTANCE.serialize(clientType, paramJsonGenerator);
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
      if (clientVersion != null)
      {
        paramJsonGenerator.writeFieldName("client_version");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(clientVersion, paramJsonGenerator);
      }
      if (osVersion != null)
      {
        paramJsonGenerator.writeFieldName("os_version");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(osVersion, paramJsonGenerator);
      }
      if (lastCarrier != null)
      {
        paramJsonGenerator.writeFieldName("last_carrier");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(lastCarrier, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
