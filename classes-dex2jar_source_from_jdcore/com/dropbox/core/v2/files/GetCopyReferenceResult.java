package com.dropbox.core.v2.files;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

public class GetCopyReferenceResult
{
  protected final String copyReference;
  protected final Date expires;
  protected final Metadata metadata;
  
  public GetCopyReferenceResult(Metadata paramMetadata, String paramString, Date paramDate)
  {
    if (paramMetadata != null)
    {
      metadata = paramMetadata;
      if (paramString != null)
      {
        copyReference = paramString;
        if (paramDate != null)
        {
          expires = LangUtil.truncateMillis(paramDate);
          return;
        }
        throw new IllegalArgumentException("Required value for 'expires' is null");
      }
      throw new IllegalArgumentException("Required value for 'copyReference' is null");
    }
    throw new IllegalArgumentException("Required value for 'metadata' is null");
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
      paramObject = (GetCopyReferenceResult)paramObject;
      if (((metadata == metadata) || (metadata.equals(metadata))) && ((copyReference == copyReference) || (copyReference.equals(copyReference))))
      {
        if (expires == expires) {
          break label113;
        }
        if (expires.equals(expires)) {
          return true;
        }
      }
      bool = false;
      label113:
      return bool;
    }
    return false;
  }
  
  public String getCopyReference()
  {
    return copyReference;
  }
  
  public Date getExpires()
  {
    return expires;
  }
  
  public Metadata getMetadata()
  {
    return metadata;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { metadata, copyReference, expires });
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
    extends StructSerializer<GetCopyReferenceResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public GetCopyReferenceResult a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Metadata localMetadata = null;
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
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("metadata".equals(str)) {
            localMetadata = (Metadata)Metadata.a.a.deserialize(paramJsonParser);
          } else if ("copy_reference".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("expires".equals(str)) {
            localObject1 = (Date)StoneSerializers.timestamp().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localMetadata != null)
        {
          if (localObject2 != null)
          {
            if (localObject1 != null)
            {
              localObject1 = new GetCopyReferenceResult(localMetadata, (String)localObject2, (Date)localObject1);
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"expires\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"copy_reference\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"metadata\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(GetCopyReferenceResult paramGetCopyReferenceResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("metadata");
      Metadata.a.a.serialize(metadata, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("copy_reference");
      StoneSerializers.string().serialize(copyReference, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("expires");
      StoneSerializers.timestamp().serialize(expires, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
