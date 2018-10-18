package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class UploadApiRateLimitValue
{
  public static final UploadApiRateLimitValue OTHER = new UploadApiRateLimitValue().a(Tag.OTHER);
  public static final UploadApiRateLimitValue UNLIMITED = new UploadApiRateLimitValue().a(Tag.UNLIMITED);
  private Tag a;
  private Long b;
  
  private UploadApiRateLimitValue() {}
  
  private UploadApiRateLimitValue a(Tag paramTag)
  {
    UploadApiRateLimitValue localUploadApiRateLimitValue = new UploadApiRateLimitValue();
    a = paramTag;
    return localUploadApiRateLimitValue;
  }
  
  private UploadApiRateLimitValue a(Tag paramTag, Long paramLong)
  {
    UploadApiRateLimitValue localUploadApiRateLimitValue = new UploadApiRateLimitValue();
    a = paramTag;
    b = paramLong;
    return localUploadApiRateLimitValue;
  }
  
  public static UploadApiRateLimitValue limit(long paramLong)
  {
    return new UploadApiRateLimitValue().a(Tag.LIMIT, Long.valueOf(paramLong));
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof UploadApiRateLimitValue))
    {
      paramObject = (UploadApiRateLimitValue)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 3: 
        return true;
      case 2: 
        return b == b;
      }
      return true;
    }
    return false;
  }
  
  public long getLimitValue()
  {
    if (a == Tag.LIMIT) {
      return b.longValue();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.LIMIT, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isLimit()
  {
    return a == Tag.LIMIT;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isUnlimited()
  {
    return a == Tag.UNLIMITED;
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
    extends UnionSerializer<UploadApiRateLimitValue>
  {
    public static final a a = new a();
    
    a() {}
    
    public UploadApiRateLimitValue a(JsonParser paramJsonParser)
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
        if ("unlimited".equals(localObject))
        {
          localObject = UploadApiRateLimitValue.UNLIMITED;
        }
        else if ("limit".equals(localObject))
        {
          expectField("limit", paramJsonParser);
          localObject = UploadApiRateLimitValue.limit(((Long)StoneSerializers.uInt32().deserialize(paramJsonParser)).longValue());
        }
        else
        {
          localObject = UploadApiRateLimitValue.OTHER;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(UploadApiRateLimitValue paramUploadApiRateLimitValue, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (UploadApiRateLimitValue.1.a[paramUploadApiRateLimitValue.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("limit", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("limit");
        StoneSerializers.uInt32().serialize(UploadApiRateLimitValue.a(paramUploadApiRateLimitValue), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeString("unlimited");
    }
  }
}
