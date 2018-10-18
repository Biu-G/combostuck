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

public final class DeleteBatchLaunch
{
  public static final DeleteBatchLaunch OTHER = new DeleteBatchLaunch().a(Tag.OTHER);
  private Tag a;
  private String b;
  private DeleteBatchResult c;
  
  private DeleteBatchLaunch() {}
  
  private DeleteBatchLaunch a(Tag paramTag)
  {
    DeleteBatchLaunch localDeleteBatchLaunch = new DeleteBatchLaunch();
    a = paramTag;
    return localDeleteBatchLaunch;
  }
  
  private DeleteBatchLaunch a(Tag paramTag, DeleteBatchResult paramDeleteBatchResult)
  {
    DeleteBatchLaunch localDeleteBatchLaunch = new DeleteBatchLaunch();
    a = paramTag;
    c = paramDeleteBatchResult;
    return localDeleteBatchLaunch;
  }
  
  private DeleteBatchLaunch a(Tag paramTag, String paramString)
  {
    DeleteBatchLaunch localDeleteBatchLaunch = new DeleteBatchLaunch();
    a = paramTag;
    b = paramString;
    return localDeleteBatchLaunch;
  }
  
  public static DeleteBatchLaunch asyncJobId(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1) {
        return new DeleteBatchLaunch().a(Tag.ASYNC_JOB_ID, paramString);
      }
      throw new IllegalArgumentException("String is shorter than 1");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static DeleteBatchLaunch complete(DeleteBatchResult paramDeleteBatchResult)
  {
    if (paramDeleteBatchResult != null) {
      return new DeleteBatchLaunch().a(Tag.COMPLETE, paramDeleteBatchResult);
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
    if ((paramObject instanceof DeleteBatchLaunch))
    {
      paramObject = (DeleteBatchLaunch)paramObject;
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
  
  public DeleteBatchResult getCompleteValue()
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
    extends UnionSerializer<DeleteBatchLaunch>
  {
    public static final a a = new a();
    
    a() {}
    
    public DeleteBatchLaunch a(JsonParser paramJsonParser)
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
          localObject = DeleteBatchLaunch.asyncJobId((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("complete".equals(localObject))
        {
          localObject = DeleteBatchLaunch.complete(DeleteBatchResult.a.a.a(paramJsonParser, true));
        }
        else
        {
          localObject = DeleteBatchLaunch.OTHER;
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
    
    public void a(DeleteBatchLaunch paramDeleteBatchLaunch, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (DeleteBatchLaunch.1.a[paramDeleteBatchLaunch.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("complete", paramJsonGenerator);
        DeleteBatchResult.a.a.a(DeleteBatchLaunch.b(paramDeleteBatchLaunch), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("async_job_id", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("async_job_id");
      StoneSerializers.string().serialize(DeleteBatchLaunch.a(paramDeleteBatchLaunch), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
