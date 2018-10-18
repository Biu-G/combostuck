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

class d
{
  protected final List<String> a;
  protected final List<FileAction> b;
  
  public d(List<String> paramList)
  {
    this(paramList, null);
  }
  
  public d(List<String> paramList, List<FileAction> paramList1)
  {
    if (paramList != null)
    {
      if (paramList.size() <= 100)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if (str != null)
          {
            if (str.length() >= 1)
            {
              if (!Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
                throw new IllegalArgumentException("Stringan item in list 'files' does not match pattern");
              }
            }
            else {
              throw new IllegalArgumentException("Stringan item in list 'files' is shorter than 1");
            }
          }
          else {
            throw new IllegalArgumentException("An item in list 'files' is null");
          }
        }
        a = paramList;
        if (paramList1 != null)
        {
          paramList = paramList1.iterator();
          while (paramList.hasNext()) {
            if ((FileAction)paramList.next() == null) {
              throw new IllegalArgumentException("An item in list 'actions' is null");
            }
          }
        }
        b = paramList1;
        return;
      }
      throw new IllegalArgumentException("List 'files' has more than 100 items");
    }
    throw new IllegalArgumentException("Required value for 'files' is null");
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
      paramObject = (d)paramObject;
      if ((a == a) || (a.equals(a)))
      {
        if (b == b) {
          break label99;
        }
        if ((b != null) && (b.equals(b))) {
          return true;
        }
      }
      bool = false;
      label99:
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
    extends StructSerializer<d>
  {
    public static final a a = new a();
    
    a() {}
    
    public d a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("files".equals(str)) {
            localObject2 = (List)StoneSerializers.list(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("actions".equals(str)) {
            localObject1 = (List)StoneSerializers.nullable(StoneSerializers.list(FileAction.a.a)).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          localObject1 = new d((List)localObject2, (List)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"files\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(d paramD, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("files");
      StoneSerializers.list(StoneSerializers.string()).serialize(a, paramJsonGenerator);
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
