package com.dropbox.core.v2.teamcommon;

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

public class TimeRange
{
  protected final Date endTime;
  protected final Date startTime;
  
  public TimeRange()
  {
    this(null, null);
  }
  
  public TimeRange(Date paramDate1, Date paramDate2)
  {
    startTime = LangUtil.truncateMillis(paramDate1);
    endTime = LangUtil.truncateMillis(paramDate2);
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
      paramObject = (TimeRange)paramObject;
      if ((startTime == startTime) || ((startTime != null) && (startTime.equals(startTime))))
      {
        if (endTime == endTime) {
          break label102;
        }
        if ((endTime != null) && (endTime.equals(endTime))) {
          return true;
        }
      }
      bool = false;
      label102:
      return bool;
    }
    return false;
  }
  
  public Date getEndTime()
  {
    return endTime;
  }
  
  public Date getStartTime()
  {
    return startTime;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { startTime, endTime });
  }
  
  public String toString()
  {
    return Serializer.INSTANCE.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return Serializer.INSTANCE.serialize(this, true);
  }
  
  public static class Builder
  {
    protected Date endTime = null;
    protected Date startTime = null;
    
    protected Builder() {}
    
    public TimeRange build()
    {
      return new TimeRange(startTime, endTime);
    }
    
    public Builder withEndTime(Date paramDate)
    {
      endTime = LangUtil.truncateMillis(paramDate);
      return this;
    }
    
    public Builder withStartTime(Date paramDate)
    {
      startTime = LangUtil.truncateMillis(paramDate);
      return this;
    }
  }
  
  public static class Serializer
    extends StructSerializer<TimeRange>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public TimeRange deserialize(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("start_time".equals(str)) {
            localObject2 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else if ("end_time".equals(str)) {
            localObject1 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        localObject1 = new TimeRange((Date)localObject2, (Date)localObject1);
        if (!paramBoolean) {
          expectEndObject(paramJsonParser);
        }
        return localObject1;
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void serialize(TimeRange paramTimeRange, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      if (startTime != null)
      {
        paramJsonGenerator.writeFieldName("start_time");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(startTime, paramJsonGenerator);
      }
      if (endTime != null)
      {
        paramJsonGenerator.writeFieldName("end_time");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(endTime, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
