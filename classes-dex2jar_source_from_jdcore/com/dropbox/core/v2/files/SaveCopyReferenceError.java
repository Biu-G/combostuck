package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class SaveCopyReferenceError
{
  public static final SaveCopyReferenceError INVALID_COPY_REFERENCE = new SaveCopyReferenceError().a(Tag.INVALID_COPY_REFERENCE);
  public static final SaveCopyReferenceError NOT_FOUND;
  public static final SaveCopyReferenceError NO_PERMISSION = new SaveCopyReferenceError().a(Tag.NO_PERMISSION);
  public static final SaveCopyReferenceError OTHER = new SaveCopyReferenceError().a(Tag.OTHER);
  public static final SaveCopyReferenceError TOO_MANY_FILES;
  private Tag a;
  private WriteError b;
  
  static
  {
    NOT_FOUND = new SaveCopyReferenceError().a(Tag.NOT_FOUND);
    TOO_MANY_FILES = new SaveCopyReferenceError().a(Tag.TOO_MANY_FILES);
  }
  
  private SaveCopyReferenceError() {}
  
  private SaveCopyReferenceError a(Tag paramTag)
  {
    SaveCopyReferenceError localSaveCopyReferenceError = new SaveCopyReferenceError();
    a = paramTag;
    return localSaveCopyReferenceError;
  }
  
  private SaveCopyReferenceError a(Tag paramTag, WriteError paramWriteError)
  {
    SaveCopyReferenceError localSaveCopyReferenceError = new SaveCopyReferenceError();
    a = paramTag;
    b = paramWriteError;
    return localSaveCopyReferenceError;
  }
  
  public static SaveCopyReferenceError path(WriteError paramWriteError)
  {
    if (paramWriteError != null) {
      return new SaveCopyReferenceError().a(Tag.PATH, paramWriteError);
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
    if ((paramObject instanceof SaveCopyReferenceError))
    {
      paramObject = (SaveCopyReferenceError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 6: 
        return true;
      case 5: 
        return true;
      case 4: 
        return true;
      case 3: 
        return true;
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
  
  public boolean isInvalidCopyReference()
  {
    return a == Tag.INVALID_COPY_REFERENCE;
  }
  
  public boolean isNoPermission()
  {
    return a == Tag.NO_PERMISSION;
  }
  
  public boolean isNotFound()
  {
    return a == Tag.NOT_FOUND;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isPath()
  {
    return a == Tag.PATH;
  }
  
  public boolean isTooManyFiles()
  {
    return a == Tag.TOO_MANY_FILES;
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
      INVALID_COPY_REFERENCE = new Tag("INVALID_COPY_REFERENCE", 1);
      NO_PERMISSION = new Tag("NO_PERMISSION", 2);
      NOT_FOUND = new Tag("NOT_FOUND", 3);
      TOO_MANY_FILES = new Tag("TOO_MANY_FILES", 4);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<SaveCopyReferenceError>
  {
    public static final a a = new a();
    
    a() {}
    
    public SaveCopyReferenceError a(JsonParser paramJsonParser)
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
          localObject = SaveCopyReferenceError.path(WriteError.a.a.a(paramJsonParser));
        }
        else if ("invalid_copy_reference".equals(localObject))
        {
          localObject = SaveCopyReferenceError.INVALID_COPY_REFERENCE;
        }
        else if ("no_permission".equals(localObject))
        {
          localObject = SaveCopyReferenceError.NO_PERMISSION;
        }
        else if ("not_found".equals(localObject))
        {
          localObject = SaveCopyReferenceError.NOT_FOUND;
        }
        else if ("too_many_files".equals(localObject))
        {
          localObject = SaveCopyReferenceError.TOO_MANY_FILES;
        }
        else
        {
          localObject = SaveCopyReferenceError.OTHER;
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
    
    public void a(SaveCopyReferenceError paramSaveCopyReferenceError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SaveCopyReferenceError.1.a[paramSaveCopyReferenceError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 5: 
        paramJsonGenerator.writeString("too_many_files");
        return;
      case 4: 
        paramJsonGenerator.writeString("not_found");
        return;
      case 3: 
        paramJsonGenerator.writeString("no_permission");
        return;
      case 2: 
        paramJsonGenerator.writeString("invalid_copy_reference");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("path", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path");
      WriteError.a.a.a(SaveCopyReferenceError.a(paramSaveCopyReferenceError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
