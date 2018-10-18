package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class DeleteError
{
  public static final DeleteError OTHER = new DeleteError().a(Tag.OTHER);
  public static final DeleteError TOO_MANY_FILES;
  public static final DeleteError TOO_MANY_WRITE_OPERATIONS = new DeleteError().a(Tag.TOO_MANY_WRITE_OPERATIONS);
  private Tag a;
  private LookupError b;
  private WriteError c;
  
  static
  {
    TOO_MANY_FILES = new DeleteError().a(Tag.TOO_MANY_FILES);
  }
  
  private DeleteError() {}
  
  private DeleteError a(Tag paramTag)
  {
    DeleteError localDeleteError = new DeleteError();
    a = paramTag;
    return localDeleteError;
  }
  
  private DeleteError a(Tag paramTag, LookupError paramLookupError)
  {
    DeleteError localDeleteError = new DeleteError();
    a = paramTag;
    b = paramLookupError;
    return localDeleteError;
  }
  
  private DeleteError a(Tag paramTag, WriteError paramWriteError)
  {
    DeleteError localDeleteError = new DeleteError();
    a = paramTag;
    c = paramWriteError;
    return localDeleteError;
  }
  
  public static DeleteError pathLookup(LookupError paramLookupError)
  {
    if (paramLookupError != null) {
      return new DeleteError().a(Tag.PATH_LOOKUP, paramLookupError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static DeleteError pathWrite(WriteError paramWriteError)
  {
    if (paramWriteError != null) {
      return new DeleteError().a(Tag.PATH_WRITE, paramWriteError);
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
    if ((paramObject instanceof DeleteError))
    {
      paramObject = (DeleteError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 5: 
        return true;
      case 4: 
        return true;
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
  
  public LookupError getPathLookupValue()
  {
    if (a == Tag.PATH_LOOKUP) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.PATH_LOOKUP, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public WriteError getPathWriteValue()
  {
    if (a == Tag.PATH_WRITE) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.PATH_WRITE, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isPathLookup()
  {
    return a == Tag.PATH_LOOKUP;
  }
  
  public boolean isPathWrite()
  {
    return a == Tag.PATH_WRITE;
  }
  
  public boolean isTooManyFiles()
  {
    return a == Tag.TOO_MANY_FILES;
  }
  
  public boolean isTooManyWriteOperations()
  {
    return a == Tag.TOO_MANY_WRITE_OPERATIONS;
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
    static
    {
      TOO_MANY_FILES = new Tag("TOO_MANY_FILES", 3);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<DeleteError>
  {
    public static final a a = new a();
    
    a() {}
    
    public DeleteError a(JsonParser paramJsonParser)
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
        if ("path_lookup".equals(localObject))
        {
          expectField("path_lookup", paramJsonParser);
          localObject = DeleteError.pathLookup(LookupError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else if ("path_write".equals(localObject))
        {
          expectField("path_write", paramJsonParser);
          localObject = DeleteError.pathWrite(WriteError.a.a.a(paramJsonParser));
        }
        else if ("too_many_write_operations".equals(localObject))
        {
          localObject = DeleteError.TOO_MANY_WRITE_OPERATIONS;
        }
        else if ("too_many_files".equals(localObject))
        {
          localObject = DeleteError.TOO_MANY_FILES;
        }
        else
        {
          localObject = DeleteError.OTHER;
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
    
    public void a(DeleteError paramDeleteError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (DeleteError.1.a[paramDeleteError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 4: 
        paramJsonGenerator.writeString("too_many_files");
        return;
      case 3: 
        paramJsonGenerator.writeString("too_many_write_operations");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("path_write", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("path_write");
        WriteError.a.a.a(DeleteError.b(paramDeleteError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("path_lookup", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path_lookup");
      LookupError.Serializer.INSTANCE.serialize(DeleteError.a(paramDeleteError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
