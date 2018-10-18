package com.dropbox.core.v2.sharing;

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

public class InsufficientQuotaAmounts
{
  protected final long spaceLeft;
  protected final long spaceNeeded;
  protected final long spaceShortage;
  
  public InsufficientQuotaAmounts(long paramLong1, long paramLong2, long paramLong3)
  {
    spaceNeeded = paramLong1;
    spaceShortage = paramLong2;
    spaceLeft = paramLong3;
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
      paramObject = (InsufficientQuotaAmounts)paramObject;
      return (spaceNeeded == spaceNeeded) && (spaceShortage == spaceShortage) && (spaceLeft == spaceLeft);
    }
    return false;
  }
  
  public long getSpaceLeft()
  {
    return spaceLeft;
  }
  
  public long getSpaceNeeded()
  {
    return spaceNeeded;
  }
  
  public long getSpaceShortage()
  {
    return spaceShortage;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Long.valueOf(spaceNeeded), Long.valueOf(spaceShortage), Long.valueOf(spaceLeft) });
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
    extends StructSerializer<InsufficientQuotaAmounts>
  {
    public static final a a = new a();
    
    a() {}
    
    public InsufficientQuotaAmounts a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject2 = null;
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("space_needed".equals(str)) {
            localLong = (Long)StoneSerializers.uInt64().deserialize(paramJsonParser);
          } else if ("space_shortage".equals(str)) {
            localObject2 = (Long)StoneSerializers.uInt64().deserialize(paramJsonParser);
          } else if ("space_left".equals(str)) {
            localObject1 = (Long)StoneSerializers.uInt64().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localLong != null)
        {
          if (localObject2 != null)
          {
            if (localObject1 != null)
            {
              localObject1 = new InsufficientQuotaAmounts(localLong.longValue(), ((Long)localObject2).longValue(), ((Long)localObject1).longValue());
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"space_left\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"space_shortage\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"space_needed\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(InsufficientQuotaAmounts paramInsufficientQuotaAmounts, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("space_needed");
      StoneSerializers.uInt64().serialize(Long.valueOf(spaceNeeded), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("space_shortage");
      StoneSerializers.uInt64().serialize(Long.valueOf(spaceShortage), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("space_left");
      StoneSerializers.uInt64().serialize(Long.valueOf(spaceLeft), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
