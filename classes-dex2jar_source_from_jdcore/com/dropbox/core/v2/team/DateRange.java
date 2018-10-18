package com.dropbox.core.v2.team;

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

class DateRange
{
  protected final Date a;
  protected final Date b;
  
  public DateRange()
  {
    this(null, null);
  }
  
  public DateRange(Date paramDate1, Date paramDate2)
  {
    a = LangUtil.truncateMillis(paramDate1);
    b = LangUtil.truncateMillis(paramDate2);
  }
  
  public static Builder a()
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
      paramObject = (DateRange)paramObject;
      if ((a == a) || ((a != null) && (a.equals(a))))
      {
        if (b == b) {
          break label102;
        }
        if ((b != null) && (b.equals(b))) {
          return true;
        }
      }
      bool = false;
      label102:
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
  
  public static class Builder
  {
    protected Date endDate = null;
    protected Date startDate = null;
    
    protected Builder() {}
    
    public DateRange build()
    {
      return new DateRange(startDate, endDate);
    }
    
    public Builder withEndDate(Date paramDate)
    {
      endDate = LangUtil.truncateMillis(paramDate);
      return this;
    }
    
    public Builder withStartDate(Date paramDate)
    {
      startDate = LangUtil.truncateMillis(paramDate);
      return this;
    }
  }
  
  static class a
    extends StructSerializer<DateRange>
  {
    public static final a a = new a();
    
    a() {}
    
    public DateRange a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("start_date".equals(str)) {
            localObject2 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else if ("end_date".equals(str)) {
            localObject1 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        localObject1 = new DateRange((Date)localObject2, (Date)localObject1);
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
    
    public void a(DateRange paramDateRange, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      if (a != null)
      {
        paramJsonGenerator.writeFieldName("start_date");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(a, paramJsonGenerator);
      }
      if (b != null)
      {
        paramJsonGenerator.writeFieldName("end_date");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(b, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
