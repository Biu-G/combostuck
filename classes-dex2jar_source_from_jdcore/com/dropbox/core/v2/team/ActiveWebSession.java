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

public class ActiveWebSession
  extends DeviceSession
{
  protected final String browser;
  protected final Date expires;
  protected final String os;
  protected final String userAgent;
  
  public ActiveWebSession(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this(paramString1, paramString2, paramString3, paramString4, null, null, null, null, null);
  }
  
  public ActiveWebSession(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, Date paramDate1, Date paramDate2, Date paramDate3)
  {
    super(paramString1, paramString5, paramString6, paramDate1, paramDate2);
    if (paramString2 != null)
    {
      userAgent = paramString2;
      if (paramString3 != null)
      {
        os = paramString3;
        if (paramString4 != null)
        {
          browser = paramString4;
          expires = LangUtil.truncateMillis(paramDate3);
          return;
        }
        throw new IllegalArgumentException("Required value for 'browser' is null");
      }
      throw new IllegalArgumentException("Required value for 'os' is null");
    }
    throw new IllegalArgumentException("Required value for 'userAgent' is null");
  }
  
  public static Builder newBuilder(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return new Builder(paramString1, paramString2, paramString3, paramString4);
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
      paramObject = (ActiveWebSession)paramObject;
      if (((sessionId == sessionId) || (sessionId.equals(sessionId))) && ((userAgent == userAgent) || (userAgent.equals(userAgent))) && ((os == os) || (os.equals(os))) && ((browser == browser) || (browser.equals(browser))) && ((ipAddress == ipAddress) || ((ipAddress != null) && (ipAddress.equals(ipAddress)))) && ((country == country) || ((country != null) && (country.equals(country)))) && ((created == created) || ((created != null) && (created.equals(created)))) && ((updated == updated) || ((updated != null) && (updated.equals(updated)))))
      {
        if (expires == expires) {
          break label298;
        }
        if ((expires != null) && (expires.equals(expires))) {
          return true;
        }
      }
      bool = false;
      label298:
      return bool;
    }
    return false;
  }
  
  public String getBrowser()
  {
    return browser;
  }
  
  public String getCountry()
  {
    return country;
  }
  
  public Date getCreated()
  {
    return created;
  }
  
  public Date getExpires()
  {
    return expires;
  }
  
  public String getIpAddress()
  {
    return ipAddress;
  }
  
  public String getOs()
  {
    return os;
  }
  
  public String getSessionId()
  {
    return sessionId;
  }
  
  public Date getUpdated()
  {
    return updated;
  }
  
  public String getUserAgent()
  {
    return userAgent;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { userAgent, os, browser, expires });
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
    protected final String browser;
    protected Date expires;
    protected final String os;
    protected final String userAgent;
    
    protected Builder(String paramString1, String paramString2, String paramString3, String paramString4)
    {
      super();
      if (paramString2 != null)
      {
        userAgent = paramString2;
        if (paramString3 != null)
        {
          os = paramString3;
          if (paramString4 != null)
          {
            browser = paramString4;
            expires = null;
            return;
          }
          throw new IllegalArgumentException("Required value for 'browser' is null");
        }
        throw new IllegalArgumentException("Required value for 'os' is null");
      }
      throw new IllegalArgumentException("Required value for 'userAgent' is null");
    }
    
    public ActiveWebSession build()
    {
      return new ActiveWebSession(sessionId, userAgent, os, browser, ipAddress, country, created, updated, expires);
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
    
    public Builder withExpires(Date paramDate)
    {
      expires = LangUtil.truncateMillis(paramDate);
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
    extends StructSerializer<ActiveWebSession>
  {
    public static final a a = new a();
    
    a() {}
    
    public ActiveWebSession a(JsonParser paramJsonParser, boolean paramBoolean)
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
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("session_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("user_agent".equals(str2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("os".equals(str2)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("browser".equals(str2)) {
            localObject3 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("ip_address".equals(str2)) {
            localObject4 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("country".equals(str2)) {
            localObject5 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("created".equals(str2)) {
            localObject6 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else if ("updated".equals(str2)) {
            localObject7 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else if ("expires".equals(str2)) {
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
                localObject1 = new ActiveWebSession(str1, (String)localObject1, (String)localObject2, (String)localObject3, (String)localObject4, (String)localObject5, (Date)localObject6, (Date)localObject7, (Date)localObject8);
                if (!paramBoolean) {
                  expectEndObject(paramJsonParser);
                }
                return localObject1;
              }
              throw new JsonParseException(paramJsonParser, "Required field \"browser\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"os\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"user_agent\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"session_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ActiveWebSession paramActiveWebSession, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("session_id");
      StoneSerializers.string().serialize(sessionId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("user_agent");
      StoneSerializers.string().serialize(userAgent, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("os");
      StoneSerializers.string().serialize(os, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("browser");
      StoneSerializers.string().serialize(browser, paramJsonGenerator);
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
      if (expires != null)
      {
        paramJsonGenerator.writeFieldName("expires");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(expires, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
