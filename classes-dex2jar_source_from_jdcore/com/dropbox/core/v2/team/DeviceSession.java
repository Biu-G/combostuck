package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

public class DeviceSession
{
  protected final String country;
  protected final Date created;
  protected final String ipAddress;
  protected final String sessionId;
  protected final Date updated;
  
  public DeviceSession(String paramString)
  {
    this(paramString, null, null, null, null);
  }
  
  public DeviceSession(String paramString1, String paramString2, String paramString3, Date paramDate1, Date paramDate2)
  {
    if (paramString1 != null)
    {
      sessionId = paramString1;
      ipAddress = paramString2;
      country = paramString3;
      created = LangUtil.truncateMillis(paramDate1);
      updated = LangUtil.truncateMillis(paramDate2);
      return;
    }
    throw new IllegalArgumentException("Required value for 'sessionId' is null");
  }
  
  public static Builder newBuilder(String paramString)
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
      paramObject = (DeviceSession)paramObject;
      if (((sessionId == sessionId) || (sessionId.equals(sessionId))) && ((ipAddress == ipAddress) || ((ipAddress != null) && (ipAddress.equals(ipAddress)))) && ((country == country) || ((country != null) && (country.equals(country)))) && ((created == created) || ((created != null) && (created.equals(created)))))
      {
        if (updated == updated) {
          break label191;
        }
        if ((updated != null) && (updated.equals(updated))) {
          return true;
        }
      }
      bool = false;
      label191:
      return bool;
    }
    return false;
  }
  
  public String getCountry()
  {
    return country;
  }
  
  public Date getCreated()
  {
    return created;
  }
  
  public String getIpAddress()
  {
    return ipAddress;
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
    return Arrays.hashCode(new Object[] { sessionId, ipAddress, country, created, updated });
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
    protected String country;
    protected Date created;
    protected String ipAddress;
    protected final String sessionId;
    protected Date updated;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        sessionId = paramString;
        ipAddress = null;
        country = null;
        created = null;
        updated = null;
        return;
      }
      throw new IllegalArgumentException("Required value for 'sessionId' is null");
    }
    
    public DeviceSession build()
    {
      return new DeviceSession(sessionId, ipAddress, country, created, updated);
    }
    
    public Builder withCountry(String paramString)
    {
      country = paramString;
      return this;
    }
    
    public Builder withCreated(Date paramDate)
    {
      created = LangUtil.truncateMillis(paramDate);
      return this;
    }
    
    public Builder withIpAddress(String paramString)
    {
      ipAddress = paramString;
      return this;
    }
    
    public Builder withUpdated(Date paramDate)
    {
      updated = LangUtil.truncateMillis(paramDate);
      return this;
    }
  }
  
  private static class a
    extends StructSerializer<DeviceSession>
  {
    public static final a a = new a();
    
    private a() {}
    
    public DeviceSession a(JsonParser paramJsonParser, boolean paramBoolean)
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
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("session_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("ip_address".equals(str2)) {
            localObject1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("country".equals(str2)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("created".equals(str2)) {
            localObject3 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else if ("updated".equals(str2)) {
            localObject4 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new DeviceSession(str1, (String)localObject1, (String)localObject2, (Date)localObject3, (Date)localObject4);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"session_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(DeviceSession paramDeviceSession, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("session_id");
      StoneSerializers.string().serialize(sessionId, paramJsonGenerator);
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
