package com.dropbox.core.v2.sharing;

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

public class SharedLinkSettings
{
  protected final Date expires;
  protected final String linkPassword;
  protected final RequestedVisibility requestedVisibility;
  
  public SharedLinkSettings()
  {
    this(null, null, null);
  }
  
  public SharedLinkSettings(RequestedVisibility paramRequestedVisibility, String paramString, Date paramDate)
  {
    requestedVisibility = paramRequestedVisibility;
    linkPassword = paramString;
    expires = LangUtil.truncateMillis(paramDate);
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
      paramObject = (SharedLinkSettings)paramObject;
      if (((requestedVisibility == requestedVisibility) || ((requestedVisibility != null) && (requestedVisibility.equals(requestedVisibility)))) && ((linkPassword == linkPassword) || ((linkPassword != null) && (linkPassword.equals(linkPassword)))))
      {
        if (expires == expires) {
          break label134;
        }
        if ((expires != null) && (expires.equals(expires))) {
          return true;
        }
      }
      bool = false;
      label134:
      return bool;
    }
    return false;
  }
  
  public Date getExpires()
  {
    return expires;
  }
  
  public String getLinkPassword()
  {
    return linkPassword;
  }
  
  public RequestedVisibility getRequestedVisibility()
  {
    return requestedVisibility;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { requestedVisibility, linkPassword, expires });
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
    protected Date expires = null;
    protected String linkPassword = null;
    protected RequestedVisibility requestedVisibility = null;
    
    protected Builder() {}
    
    public SharedLinkSettings build()
    {
      return new SharedLinkSettings(requestedVisibility, linkPassword, expires);
    }
    
    public Builder withExpires(Date paramDate)
    {
      expires = LangUtil.truncateMillis(paramDate);
      return this;
    }
    
    public Builder withLinkPassword(String paramString)
    {
      linkPassword = paramString;
      return this;
    }
    
    public Builder withRequestedVisibility(RequestedVisibility paramRequestedVisibility)
    {
      requestedVisibility = paramRequestedVisibility;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<SharedLinkSettings>
  {
    public static final a a = new a();
    
    a() {}
    
    public SharedLinkSettings a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      RequestedVisibility localRequestedVisibility = null;
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
        localObject2 = null;
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("requested_visibility".equals(str)) {
            localRequestedVisibility = (RequestedVisibility)StoneSerializers.nullable(RequestedVisibility.a.a).deserialize(paramJsonParser);
          } else if ("link_password".equals(str)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("expires".equals(str)) {
            localObject1 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        localObject1 = new SharedLinkSettings(localRequestedVisibility, (String)localObject2, (Date)localObject1);
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
    
    public void a(SharedLinkSettings paramSharedLinkSettings, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      if (requestedVisibility != null)
      {
        paramJsonGenerator.writeFieldName("requested_visibility");
        StoneSerializers.nullable(RequestedVisibility.a.a).serialize(requestedVisibility, paramJsonGenerator);
      }
      if (linkPassword != null)
      {
        paramJsonGenerator.writeFieldName("link_password");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(linkPassword, paramJsonGenerator);
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
