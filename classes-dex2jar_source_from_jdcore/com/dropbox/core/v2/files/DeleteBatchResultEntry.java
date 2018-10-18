package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class DeleteBatchResultEntry
{
  private Tag a;
  private DeleteBatchResultData b;
  private DeleteError c;
  
  private DeleteBatchResultEntry() {}
  
  private DeleteBatchResultEntry a(Tag paramTag, DeleteBatchResultData paramDeleteBatchResultData)
  {
    DeleteBatchResultEntry localDeleteBatchResultEntry = new DeleteBatchResultEntry();
    a = paramTag;
    b = paramDeleteBatchResultData;
    return localDeleteBatchResultEntry;
  }
  
  private DeleteBatchResultEntry a(Tag paramTag, DeleteError paramDeleteError)
  {
    DeleteBatchResultEntry localDeleteBatchResultEntry = new DeleteBatchResultEntry();
    a = paramTag;
    c = paramDeleteError;
    return localDeleteBatchResultEntry;
  }
  
  public static DeleteBatchResultEntry failure(DeleteError paramDeleteError)
  {
    if (paramDeleteError != null) {
      return new DeleteBatchResultEntry().a(Tag.FAILURE, paramDeleteError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static DeleteBatchResultEntry success(DeleteBatchResultData paramDeleteBatchResultData)
  {
    if (paramDeleteBatchResultData != null) {
      return new DeleteBatchResultEntry().a(Tag.SUCCESS, paramDeleteBatchResultData);
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
    if ((paramObject instanceof DeleteBatchResultEntry))
    {
      paramObject = (DeleteBatchResultEntry)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
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
  
  public DeleteError getFailureValue()
  {
    if (a == Tag.FAILURE) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.FAILURE, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public DeleteBatchResultData getSuccessValue()
  {
    if (a == Tag.SUCCESS) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.SUCCESS, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public boolean isFailure()
  {
    return a == Tag.FAILURE;
  }
  
  public boolean isSuccess()
  {
    return a == Tag.SUCCESS;
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
    extends UnionSerializer<DeleteBatchResultEntry>
  {
    public static final a a = new a();
    
    a() {}
    
    public DeleteBatchResultEntry a(JsonParser paramJsonParser)
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
        if ("success".equals(localObject))
        {
          localObject = DeleteBatchResultEntry.success(DeleteBatchResultData.a.a.a(paramJsonParser, true));
        }
        else
        {
          if (!"failure".equals(localObject)) {
            break label104;
          }
          expectField("failure", paramJsonParser);
          localObject = DeleteBatchResultEntry.failure(DeleteError.a.a.a(paramJsonParser));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label104:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(DeleteBatchResultEntry paramDeleteBatchResultEntry, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (DeleteBatchResultEntry.1.a[paramDeleteBatchResultEntry.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramDeleteBatchResultEntry.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("failure", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("failure");
        DeleteError.a.a.a(DeleteBatchResultEntry.b(paramDeleteBatchResultEntry), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("success", paramJsonGenerator);
      DeleteBatchResultData.a.a.a(DeleteBatchResultEntry.a(paramDeleteBatchResultEntry), paramJsonGenerator, true);
      paramJsonGenerator.writeEndObject();
    }
  }
}
