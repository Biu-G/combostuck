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

public class LinkSettings
{
  protected final AccessLevel accessLevel;
  protected final LinkAudience audience;
  protected final LinkExpiry expiry;
  protected final LinkPassword password;
  
  public LinkSettings()
  {
    this(null, null, null, null);
  }
  
  public LinkSettings(AccessLevel paramAccessLevel, LinkAudience paramLinkAudience, LinkExpiry paramLinkExpiry, LinkPassword paramLinkPassword)
  {
    accessLevel = paramAccessLevel;
    audience = paramLinkAudience;
    expiry = paramLinkExpiry;
    password = paramLinkPassword;
  }
  
  public static Builder newBuilder()
  {
    return new Builder();
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
      paramObject = (LinkSettings)paramObject;
      if (((accessLevel == accessLevel) || ((accessLevel != null) && (accessLevel.equals(accessLevel)))) && ((audience == audience) || ((audience != null) && (audience.equals(audience)))) && ((expiry == expiry) || ((expiry != null) && (expiry.equals(expiry)))))
      {
        if (password == password) {
          break label166;
        }
        if ((password != null) && (password.equals(password))) {
          return true;
        }
      }
      bool = false;
      label166:
      return bool;
    }
    return false;
  }
  
  public AccessLevel getAccessLevel()
  {
    return accessLevel;
  }
  
  public LinkAudience getAudience()
  {
    return audience;
  }
  
  public LinkExpiry getExpiry()
  {
    return expiry;
  }
  
  public LinkPassword getPassword()
  {
    return password;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { accessLevel, audience, expiry, password });
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
    protected AccessLevel accessLevel = null;
    protected LinkAudience audience = null;
    protected LinkExpiry expiry = null;
    protected LinkPassword password = null;
    
    protected Builder() {}
    
    public LinkSettings build()
    {
      return new LinkSettings(accessLevel, audience, expiry, password);
    }
    
    public Builder withAccessLevel(AccessLevel paramAccessLevel)
    {
      accessLevel = paramAccessLevel;
      return this;
    }
    
    public Builder withAudience(LinkAudience paramLinkAudience)
    {
      audience = paramLinkAudience;
      return this;
    }
    
    public Builder withExpiry(LinkExpiry paramLinkExpiry)
    {
      expiry = paramLinkExpiry;
      return this;
    }
    
    public Builder withPassword(LinkPassword paramLinkPassword)
    {
      password = paramLinkPassword;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<LinkSettings>
  {
    public static final a a = new a();
    
    a() {}
    
    public LinkSettings a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      AccessLevel localAccessLevel = null;
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
        LinkAudience localLinkAudience = null;
        localObject1 = localLinkAudience;
        localObject2 = localObject1;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("access_level".equals(str)) {
            localAccessLevel = (AccessLevel)StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("audience".equals(str)) {
            localLinkAudience = (LinkAudience)StoneSerializers.nullable(LinkAudience.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("expiry".equals(str)) {
            localObject1 = (LinkExpiry)StoneSerializers.nullable(LinkExpiry.a.a).deserialize(paramJsonParser);
          } else if ("password".equals(str)) {
            localObject2 = (LinkPassword)StoneSerializers.nullable(LinkPassword.a.a).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        localObject1 = new LinkSettings(localAccessLevel, localLinkAudience, (LinkExpiry)localObject1, (LinkPassword)localObject2);
        if (!paramBoolean) {
          expectEndObject(paramJsonParser);
        }
        return localObject1;
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(LinkSettings paramLinkSettings, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      if (accessLevel != null)
      {
        paramJsonGenerator.writeFieldName("access_level");
        StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize(accessLevel, paramJsonGenerator);
      }
      if (audience != null)
      {
        paramJsonGenerator.writeFieldName("audience");
        StoneSerializers.nullable(LinkAudience.Serializer.INSTANCE).serialize(audience, paramJsonGenerator);
      }
      if (expiry != null)
      {
        paramJsonGenerator.writeFieldName("expiry");
        StoneSerializers.nullable(LinkExpiry.a.a).serialize(expiry, paramJsonGenerator);
      }
      if (password != null)
      {
        paramJsonGenerator.writeFieldName("password");
        StoneSerializers.nullable(LinkPassword.a.a).serialize(password, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
