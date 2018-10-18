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

class i
  extends f
{
  protected final GroupAccessType c;
  protected final boolean d;
  
  public i(GroupSelector paramGroupSelector, UserSelectorArg paramUserSelectorArg, GroupAccessType paramGroupAccessType)
  {
    this(paramGroupSelector, paramUserSelectorArg, paramGroupAccessType, true);
  }
  
  public i(GroupSelector paramGroupSelector, UserSelectorArg paramUserSelectorArg, GroupAccessType paramGroupAccessType, boolean paramBoolean)
  {
    super(paramGroupSelector, paramUserSelectorArg);
    if (paramGroupAccessType != null)
    {
      c = paramGroupAccessType;
      d = paramBoolean;
      return;
    }
    throw new IllegalArgumentException("Required value for 'accessType' is null");
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
      paramObject = (i)paramObject;
      return ((a == a) || (a.equals(a))) && ((b == b) || (b.equals(b))) && ((c == c) || (c.equals(c))) && (d == d);
    }
    return false;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { c, Boolean.valueOf(d) });
    return super.hashCode() * 31 + i;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  static class a
    extends StructSerializer<i>
  {
    public static final a a = new a();
    
    a() {}
    
    public i a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      GroupSelector localGroupSelector = null;
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
        localObject1 = Boolean.valueOf(true);
        Object localObject3 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("group".equals(str)) {
            localGroupSelector = GroupSelector.a.a.a(paramJsonParser);
          } else if ("user".equals(str)) {
            localObject3 = UserSelectorArg.a.a.a(paramJsonParser);
          } else if ("access_type".equals(str)) {
            localObject2 = GroupAccessType.a.a.a(paramJsonParser);
          } else if ("return_members".equals(str)) {
            localObject1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localGroupSelector != null)
        {
          if (localObject3 != null)
          {
            if (localObject2 != null)
            {
              localObject1 = new i(localGroupSelector, (UserSelectorArg)localObject3, (GroupAccessType)localObject2, ((Boolean)localObject1).booleanValue());
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"access_type\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"user\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"group\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(i paramI, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("group");
      GroupSelector.a.a.a(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("user");
      UserSelectorArg.a.a.a(b, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_type");
      GroupAccessType.a.a.a(c, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("return_members");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(d), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
