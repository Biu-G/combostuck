package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class CreateFolderError
{
  private Tag a;
  private WriteError b;
  
  private CreateFolderError() {}
  
  private CreateFolderError a(Tag paramTag, WriteError paramWriteError)
  {
    CreateFolderError localCreateFolderError = new CreateFolderError();
    a = paramTag;
    b = paramWriteError;
    return localCreateFolderError;
  }
  
  public static CreateFolderError path(WriteError paramWriteError)
  {
    if (paramWriteError != null) {
      return new CreateFolderError().a(Tag.PATH, paramWriteError);
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
    if ((paramObject instanceof CreateFolderError))
    {
      paramObject = (CreateFolderError)paramObject;
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
  
  public WriteError getPathValue()
  {
    if (a == Tag.PATH) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.PATH, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isPath()
  {
    return a == Tag.PATH;
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
    extends UnionSerializer<CreateFolderError>
  {
    public static final a a = new a();
    
    a() {}
    
    public CreateFolderError a(JsonParser paramJsonParser)
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
        if ("path".equals(localObject))
        {
          expectField("path", paramJsonParser);
          localObject = CreateFolderError.path(WriteError.a.a.a(paramJsonParser));
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
    
    public void a(CreateFolderError paramCreateFolderError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (CreateFolderError.1.a[paramCreateFolderError.tag().ordinal()] == 1)
      {
        paramJsonGenerator.writeStartObject();
        writeTag("path", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("path");
        WriteError.a.a.a(CreateFolderError.a(paramCreateFolderError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator = new StringBuilder();
      paramJsonGenerator.append("Unrecognized tag: ");
      paramJsonGenerator.append(paramCreateFolderError.tag());
      throw new IllegalArgumentException(paramJsonGenerator.toString());
    }
  }
}
