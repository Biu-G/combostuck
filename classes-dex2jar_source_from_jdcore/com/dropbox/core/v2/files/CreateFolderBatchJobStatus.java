package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class CreateFolderBatchJobStatus
{
  public static final CreateFolderBatchJobStatus IN_PROGRESS = new CreateFolderBatchJobStatus().a(Tag.IN_PROGRESS);
  public static final CreateFolderBatchJobStatus OTHER = new CreateFolderBatchJobStatus().a(Tag.OTHER);
  private Tag a;
  private CreateFolderBatchResult b;
  private CreateFolderBatchError c;
  
  private CreateFolderBatchJobStatus() {}
  
  private CreateFolderBatchJobStatus a(Tag paramTag)
  {
    CreateFolderBatchJobStatus localCreateFolderBatchJobStatus = new CreateFolderBatchJobStatus();
    a = paramTag;
    return localCreateFolderBatchJobStatus;
  }
  
  private CreateFolderBatchJobStatus a(Tag paramTag, CreateFolderBatchError paramCreateFolderBatchError)
  {
    CreateFolderBatchJobStatus localCreateFolderBatchJobStatus = new CreateFolderBatchJobStatus();
    a = paramTag;
    c = paramCreateFolderBatchError;
    return localCreateFolderBatchJobStatus;
  }
  
  private CreateFolderBatchJobStatus a(Tag paramTag, CreateFolderBatchResult paramCreateFolderBatchResult)
  {
    CreateFolderBatchJobStatus localCreateFolderBatchJobStatus = new CreateFolderBatchJobStatus();
    a = paramTag;
    b = paramCreateFolderBatchResult;
    return localCreateFolderBatchJobStatus;
  }
  
  public static CreateFolderBatchJobStatus complete(CreateFolderBatchResult paramCreateFolderBatchResult)
  {
    if (paramCreateFolderBatchResult != null) {
      return new CreateFolderBatchJobStatus().a(Tag.COMPLETE, paramCreateFolderBatchResult);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static CreateFolderBatchJobStatus failed(CreateFolderBatchError paramCreateFolderBatchError)
  {
    if (paramCreateFolderBatchError != null) {
      return new CreateFolderBatchJobStatus().a(Tag.FAILED, paramCreateFolderBatchError);
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
    if ((paramObject instanceof CreateFolderBatchJobStatus))
    {
      paramObject = (CreateFolderBatchJobStatus)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 4: 
        return true;
      case 3: 
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 2: 
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
      return true;
    }
    return false;
  }
  
  public CreateFolderBatchResult getCompleteValue()
  {
    if (a == Tag.COMPLETE) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.COMPLETE, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public CreateFolderBatchError getFailedValue()
  {
    if (a == Tag.FAILED) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.FAILED, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, b, c });
    return super.hashCode() * 31 + i;
  }
  
  public boolean isComplete()
  {
    return a == Tag.COMPLETE;
  }
  
  public boolean isFailed()
  {
    return a == Tag.FAILED;
  }
  
  public boolean isInProgress()
  {
    return a == Tag.IN_PROGRESS;
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
    extends UnionSerializer<CreateFolderBatchJobStatus>
  {
    public static final a a = new a();
    
    a() {}
    
    public CreateFolderBatchJobStatus a(JsonParser paramJsonParser)
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
        if ("in_progress".equals(localObject))
        {
          localObject = CreateFolderBatchJobStatus.IN_PROGRESS;
        }
        else if ("complete".equals(localObject))
        {
          localObject = CreateFolderBatchJobStatus.complete(CreateFolderBatchResult.a.a.a(paramJsonParser, true));
        }
        else if ("failed".equals(localObject))
        {
          expectField("failed", paramJsonParser);
          localObject = CreateFolderBatchJobStatus.failed(CreateFolderBatchError.a.a.a(paramJsonParser));
        }
        else
        {
          localObject = CreateFolderBatchJobStatus.OTHER;
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
    
    public void a(CreateFolderBatchJobStatus paramCreateFolderBatchJobStatus, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (CreateFolderBatchJobStatus.1.a[paramCreateFolderBatchJobStatus.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("failed", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("failed");
        CreateFolderBatchError.a.a.a(CreateFolderBatchJobStatus.b(paramCreateFolderBatchJobStatus), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("complete", paramJsonGenerator);
        CreateFolderBatchResult.a.a.a(CreateFolderBatchJobStatus.a(paramCreateFolderBatchJobStatus), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeString("in_progress");
    }
  }
}
