package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class UploadSessionFinishBatchJobStatus
{
  public static final UploadSessionFinishBatchJobStatus IN_PROGRESS = new UploadSessionFinishBatchJobStatus().a(Tag.IN_PROGRESS);
  private Tag a;
  private UploadSessionFinishBatchResult b;
  
  private UploadSessionFinishBatchJobStatus() {}
  
  private UploadSessionFinishBatchJobStatus a(Tag paramTag)
  {
    UploadSessionFinishBatchJobStatus localUploadSessionFinishBatchJobStatus = new UploadSessionFinishBatchJobStatus();
    a = paramTag;
    return localUploadSessionFinishBatchJobStatus;
  }
  
  private UploadSessionFinishBatchJobStatus a(Tag paramTag, UploadSessionFinishBatchResult paramUploadSessionFinishBatchResult)
  {
    UploadSessionFinishBatchJobStatus localUploadSessionFinishBatchJobStatus = new UploadSessionFinishBatchJobStatus();
    a = paramTag;
    b = paramUploadSessionFinishBatchResult;
    return localUploadSessionFinishBatchJobStatus;
  }
  
  public static UploadSessionFinishBatchJobStatus complete(UploadSessionFinishBatchResult paramUploadSessionFinishBatchResult)
  {
    if (paramUploadSessionFinishBatchResult != null) {
      return new UploadSessionFinishBatchJobStatus().a(Tag.COMPLETE, paramUploadSessionFinishBatchResult);
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
    if ((paramObject instanceof UploadSessionFinishBatchJobStatus))
    {
      paramObject = (UploadSessionFinishBatchJobStatus)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 2: 
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool = false;
        }
        return bool;
      }
      return true;
    }
    return false;
  }
  
  public UploadSessionFinishBatchResult getCompleteValue()
  {
    if (a == Tag.COMPLETE) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.COMPLETE, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, b });
    return super.hashCode() * 31 + i;
  }
  
  public boolean isComplete()
  {
    return a == Tag.COMPLETE;
  }
  
  public boolean isInProgress()
  {
    return a == Tag.IN_PROGRESS;
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
    extends UnionSerializer<UploadSessionFinishBatchJobStatus>
  {
    public static final a a = new a();
    
    a() {}
    
    public UploadSessionFinishBatchJobStatus a(JsonParser paramJsonParser)
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
          localObject = UploadSessionFinishBatchJobStatus.IN_PROGRESS;
        }
        else
        {
          if (!"complete".equals(localObject)) {
            break label91;
          }
          localObject = UploadSessionFinishBatchJobStatus.complete(UploadSessionFinishBatchResult.a.a.a(paramJsonParser, true));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label91:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(UploadSessionFinishBatchJobStatus paramUploadSessionFinishBatchJobStatus, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (UploadSessionFinishBatchJobStatus.1.a[paramUploadSessionFinishBatchJobStatus.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramUploadSessionFinishBatchJobStatus.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("complete", paramJsonGenerator);
        UploadSessionFinishBatchResult.a.a.a(UploadSessionFinishBatchJobStatus.a(paramUploadSessionFinishBatchJobStatus), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeString("in_progress");
    }
  }
}
