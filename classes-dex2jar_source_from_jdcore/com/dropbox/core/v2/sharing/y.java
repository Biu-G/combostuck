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
import java.util.regex.Pattern;

class y
{
  protected final String a;
  protected final MemberSelector b;
  protected final AccessLevel c;
  
  public y(String paramString, MemberSelector paramMemberSelector, AccessLevel paramAccessLevel)
  {
    if (paramString != null)
    {
      if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString))
      {
        a = paramString;
        if (paramMemberSelector != null)
        {
          b = paramMemberSelector;
          if (paramAccessLevel != null)
          {
            c = paramAccessLevel;
            return;
          }
          throw new IllegalArgumentException("Required value for 'accessLevel' is null");
        }
        throw new IllegalArgumentException("Required value for 'member' is null");
      }
      throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
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
      paramObject = (y)paramObject;
      if (((a == a) || (a.equals(a))) && ((b == b) || (b.equals(b))))
      {
        if (c == c) {
          break label113;
        }
        if (c.equals(c)) {
          return true;
        }
      }
      bool = false;
      label113:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  static class a
    extends StructSerializer<y>
  {
    public static final a a = new a();
    
    a() {}
    
    public y a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject2 = null;
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("shared_folder_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("member".equals(str2)) {
            localObject2 = MemberSelector.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("access_level".equals(str2)) {
            localObject1 = AccessLevel.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject2 != null)
          {
            if (localObject1 != null)
            {
              localObject1 = new y(str1, (MemberSelector)localObject2, (AccessLevel)localObject1);
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"access_level\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"member\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"shared_folder_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(y paramY, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("shared_folder_id");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("member");
      MemberSelector.Serializer.INSTANCE.serialize(b, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_level");
      AccessLevel.Serializer.INSTANCE.serialize(c, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
