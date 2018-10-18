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
import java.util.Iterator;
import java.util.List;

public class AudienceExceptions
{
  protected final long count;
  protected final List<AudienceExceptionContentInfo> exceptions;
  
  public AudienceExceptions(long paramLong, List<AudienceExceptionContentInfo> paramList)
  {
    count = paramLong;
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((AudienceExceptionContentInfo)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'exceptions' is null");
        }
      }
      exceptions = paramList;
      return;
    }
    throw new IllegalArgumentException("Required value for 'exceptions' is null");
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
      paramObject = (AudienceExceptions)paramObject;
      if (count == count)
      {
        if (exceptions == exceptions) {
          break label77;
        }
        if (exceptions.equals(exceptions)) {
          return true;
        }
      }
      bool = false;
      label77:
      return bool;
    }
    return false;
  }
  
  public long getCount()
  {
    return count;
  }
  
  public List<AudienceExceptionContentInfo> getExceptions()
  {
    return exceptions;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Long.valueOf(count), exceptions });
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
    extends StructSerializer<AudienceExceptions>
  {
    public static final a a = new a();
    
    a() {}
    
    public AudienceExceptions a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("count".equals(str)) {
            localObject2 = (Long)StoneSerializers.uInt32().deserialize(paramJsonParser);
          } else if ("exceptions".equals(str)) {
            localObject1 = (List)StoneSerializers.list(AudienceExceptionContentInfo.a.a).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new AudienceExceptions(((Long)localObject2).longValue(), (List)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"exceptions\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"count\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(AudienceExceptions paramAudienceExceptions, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("count");
      StoneSerializers.uInt32().serialize(Long.valueOf(count), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("exceptions");
      StoneSerializers.list(AudienceExceptionContentInfo.a.a).serialize(exceptions, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
