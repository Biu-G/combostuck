package com.dropbox.core.v2.async;

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

public final class LaunchResultBase
{
  private Tag a;
  private String b;
  
  private LaunchResultBase() {}
  
  private LaunchResultBase a(Tag paramTag, String paramString)
  {
    LaunchResultBase localLaunchResultBase = new LaunchResultBase();
    a = paramTag;
    b = paramString;
    return localLaunchResultBase;
  }
  
  public static LaunchResultBase asyncJobId(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1) {
        return new LaunchResultBase().a(Tag.ASYNC_JOB_ID, paramString);
      }
      throw new IllegalArgumentException("String is shorter than 1");
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
    if ((paramObject instanceof LaunchResultBase))
    {
      paramObject = (LaunchResultBase)paramObject;
      if (a != a) {
        return false;
      }
      if (1.a[a.ordinal()] != 1) {
        return false;
      }
      if (b != b)
      {
        if (b.equals(b)) {
          return true;
        }
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  public String getAsyncJobIdValue()
  {
    if (a == Tag.ASYNC_JOB_ID) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isAsyncJobId()
  {
    return a == Tag.ASYNC_JOB_ID;
  }
  
  public Tag tag()
  {
    return a;
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
    extends UnionSerializer<LaunchResultBase>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public LaunchResultBase deserialize(JsonParser paramJsonParser)
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
        if ("async_job_id".equals(localObject))
        {
          expectField("async_job_id", paramJsonParser);
          localObject = LaunchResultBase.asyncJobId((String)StoneSerializers.string().deserialize(paramJsonParser));
          if (i == 0)
          {
            skipFields(paramJsonParser);
            expectEndObject(paramJsonParser);
          }
          return localObject;
        }
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void serialize(LaunchResultBase paramLaunchResultBase, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (LaunchResultBase.1.a[paramLaunchResultBase.tag().ordinal()] == 1)
      {
        paramJsonGenerator.writeStartObject();
        writeTag("async_job_id", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("async_job_id");
        StoneSerializers.string().serialize(LaunchResultBase.a(paramLaunchResultBase), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator = new StringBuilder();
      paramJsonGenerator.append("Unrecognized tag: ");
      paramJsonGenerator.append(paramLaunchResultBase.tag());
      throw new IllegalArgumentException(paramJsonGenerator.toString());
    }
  }
  
  public static enum Tag
  {
    private Tag() {}
  }
}
