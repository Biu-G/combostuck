package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class CreateFolderBatchResultEntry
{
  private Tag a;
  private CreateFolderEntryResult b;
  private CreateFolderEntryError c;
  
  private CreateFolderBatchResultEntry() {}
  
  private CreateFolderBatchResultEntry a(Tag paramTag, CreateFolderEntryError paramCreateFolderEntryError)
  {
    CreateFolderBatchResultEntry localCreateFolderBatchResultEntry = new CreateFolderBatchResultEntry();
    a = paramTag;
    c = paramCreateFolderEntryError;
    return localCreateFolderBatchResultEntry;
  }
  
  private CreateFolderBatchResultEntry a(Tag paramTag, CreateFolderEntryResult paramCreateFolderEntryResult)
  {
    CreateFolderBatchResultEntry localCreateFolderBatchResultEntry = new CreateFolderBatchResultEntry();
    a = paramTag;
    b = paramCreateFolderEntryResult;
    return localCreateFolderBatchResultEntry;
  }
  
  public static CreateFolderBatchResultEntry failure(CreateFolderEntryError paramCreateFolderEntryError)
  {
    if (paramCreateFolderEntryError != null) {
      return new CreateFolderBatchResultEntry().a(Tag.FAILURE, paramCreateFolderEntryError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static CreateFolderBatchResultEntry success(CreateFolderEntryResult paramCreateFolderEntryResult)
  {
    if (paramCreateFolderEntryResult != null) {
      return new CreateFolderBatchResultEntry().a(Tag.SUCCESS, paramCreateFolderEntryResult);
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
    if ((paramObject instanceof CreateFolderBatchResultEntry))
    {
      paramObject = (CreateFolderBatchResultEntry)paramObject;
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
  
  public CreateFolderEntryError getFailureValue()
  {
    if (a == Tag.FAILURE) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.FAILURE, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public CreateFolderEntryResult getSuccessValue()
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
    extends UnionSerializer<CreateFolderBatchResultEntry>
  {
    public static final a a = new a();
    
    a() {}
    
    public CreateFolderBatchResultEntry a(JsonParser paramJsonParser)
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
          localObject = CreateFolderBatchResultEntry.success(CreateFolderEntryResult.a.a.a(paramJsonParser, true));
        }
        else
        {
          if (!"failure".equals(localObject)) {
            break label104;
          }
          expectField("failure", paramJsonParser);
          localObject = CreateFolderBatchResultEntry.failure(CreateFolderEntryError.a.a.a(paramJsonParser));
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
    
    public void a(CreateFolderBatchResultEntry paramCreateFolderBatchResultEntry, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (CreateFolderBatchResultEntry.1.a[paramCreateFolderBatchResultEntry.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramCreateFolderBatchResultEntry.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("failure", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("failure");
        CreateFolderEntryError.a.a.a(CreateFolderBatchResultEntry.b(paramCreateFolderBatchResultEntry), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("success", paramJsonGenerator);
      CreateFolderEntryResult.a.a.a(CreateFolderBatchResultEntry.a(paramCreateFolderBatchResultEntry), paramJsonGenerator, true);
      paramJsonGenerator.writeEndObject();
    }
  }
}
