package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class MediaInfo
{
  public static final MediaInfo PENDING = new MediaInfo().a(Tag.PENDING);
  private Tag a;
  private MediaMetadata b;
  
  private MediaInfo() {}
  
  private MediaInfo a(Tag paramTag)
  {
    MediaInfo localMediaInfo = new MediaInfo();
    a = paramTag;
    return localMediaInfo;
  }
  
  private MediaInfo a(Tag paramTag, MediaMetadata paramMediaMetadata)
  {
    MediaInfo localMediaInfo = new MediaInfo();
    a = paramTag;
    b = paramMediaMetadata;
    return localMediaInfo;
  }
  
  public static MediaInfo metadata(MediaMetadata paramMediaMetadata)
  {
    if (paramMediaMetadata != null) {
      return new MediaInfo().a(Tag.METADATA, paramMediaMetadata);
    }
    throw new IllegalArgumentException("Value is null");
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
    if ((paramObject instanceof MediaInfo))
    {
      paramObject = (MediaInfo)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 2: 
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool = false;
        }
        return bool;
      }
      return true;
    }
    return false;
  }
  
  public MediaMetadata getMetadataValue()
  {
    if (a == Tag.METADATA) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.METADATA, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isMetadata()
  {
    return a == Tag.METADATA;
  }
  
  public boolean isPending()
  {
    return a == Tag.PENDING;
  }
  
  public Tag tag()
  {
    return a;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  public static enum Tag
  {
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<MediaInfo>
  {
    public static final a a = new a();
    
    a() {}
    
    public MediaInfo a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      int i;
      Object localObject;
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
      {
        i = 1;
        localObject = getStringValue(paramJsonParser);
        paramJsonParser.nextToken();
      }
      else
      {
        i = 0;
        expectStartObject(paramJsonParser);
        localObject = readTag(paramJsonParser);
      }
      if (localObject != null)
      {
        if ("pending".equals(localObject))
        {
          localObject = MediaInfo.PENDING;
        }
        else
        {
          if (!"metadata".equals(localObject)) {
            break label99;
          }
          expectField("metadata", paramJsonParser);
          localObject = MediaInfo.metadata((MediaMetadata)MediaMetadata.a.a.deserialize(paramJsonParser));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label99:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(MediaInfo paramMediaInfo, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (MediaInfo.1.a[paramMediaInfo.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramMediaInfo.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("metadata", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("metadata");
        MediaMetadata.a.a.serialize(MediaInfo.a(paramMediaInfo), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeString("pending");
    }
  }
}
