package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class CreateFolderEntryError
{
  public static final CreateFolderEntryError OTHER = new CreateFolderEntryError().a(Tag.OTHER);
  private Tag a;
  private WriteError b;
  
  private CreateFolderEntryError() {}
  
  private CreateFolderEntryError a(Tag paramTag)
  {
    CreateFolderEntryError localCreateFolderEntryError = new CreateFolderEntryError();
    a = paramTag;
    return localCreateFolderEntryError;
  }
  
  private CreateFolderEntryError a(Tag paramTag, WriteError paramWriteError)
  {
    CreateFolderEntryError localCreateFolderEntryError = new CreateFolderEntryError();
    a = paramTag;
    b = paramWriteError;
    return localCreateFolderEntryError;
  }
  
  public static CreateFolderEntryError path(WriteError paramWriteError)
  {
    if (paramWriteError != null) {
      return new CreateFolderEntryError().a(Tag.PATH, paramWriteError);
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
    if ((paramObject instanceof CreateFolderEntryError))
    {
      paramObject = (CreateFolderEntryError)paramObject;
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
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
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
    extends UnionSerializer<CreateFolderEntryError>
  {
    public static final a a = new a();
    
    a() {}
    
    public CreateFolderEntryError a(JsonParser paramJsonParser)
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
          localObject = CreateFolderEntryError.path(WriteError.a.a.a(paramJsonParser));
        }
        else
        {
          localObject = CreateFolderEntryError.OTHER;
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
    
    public void a(CreateFolderEntryError paramCreateFolderEntryError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (CreateFolderEntryError.1.a[paramCreateFolderEntryError.tag().ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("path", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path");
      WriteError.a.a.a(CreateFolderEntryError.a(paramCreateFolderEntryError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
