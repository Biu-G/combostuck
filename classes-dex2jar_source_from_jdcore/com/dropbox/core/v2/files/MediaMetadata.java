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

public class MediaMetadata
{
  protected final Dimensions dimensions;
  protected final GpsCoordinates location;
  protected final Date timeTaken;
  
  public MediaMetadata()
  {
    this(null, null, null);
  }
  
  public MediaMetadata(Dimensions paramDimensions, GpsCoordinates paramGpsCoordinates, Date paramDate)
  {
    dimensions = paramDimensions;
    location = paramGpsCoordinates;
    timeTaken = LangUtil.truncateMillis(paramDate);
  }
  
  public static Builder newBuilder()
  {
    return new Builder();
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
      paramObject = (MediaMetadata)paramObject;
      if (((dimensions == dimensions) || ((dimensions != null) && (dimensions.equals(dimensions)))) && ((location == location) || ((location != null) && (location.equals(location)))))
      {
        if (timeTaken == timeTaken) {
          break label134;
        }
        if ((timeTaken != null) && (timeTaken.equals(timeTaken))) {
          return true;
        }
      }
      bool = false;
      label134:
      return bool;
    }
    return false;
  }
  
  public Dimensions getDimensions()
  {
    return dimensions;
  }
  
  public GpsCoordinates getLocation()
  {
    return location;
  }
  
  public Date getTimeTaken()
  {
    return timeTaken;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { dimensions, location, timeTaken });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  public static class Builder
  {
    protected Dimensions dimensions = null;
    protected GpsCoordinates location = null;
    protected Date timeTaken = null;
    
    protected Builder() {}
    
    public MediaMetadata build()
    {
      return new MediaMetadata(dimensions, location, timeTaken);
    }
    
    public Builder withDimensions(Dimensions paramDimensions)
    {
      dimensions = paramDimensions;
      return this;
    }
    
    public Builder withLocation(GpsCoordinates paramGpsCoordinates)
    {
      location = paramGpsCoordinates;
      return this;
    }
    
    public Builder withTimeTaken(Date paramDate)
    {
      timeTaken = LangUtil.truncateMillis(paramDate);
      return this;
    }
  }
  
  static class a
    extends StructSerializer<MediaMetadata>
  {
    public static final a a = new a();
    
    a() {}
    
    public MediaMetadata a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Dimensions localDimensions = null;
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject2 = readTag(paramJsonParser);
        localObject1 = localObject2;
        if (!"".equals(localObject2)) {}
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
          if ("dimensions".equals(str)) {
            localDimensions = (Dimensions)StoneSerializers.nullableStruct(Dimensions.a.a).deserialize(paramJsonParser);
          } else if ("location".equals(str)) {
            localObject2 = (GpsCoordinates)StoneSerializers.nullableStruct(GpsCoordinates.a.a).deserialize(paramJsonParser);
          } else if ("time_taken".equals(str)) {
            localObject1 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        localObject1 = new MediaMetadata(localDimensions, (GpsCoordinates)localObject2, (Date)localObject1);
      }
      else if ("".equals(localObject1))
      {
        localObject1 = a.a(paramJsonParser, true);
      }
      else if ("photo".equals(localObject1))
      {
        localObject1 = PhotoMetadata.a.a.a(paramJsonParser, true);
      }
      else
      {
        if (!"video".equals(localObject1)) {
          break label239;
        }
        localObject1 = VideoMetadata.a.a.a(paramJsonParser, true);
      }
      if (!paramBoolean) {
        expectEndObject(paramJsonParser);
      }
      return localObject1;
      label239:
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(MediaMetadata paramMediaMetadata, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if ((paramMediaMetadata instanceof PhotoMetadata))
      {
        PhotoMetadata.a.a.a((PhotoMetadata)paramMediaMetadata, paramJsonGenerator, paramBoolean);
        return;
      }
      if ((paramMediaMetadata instanceof VideoMetadata))
      {
        VideoMetadata.a.a.a((VideoMetadata)paramMediaMetadata, paramJsonGenerator, paramBoolean);
        return;
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      if (dimensions != null)
      {
        paramJsonGenerator.writeFieldName("dimensions");
        StoneSerializers.nullableStruct(Dimensions.a.a).serialize(dimensions, paramJsonGenerator);
      }
      if (location != null)
      {
        paramJsonGenerator.writeFieldName("location");
        StoneSerializers.nullableStruct(GpsCoordinates.a.a).serialize(location, paramJsonGenerator);
      }
      if (timeTaken != null)
      {
        paramJsonGenerator.writeFieldName("time_taken");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(timeTaken, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
