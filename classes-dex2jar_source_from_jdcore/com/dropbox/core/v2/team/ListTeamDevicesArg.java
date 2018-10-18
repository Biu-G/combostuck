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

class ListTeamDevicesArg
{
  protected final String a;
  protected final boolean b;
  protected final boolean c;
  protected final boolean d;
  
  public ListTeamDevicesArg()
  {
    this(null, true, true, true);
  }
  
  public ListTeamDevicesArg(String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    a = paramString;
    b = paramBoolean1;
    c = paramBoolean2;
    d = paramBoolean3;
  }
  
  public static Builder a()
  {
    return new Builder();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (paramObject.getClass().equals(getClass()))
    {
      paramObject = (ListTeamDevicesArg)paramObject;
      return ((a == a) || ((a != null) && (a.equals(a)))) && (b == b) && (c == c) && (d == d);
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, Boolean.valueOf(b), Boolean.valueOf(c), Boolean.valueOf(d) });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected String cursor = null;
    protected boolean includeDesktopClients = true;
    protected boolean includeMobileClients = true;
    protected boolean includeWebSessions = true;
    
    protected Builder() {}
    
    public ListTeamDevicesArg build()
    {
      return new ListTeamDevicesArg(cursor, includeWebSessions, includeDesktopClients, includeMobileClients);
    }
    
    public Builder withCursor(String paramString)
    {
      cursor = paramString;
      return this;
    }
    
    public Builder withIncludeDesktopClients(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        includeDesktopClients = paramBoolean.booleanValue();
        return this;
      }
      includeDesktopClients = true;
      return this;
    }
    
    public Builder withIncludeMobileClients(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        includeMobileClients = paramBoolean.booleanValue();
        return this;
      }
      includeMobileClients = true;
      return this;
    }
    
    public Builder withIncludeWebSessions(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        includeWebSessions = paramBoolean.booleanValue();
        return this;
      }
      includeWebSessions = true;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<ListTeamDevicesArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListTeamDevicesArg a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      String str1 = null;
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
        localObject2 = Boolean.valueOf(true);
        localObject1 = Boolean.valueOf(true);
        Boolean localBoolean = Boolean.valueOf(true);
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("cursor".equals(str2)) {
            str1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("include_web_sessions".equals(str2)) {
            localObject2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("include_desktop_clients".equals(str2)) {
            localObject1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("include_mobile_clients".equals(str2)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        localObject1 = new ListTeamDevicesArg(str1, ((Boolean)localObject2).booleanValue(), ((Boolean)localObject1).booleanValue(), localBoolean.booleanValue());
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
    
    public void a(ListTeamDevicesArg paramListTeamDevicesArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      if (a != null)
      {
        paramJsonGenerator.writeFieldName("cursor");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(a, paramJsonGenerator);
      }
      paramJsonGenerator.writeFieldName("include_web_sessions");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(b), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("include_desktop_clients");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(c), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("include_mobile_clients");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(d), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
