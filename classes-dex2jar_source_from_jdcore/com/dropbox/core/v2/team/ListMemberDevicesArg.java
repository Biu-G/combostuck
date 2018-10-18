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

class ListMemberDevicesArg
{
  protected final String a;
  protected final boolean b;
  protected final boolean c;
  protected final boolean d;
  
  public ListMemberDevicesArg(String paramString)
  {
    this(paramString, true, true, true);
  }
  
  public ListMemberDevicesArg(String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramString != null)
    {
      a = paramString;
      b = paramBoolean1;
      c = paramBoolean2;
      d = paramBoolean3;
      return;
    }
    throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
  }
  
  public static Builder a(String paramString)
  {
    return new Builder(paramString);
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
      paramObject = (ListMemberDevicesArg)paramObject;
      return ((a == a) || (a.equals(a))) && (b == b) && (c == c) && (d == d);
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
    protected boolean includeDesktopClients;
    protected boolean includeMobileClients;
    protected boolean includeWebSessions;
    protected final String teamMemberId;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        teamMemberId = paramString;
        includeWebSessions = true;
        includeDesktopClients = true;
        includeMobileClients = true;
        return;
      }
      throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
    }
    
    public ListMemberDevicesArg build()
    {
      return new ListMemberDevicesArg(teamMemberId, includeWebSessions, includeDesktopClients, includeMobileClients);
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
    extends StructSerializer<ListMemberDevicesArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListMemberDevicesArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("team_member_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
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
        if (str1 != null)
        {
          localObject1 = new ListMemberDevicesArg(str1, ((Boolean)localObject2).booleanValue(), ((Boolean)localObject1).booleanValue(), localBoolean.booleanValue());
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"team_member_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ListMemberDevicesArg paramListMemberDevicesArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("team_member_id");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
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
