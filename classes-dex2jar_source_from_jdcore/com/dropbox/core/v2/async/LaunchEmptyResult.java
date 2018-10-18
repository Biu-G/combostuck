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

public final class LaunchEmptyResult
{
  public static final LaunchEmptyResult COMPLETE = new LaunchEmptyResult().a(Tag.COMPLETE);
  private Tag a;
  private String b;
  
  private LaunchEmptyResult() {}
  
  private LaunchEmptyResult a(Tag paramTag)
  {
    LaunchEmptyResult localLaunchEmptyResult = new LaunchEmptyResult();
    a = paramTag;
    return localLaunchEmptyResult;
  }
  
  private LaunchEmptyResult a(Tag paramTag, String paramString)
  {
    LaunchEmptyResult localLaunchEmptyResult = new LaunchEmptyResult();
    a = paramTag;
    b = paramString;
    return localLaunchEmptyResult;
  }
  
  public static LaunchEmptyResult asyncJobId(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1) {
        return new LaunchEmptyResult().a(Tag.ASYNC_JOB_ID, paramString);
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
    if ((paramObject instanceof LaunchEmptyResult))
    {
      paramObject = (LaunchEmptyResult)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 2: 
        return true;
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
    int i = Arrays.hashCode(new Object[] { a, b });
    return super.hashCode() * 31 + i;
  }
  
  public boolean isAsyncJobId()
  {
    return a == Tag.ASYNC_JOB_ID;
  }
  
  public boolean isComplete()
  {
    return a == Tag.COMPLETE;
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
    extends UnionSerializer<LaunchEmptyResult>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public LaunchEmptyResult deserialize(JsonParser paramJsonParser)
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
          localObject = LaunchEmptyResult.asyncJobId((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else
        {
          if (!"complete".equals(localObject)) {
            break label99;
          }
          localObject = LaunchEmptyResult.COMPLETE;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label99:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void serialize(LaunchEmptyResult paramLaunchEmptyResult, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (LaunchEmptyResult.1.a[paramLaunchEmptyResult.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramLaunchEmptyResult.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeString("complete");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("async_job_id", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("async_job_id");
      StoneSerializers.string().serialize(LaunchEmptyResult.a(paramLaunchEmptyResult), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
  
  public static enum Tag
  {
    private Tag() {}
  }
}
