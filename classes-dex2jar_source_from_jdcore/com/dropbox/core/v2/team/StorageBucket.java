package com.dropbox.core.v2.team;

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

public class StorageBucket
{
  protected final String bucket;
  protected final long users;
  
  public StorageBucket(String paramString, long paramLong)
  {
    if (paramString != null)
    {
      bucket = paramString;
      users = paramLong;
      return;
    }
    throw new IllegalArgumentException("Required value for 'bucket' is null");
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
      paramObject = (StorageBucket)paramObject;
      return ((bucket == bucket) || (bucket.equals(bucket))) && (users == users);
    }
    return false;
  }
  
  public String getBucket()
  {
    return bucket;
  }
  
  public long getUsers()
  {
    return users;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { bucket, Long.valueOf(users) });
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
    extends StructSerializer<StorageBucket>
  {
    public static final a a = new a();
    
    a() {}
    
    public StorageBucket a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("bucket".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("users".equals(str)) {
            localObject1 = (Long)StoneSerializers.uInt64().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new StorageBucket((String)localObject2, ((Long)localObject1).longValue());
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"users\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"bucket\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(StorageBucket paramStorageBucket, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("bucket");
      StoneSerializers.string().serialize(bucket, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("users");
      StoneSerializers.uInt64().serialize(Long.valueOf(users), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
