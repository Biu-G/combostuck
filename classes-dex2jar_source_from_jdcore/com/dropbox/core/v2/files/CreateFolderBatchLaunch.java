package com.dropbox.core.v2.files;

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

public final class CreateFolderBatchLaunch
{
  public static final CreateFolderBatchLaunch OTHER = new CreateFolderBatchLaunch().a(Tag.OTHER);
  private Tag a;
  private String b;
  private CreateFolderBatchResult c;
  
  private CreateFolderBatchLaunch() {}
  
  private CreateFolderBatchLaunch a(Tag paramTag)
  {
    CreateFolderBatchLaunch localCreateFolderBatchLaunch = new CreateFolderBatchLaunch();
    a = paramTag;
    return localCreateFolderBatchLaunch;
  }
  
  private CreateFolderBatchLaunch a(Tag paramTag, CreateFolderBatchResult paramCreateFolderBatchResult)
  {
    CreateFolderBatchLaunch localCreateFolderBatchLaunch = new CreateFolderBatchLaunch();
    a = paramTag;
    c = paramCreateFolderBatchResult;
    return localCreateFolderBatchLaunch;
  }
  
  private CreateFolderBatchLaunch a(Tag paramTag, String paramString)
  {
    CreateFolderBatchLaunch localCreateFolderBatchLaunch = new CreateFolderBatchLaunch();
    a = paramTag;
    b = paramString;
    return localCreateFolderBatchLaunch;
  }
  
  public static CreateFolderBatchLaunch asyncJobId(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1) {
        return new CreateFolderBatchLaunch().a(Tag.ASYNC_JOB_ID, paramString);
      }
      throw new IllegalArgumentException("String is shorter than 1");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static CreateFolderBatchLaunch complete(CreateFolderBatchResult paramCreateFolderBatchResult)
  {
    if (paramCreateFolderBatchResult != null) {
      return new CreateFolderBatchLaunch().a(Tag.COMPLETE, paramCreateFolderBatchResult);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof CreateFolderBatchLaunch))
    {
      paramObject = (CreateFolderBatchLaunch)paramObject;
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
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      }
      bool1 = bool2;
      if (b != b)
      {
        if (b.equals(b)) {
          return true;
        }
        bool1 = false;
      }
      return bool1;
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
  
  public CreateFolderBatchResult getCompleteValue()
  {
    if (a == Tag.COMPLETE) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.COMPLETE, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, b, c });
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
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
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
    extends UnionSerializer<CreateFolderBatchLaunch>
  {
    public static final a a = new a();
    
    a() {}
    
    public CreateFolderBatchLaunch a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      Object localObject;
      int i;
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
      {
        localObject = getStringValue(paramJsonParser);
        paramJsonParser.nextToken();
        i = 1;
      }
      else
      {
        expectStartObject(paramJsonParser);
        localObject = readTag(paramJsonParser);
        i = 0;
      }
      if (localObject != null)
      {
        if ("async_job_id".equals(localObject))
        {
          expectField("async_job_id", paramJsonParser);
          localObject = CreateFolderBatchLaunch.asyncJobId((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("complete".equals(localObject))
        {
          localObject = CreateFolderBatchLaunch.complete(CreateFolderBatchResult.a.a.a(paramJsonParser, true));
        }
        else
        {
          localObject = CreateFolderBatchLaunch.OTHER;
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
    
    public void a(CreateFolderBatchLaunch paramCreateFolderBatchLaunch, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (CreateFolderBatchLaunch.1.a[paramCreateFolderBatchLaunch.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("complete", paramJsonGenerator);
        CreateFolderBatchResult.a.a.a(CreateFolderBatchLaunch.b(paramCreateFolderBatchLaunch), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("async_job_id", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("async_job_id");
      StoneSerializers.string().serialize(CreateFolderBatchLaunch.a(paramCreateFolderBatchLaunch), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
