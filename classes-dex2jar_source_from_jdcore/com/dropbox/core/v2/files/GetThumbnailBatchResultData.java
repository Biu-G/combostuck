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

public class GetThumbnailBatchResultData
{
  protected final FileMetadata metadata;
  protected final String thumbnail;
  
  public GetThumbnailBatchResultData(FileMetadata paramFileMetadata, String paramString)
  {
    if (paramFileMetadata != null)
    {
      metadata = paramFileMetadata;
      if (paramString != null)
      {
        thumbnail = paramString;
        return;
      }
      throw new IllegalArgumentException("Required value for 'thumbnail' is null");
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
      paramObject = (GetThumbnailBatchResultData)paramObject;
      if ((metadata == metadata) || (metadata.equals(metadata)))
      {
        if (thumbnail == thumbnail) {
          break label88;
        }
        if (thumbnail.equals(thumbnail)) {
          return true;
        }
      }
      bool = false;
      label88:
      return bool;
    }
    return false;
  }
  
  public FileMetadata getMetadata()
  {
    return metadata;
  }
  
  public String getThumbnail()
  {
    return thumbnail;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { metadata, thumbnail });
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
    extends StructSerializer<GetThumbnailBatchResultData>
  {
    public static final a a = new a();
    
    a() {}
    
    public GetThumbnailBatchResultData a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("metadata".equals(str)) {
            localObject2 = (FileMetadata)FileMetadata.a.a.deserialize(paramJsonParser);
          } else if ("thumbnail".equals(str)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new GetThumbnailBatchResultData((FileMetadata)localObject2, (String)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"thumbnail\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"metadata\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(GetThumbnailBatchResultData paramGetThumbnailBatchResultData, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("metadata");
      FileMetadata.a.a.serialize(metadata, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("thumbnail");
      StoneSerializers.string().serialize(thumbnail, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
