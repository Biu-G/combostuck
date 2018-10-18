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

class s
{
  protected final UserSelectorArg a;
  protected final boolean b;
  
  public s(UserSelectorArg paramUserSelectorArg)
  {
    this(paramUserSelectorArg, true);
  }
  
  public s(UserSelectorArg paramUserSelectorArg, boolean paramBoolean)
  {
    if (paramUserSelectorArg != null)
    {
      a = paramUserSelectorArg;
      b = paramBoolean;
      return;
    }
    throw new IllegalArgumentException("Required value for 'user' is null");
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
      paramObject = (s)paramObject;
      return ((a == a) || (a.equals(a))) && (b == b);
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, Boolean.valueOf(b) });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  static class a
    extends StructSerializer<s>
  {
    public static final a a = new a();
    
    a() {}
    
    public s a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Object localObject2 = null;
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
        localObject1 = Boolean.valueOf(true);
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("user".equals(str)) {
            localObject2 = UserSelectorArg.a.a.a(paramJsonParser);
          } else if ("wipe_data".equals(str)) {
            localObject1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          localObject1 = new s((UserSelectorArg)localObject2, ((Boolean)localObject1).booleanValue());
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"user\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(s paramS, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("user");
      UserSelectorArg.a.a.a(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("wipe_data");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(b), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
