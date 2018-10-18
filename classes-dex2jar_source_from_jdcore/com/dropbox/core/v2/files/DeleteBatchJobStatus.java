package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class DeleteBatchJobStatus
{
  public static final DeleteBatchJobStatus IN_PROGRESS = new DeleteBatchJobStatus().a(Tag.IN_PROGRESS);
  public static final DeleteBatchJobStatus OTHER = new DeleteBatchJobStatus().a(Tag.OTHER);
  private Tag a;
  private DeleteBatchResult b;
  private DeleteBatchError c;
  
  private DeleteBatchJobStatus() {}
  
  private DeleteBatchJobStatus a(Tag paramTag)
  {
    DeleteBatchJobStatus localDeleteBatchJobStatus = new DeleteBatchJobStatus();
    a = paramTag;
    return localDeleteBatchJobStatus;
  }
  
  private DeleteBatchJobStatus a(Tag paramTag, DeleteBatchError paramDeleteBatchError)
  {
    DeleteBatchJobStatus localDeleteBatchJobStatus = new DeleteBatchJobStatus();
    a = paramTag;
    c = paramDeleteBatchError;
    return localDeleteBatchJobStatus;
  }
  
  private DeleteBatchJobStatus a(Tag paramTag, DeleteBatchResult paramDeleteBatchResult)
  {
    DeleteBatchJobStatus localDeleteBatchJobStatus = new DeleteBatchJobStatus();
    a = paramTag;
    b = paramDeleteBatchResult;
    return localDeleteBatchJobStatus;
  }
  
  public static DeleteBatchJobStatus complete(DeleteBatchResult paramDeleteBatchResult)
  {
    if (paramDeleteBatchResult != null) {
      return new DeleteBatchJobStatus().a(Tag.COMPLETE, paramDeleteBatchResult);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static DeleteBatchJobStatus failed(DeleteBatchError paramDeleteBatchError)
  {
    if (paramDeleteBatchError != null) {
      return new DeleteBatchJobStatus().a(Tag.FAILED, paramDeleteBatchError);
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
    if ((paramObject instanceof DeleteBatchJobStatus))
    {
      paramObject = (DeleteBatchJobStatus)paramObject;
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
  
  public DeleteBatchResult getCompleteValue()
  {
    if (a == Tag.COMPLETE) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.COMPLETE, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public DeleteBatchError getFailedValue()
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
    extends UnionSerializer<DeleteBatchJobStatus>
  {
    public static final a a = new a();
    
    a() {}
    
    public DeleteBatchJobStatus a(JsonParser paramJsonParser)
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
          localObject = DeleteBatchJobStatus.IN_PROGRESS;
        }
        else if ("complete".equals(localObject))
        {
          localObject = DeleteBatchJobStatus.complete(DeleteBatchResult.a.a.a(paramJsonParser, true));
        }
        else if ("failed".equals(localObject))
        {
          expectField("failed", paramJsonParser);
          localObject = DeleteBatchJobStatus.failed(DeleteBatchError.a.a.a(paramJsonParser));
        }
        else
        {
          localObject = DeleteBatchJobStatus.OTHER;
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
    
    public void a(DeleteBatchJobStatus paramDeleteBatchJobStatus, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (DeleteBatchJobStatus.1.a[paramDeleteBatchJobStatus.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("failed", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("failed");
        DeleteBatchError.a.a.a(DeleteBatchJobStatus.b(paramDeleteBatchJobStatus), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("complete", paramJsonGenerator);
        DeleteBatchResult.a.a.a(DeleteBatchJobStatus.a(paramDeleteBatchJobStatus), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeString("in_progress");
    }
  }
}
