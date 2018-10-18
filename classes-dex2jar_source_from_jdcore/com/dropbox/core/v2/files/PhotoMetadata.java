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
import java.util.Date;

public class PhotoMetadata
  extends MediaMetadata
{
  public PhotoMetadata()
  {
    this(null, null, null);
  }
  
  public PhotoMetadata(Dimensions paramDimensions, GpsCoordinates paramGpsCoordinates, Date paramDate)
  {
    super(paramDimensions, paramGpsCoordinates, paramDate);
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
      paramObject = (PhotoMetadata)paramObject;
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
    return getClass().toString().hashCode();
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
    extends MediaMetadata.Builder
  {
    protected Builder() {}
    
    public PhotoMetadata build()
    {
      return new PhotoMetadata(dimensions, location, timeTaken);
    }
    
    public Builder withDimensions(Dimensions paramDimensions)
    {
      super.withDimensions(paramDimensions);
      return this;
    }
    
    public Builder withLocation(GpsCoordinates paramGpsCoordinates)
    {
      super.withLocation(paramGpsCoordinates);
      return this;
    }
    
    public Builder withTimeTaken(Date paramDate)
    {
      super.withTimeTaken(paramDate);
      return this;
    }
  }
  
  static class a
    extends StructSerializer<PhotoMetadata>
  {
    public static final a a = new a();
    
    a() {}
    
    public PhotoMetadata a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Dimensions localDimensions = null;
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject2 = readTag(paramJsonParser);
        localObject1 = localObject2;
        if (!"photo".equals(localObject2)) {}
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
        localObject1 = new PhotoMetadata(localDimensions, (GpsCoordinates)localObject2, (Date)localObject1);
        if (!paramBoolean) {
          expectEndObject(paramJsonParser);
        }
        return localObject1;
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(PhotoMetadata paramPhotoMetadata, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      writeTag("photo", paramJsonGenerator);
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
