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
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

class c
{
  protected final String a;
  protected final List<FileAction> b;
  
  public c(String paramString)
  {
    this(paramString, null);
  }
  
  public c(String paramString, List<FileAction> paramList)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1)
      {
        if (Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", paramString))
        {
          a = paramString;
          if (paramList != null)
          {
            paramString = paramList.iterator();
            while (paramString.hasNext()) {
              if ((FileAction)paramString.next() == null) {
                throw new IllegalArgumentException("An item in list 'actions' is null");
              }
            }
          }
          b = paramList;
          return;
        }
        throw new IllegalArgumentException("String 'file' does not match pattern");
      }
      throw new IllegalArgumentException("String 'file' is shorter than 1");
    }
    throw new IllegalArgumentException("Required value for 'file' is null");
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
      paramObject = (c)paramObject;
      if ((a == a) || (a.equals(a)))
      {
        if (b == b) {
          break label97;
        }
        if ((b != null) && (b.equals(b))) {
          return true;
        }
      }
      bool = false;
      label97:
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
  
  static class a
    extends StructSerializer<c>
  {
    public static final a a = new a();
    
    a() {}
    
    public c a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("file".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("actions".equals(str)) {
            localObject1 = (List)StoneSerializers.nullable(StoneSerializers.list(FileAction.a.a)).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          localObject1 = new c((String)localObject2, (List)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"file\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(c paramC, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("file");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      if (b != null)
      {
        paramJsonGenerator.writeFieldName("actions");
        StoneSerializers.nullable(StoneSerializers.list(FileAction.a.a)).serialize(b, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
