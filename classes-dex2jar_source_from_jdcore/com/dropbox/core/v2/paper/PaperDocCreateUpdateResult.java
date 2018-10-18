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

public class PaperDocCreateUpdateResult
{
  protected final String docId;
  protected final long revision;
  protected final String title;
  
  public PaperDocCreateUpdateResult(String paramString1, long paramLong, String paramString2)
  {
    if (paramString1 != null)
    {
      docId = paramString1;
      revision = paramLong;
      if (paramString2 != null)
      {
        title = paramString2;
        return;
      }
      throw new IllegalArgumentException("Required value for 'title' is null");
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
      paramObject = (PaperDocCreateUpdateResult)paramObject;
      if (((docId == docId) || (docId.equals(docId))) && (revision == revision))
      {
        if (title == title) {
          break label100;
        }
        if (title.equals(title)) {
          return true;
        }
      }
      bool = false;
      label100:
      return bool;
    }
    return false;
  }
  
  public String getDocId()
  {
    return docId;
  }
  
  public long getRevision()
  {
    return revision;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { docId, Long.valueOf(revision), title });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  static class a
    extends StructSerializer<PaperDocCreateUpdateResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public PaperDocCreateUpdateResult a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("doc_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("revision".equals(str2)) {
            localObject2 = (Long)StoneSerializers.int64().deserialize(paramJsonParser);
          } else if ("title".equals(str2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
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
              localObject1 = new PaperDocCreateUpdateResult(str1, ((Long)localObject2).longValue(), (String)localObject1);
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"title\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"revision\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"doc_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(PaperDocCreateUpdateResult paramPaperDocCreateUpdateResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("doc_id");
      StoneSerializers.string().serialize(docId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("revision");
      StoneSerializers.int64().serialize(Long.valueOf(revision), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("title");
      StoneSerializers.string().serialize(title, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
