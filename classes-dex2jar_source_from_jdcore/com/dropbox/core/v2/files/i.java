package com.dropbox.core.v2.files;

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
{
  protected final String a;
  protected final long b;
  
  public i(String paramString)
  {
    this(paramString, 30L);
  }
  
  public i(String paramString, long paramLong)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1)
      {
        a = paramString;
        if (paramLong >= 30L)
        {
          if (paramLong <= 480L)
          {
            b = paramLong;
            return;
          }
          throw new IllegalArgumentException("Number 'timeout' is larger than 480L");
        }
        throw new IllegalArgumentException("Number 'timeout' is smaller than 30L");
      }
      throw new IllegalArgumentException("String 'cursor' is shorter than 1");
    }
    throw new IllegalArgumentException("Required value for 'cursor' is null");
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
      return ((a == a) || (a.equals(a))) && (b == b);
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, Long.valueOf(b) });
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
        localObject1 = Long.valueOf(30L);
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("cursor".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("timeout".equals(str)) {
            localObject1 = (Long)StoneSerializers.uInt64().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          localObject1 = new i((String)localObject2, ((Long)localObject1).longValue());
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"cursor\" missing.");
      }
      localObject2 = new StringBuilder();
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
      paramJsonGenerator.writeFieldName("cursor");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("timeout");
      StoneSerializers.uInt64().serialize(Long.valueOf(b), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
