package com.dropbox.core.v2.auth;

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

public class RateLimitError
{
  protected final RateLimitReason reason;
  protected final long retryAfter;
  
  public RateLimitError(RateLimitReason paramRateLimitReason)
  {
    this(paramRateLimitReason, 1L);
  }
  
  public RateLimitError(RateLimitReason paramRateLimitReason, long paramLong)
  {
    if (paramRateLimitReason != null)
    {
      reason = paramRateLimitReason;
      retryAfter = paramLong;
      return;
    }
    throw new IllegalArgumentException("Required value for 'reason' is null");
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (paramObject.getClass().equals(getClass()))
    {
      paramObject = (RateLimitError)paramObject;
      return ((reason == reason) || (reason.equals(reason))) && (retryAfter == retryAfter);
    }
    return false;
  }
  
  public RateLimitReason getReason()
  {
    return reason;
  }
  
  public long getRetryAfter()
  {
    return retryAfter;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { reason, Long.valueOf(retryAfter) });
  }
  
  public String toString()
  {
    return Serializer.INSTANCE.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return Serializer.INSTANCE.serialize(this, true);
  }
  
  public static class Serializer
    extends StructSerializer<RateLimitError>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public RateLimitError deserialize(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject1 = Long.valueOf(1L);
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("reason".equals(str)) {
            localObject2 = RateLimitReason.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("retry_after".equals(str)) {
            localObject1 = (Long)StoneSerializers.uInt64().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          localObject1 = new RateLimitError((RateLimitReason)localObject2, ((Long)localObject1).longValue());
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"reason\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void serialize(RateLimitError paramRateLimitError, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("reason");
      RateLimitReason.Serializer.INSTANCE.serialize(reason, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("retry_after");
      StoneSerializers.uInt64().serialize(Long.valueOf(retryAfter), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
