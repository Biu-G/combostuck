package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class JobStatus
{
  public static final JobStatus COMPLETE = new JobStatus().a(Tag.COMPLETE);
  public static final JobStatus IN_PROGRESS = new JobStatus().a(Tag.IN_PROGRESS);
  private Tag a;
  private JobError b;
  
  private JobStatus() {}
  
  private JobStatus a(Tag paramTag)
  {
    JobStatus localJobStatus = new JobStatus();
    a = paramTag;
    return localJobStatus;
  }
  
  private JobStatus a(Tag paramTag, JobError paramJobError)
  {
    JobStatus localJobStatus = new JobStatus();
    a = paramTag;
    b = paramJobError;
    return localJobStatus;
  }
  
  public static JobStatus failed(JobError paramJobError)
  {
    if (paramJobError != null) {
      return new JobStatus().a(Tag.FAILED, paramJobError);
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
    if ((paramObject instanceof JobStatus))
    {
      paramObject = (JobStatus)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 3: 
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool = false;
        }
        return bool;
      case 2: 
        return true;
      }
      return true;
    }
    return false;
  }
  
  public JobError getFailedValue()
  {
    if (a == Tag.FAILED) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.FAILED, but was Tag.");
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
  
  public boolean isFailed()
  {
    return a == Tag.FAILED;
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
    extends UnionSerializer<JobStatus>
  {
    public static final a a = new a();
    
    a() {}
    
    public JobStatus a(JsonParser paramJsonParser)
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
        if ("in_progress".equals(localObject))
        {
          localObject = JobStatus.IN_PROGRESS;
        }
        else if ("complete".equals(localObject))
        {
          localObject = JobStatus.COMPLETE;
        }
        else
        {
          if (!"failed".equals(localObject)) {
            break label112;
          }
          expectField("failed", paramJsonParser);
          localObject = JobStatus.failed(JobError.a.a.a(paramJsonParser));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label112:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(JobStatus paramJobStatus, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (JobStatus.1.a[paramJobStatus.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramJobStatus.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("failed", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("failed");
        JobError.a.a.a(JobStatus.a(paramJobStatus), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeString("complete");
        return;
      }
      paramJsonGenerator.writeString("in_progress");
    }
  }
}
