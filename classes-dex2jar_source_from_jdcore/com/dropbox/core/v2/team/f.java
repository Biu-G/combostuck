package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

class f
{
  protected final GroupSelector a;
  protected final UserSelectorArg b;
  
  public f(GroupSelector paramGroupSelector, UserSelectorArg paramUserSelectorArg)
  {
    if (paramGroupSelector != null)
    {
      a = paramGroupSelector;
      if (paramUserSelectorArg != null)
      {
        b = paramUserSelectorArg;
        return;
      }
      throw new IllegalArgumentException("Required value for 'user' is null");
    }
    throw new IllegalArgumentException("Required value for 'group' is null");
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
      paramObject = (f)paramObject;
      if ((a == a) || (a.equals(a)))
      {
        if (b == b) {
          break label88;
        }
        if (b.equals(b)) {
          return true;
        }
      }
      bool = false;
      label88:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  private static class a
    extends StructSerializer<f>
  {
    public static final a a = new a();
    
    private a() {}
    
    public f a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject1 = null;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("group".equals(str)) {
            localObject2 = GroupSelector.a.a.a(paramJsonParser);
          } else if ("user".equals(str)) {
            localObject1 = UserSelectorArg.a.a.a(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new f((GroupSelector)localObject2, (UserSelectorArg)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"user\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"group\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(f paramF, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("group");
      GroupSelector.a.a.a(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("user");
      UserSelectorArg.a.a.a(b, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
