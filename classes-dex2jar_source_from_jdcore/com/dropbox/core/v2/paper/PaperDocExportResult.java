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

public class PaperDocExportResult
{
  protected final String mimeType;
  protected final String owner;
  protected final long revision;
  protected final String title;
  
  public PaperDocExportResult(String paramString1, String paramString2, long paramLong, String paramString3)
  {
    if (paramString1 != null)
    {
      owner = paramString1;
      if (paramString2 != null)
      {
        title = paramString2;
        revision = paramLong;
        if (paramString3 != null)
        {
          mimeType = paramString3;
          return;
        }
        throw new IllegalArgumentException("Required value for 'mimeType' is null");
      }
      throw new IllegalArgumentException("Required value for 'title' is null");
    }
    throw new IllegalArgumentException("Required value for 'owner' is null");
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
      paramObject = (PaperDocExportResult)paramObject;
      if (((owner == owner) || (owner.equals(owner))) && ((title == title) || (title.equals(title))) && (revision == revision))
      {
        if (mimeType == mimeType) {
          break label125;
        }
        if (mimeType.equals(mimeType)) {
          return true;
        }
      }
      bool = false;
      label125:
      return bool;
    }
    return false;
  }
  
  public String getMimeType()
  {
    return mimeType;
  }
  
  public String getOwner()
  {
    return owner;
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
    return Arrays.hashCode(new Object[] { owner, title, Long.valueOf(revision), mimeType });
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
    extends StructSerializer<PaperDocExportResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public PaperDocExportResult a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("owner".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("title".equals(str2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("revision".equals(str2)) {
            localLong = (Long)StoneSerializers.int64().deserialize(paramJsonParser);
          } else if ("mime_type".equals(str2)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
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
                localObject1 = new PaperDocExportResult(str1, (String)localObject1, localLong.longValue(), (String)localObject2);
                if (!paramBoolean) {
                  expectEndObject(paramJsonParser);
                }
                return localObject1;
              }
              throw new JsonParseException(paramJsonParser, "Required field \"mime_type\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"revision\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"title\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"owner\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(PaperDocExportResult paramPaperDocExportResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("owner");
      StoneSerializers.string().serialize(owner, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("title");
      StoneSerializers.string().serialize(title, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("revision");
      StoneSerializers.int64().serialize(Long.valueOf(revision), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("mime_type");
      StoneSerializers.string().serialize(mimeType, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
