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

class h
  extends i
{
  protected final PaperDocUpdatePolicy a;
  protected final long b;
  protected final ImportFormat c;
  
  public h(String paramString, PaperDocUpdatePolicy paramPaperDocUpdatePolicy, long paramLong, ImportFormat paramImportFormat)
  {
    super(paramString);
    if (paramPaperDocUpdatePolicy != null)
    {
      a = paramPaperDocUpdatePolicy;
      b = paramLong;
      if (paramImportFormat != null)
      {
        c = paramImportFormat;
        return;
      }
      throw new IllegalArgumentException("Required value for 'importFormat' is null");
    }
    throw new IllegalArgumentException("Required value for 'docUpdatePolicy' is null");
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
      paramObject = (h)paramObject;
      if (((d == d) || (d.equals(d))) && ((a == a) || (a.equals(a))) && (b == b))
      {
        if (c == c) {
          break label125;
        }
        if (c.equals(c)) {
          return true;
        }
      }
      bool = false;
      label125:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, Long.valueOf(b), c });
    return super.hashCode() * 31 + i;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  static class a
    extends StructSerializer<h>
  {
    public static final a a = new a();
    
    a() {}
    
    public h a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Long localLong = null;
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
        String str1 = null;
        localObject1 = str1;
        localObject2 = localObject1;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("doc_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("doc_update_policy".equals(str2)) {
            localObject1 = PaperDocUpdatePolicy.a.a.a(paramJsonParser);
          } else if ("revision".equals(str2)) {
            localLong = (Long)StoneSerializers.int64().deserialize(paramJsonParser);
          } else if ("import_format".equals(str2)) {
            localObject2 = ImportFormat.a.a.a(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject1 != null)
          {
            if (localLong != null)
            {
              if (localObject2 != null)
              {
                localObject1 = new h(str1, (PaperDocUpdatePolicy)localObject1, localLong.longValue(), (ImportFormat)localObject2);
                if (!paramBoolean) {
                  expectEndObject(paramJsonParser);
                }
                return localObject1;
              }
              throw new JsonParseException(paramJsonParser, "Required field \"import_format\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"revision\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"doc_update_policy\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"doc_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(h paramH, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("doc_id");
      StoneSerializers.string().serialize(d, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("doc_update_policy");
      PaperDocUpdatePolicy.a.a.a(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("revision");
      StoneSerializers.int64().serialize(Long.valueOf(b), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("import_format");
      ImportFormat.a.a.a(c, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
