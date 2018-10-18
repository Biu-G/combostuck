package com.dropbox.core.v2.paper;

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
  protected final String d;
  
  public i(String paramString)
  {
    if (paramString != null)
    {
      d = paramString;
      return;
    }
    throw new IllegalArgumentException("Required value for 'docId' is null");
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
      paramObject = (i)paramObject;
      if (d != d)
      {
        if (d.equals(d)) {
          return true;
        }
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { d });
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
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          localObject2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("doc_id".equals(localObject2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject1 != null)
        {
          localObject1 = new i((String)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"doc_id\" missing.");
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
      paramJsonGenerator.writeFieldName("doc_id");
      StoneSerializers.string().serialize(d, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}