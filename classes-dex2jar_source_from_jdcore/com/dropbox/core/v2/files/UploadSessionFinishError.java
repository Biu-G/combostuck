package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.fileproperties.InvalidPropertyGroupError;
import com.dropbox.core.v2.fileproperties.InvalidPropertyGroupError.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class UploadSessionFinishError
{
  public static final UploadSessionFinishError OTHER = new UploadSessionFinishError().a(Tag.OTHER);
  public static final UploadSessionFinishError TOO_MANY_SHARED_FOLDER_TARGETS = new UploadSessionFinishError().a(Tag.TOO_MANY_SHARED_FOLDER_TARGETS);
  public static final UploadSessionFinishError TOO_MANY_WRITE_OPERATIONS = new UploadSessionFinishError().a(Tag.TOO_MANY_WRITE_OPERATIONS);
  private Tag a;
  private UploadSessionLookupError b;
  private WriteError c;
  private InvalidPropertyGroupError d;
  
  private UploadSessionFinishError() {}
  
  private UploadSessionFinishError a(Tag paramTag)
  {
    UploadSessionFinishError localUploadSessionFinishError = new UploadSessionFinishError();
    a = paramTag;
    return localUploadSessionFinishError;
  }
  
  private UploadSessionFinishError a(Tag paramTag, InvalidPropertyGroupError paramInvalidPropertyGroupError)
  {
    UploadSessionFinishError localUploadSessionFinishError = new UploadSessionFinishError();
    a = paramTag;
    d = paramInvalidPropertyGroupError;
    return localUploadSessionFinishError;
  }
  
  private UploadSessionFinishError a(Tag paramTag, UploadSessionLookupError paramUploadSessionLookupError)
  {
    UploadSessionFinishError localUploadSessionFinishError = new UploadSessionFinishError();
    a = paramTag;
    b = paramUploadSessionLookupError;
    return localUploadSessionFinishError;
  }
  
  private UploadSessionFinishError a(Tag paramTag, WriteError paramWriteError)
  {
    UploadSessionFinishError localUploadSessionFinishError = new UploadSessionFinishError();
    a = paramTag;
    c = paramWriteError;
    return localUploadSessionFinishError;
  }
  
  public static UploadSessionFinishError lookupFailed(UploadSessionLookupError paramUploadSessionLookupError)
  {
    if (paramUploadSessionLookupError != null) {
      return new UploadSessionFinishError().a(Tag.LOOKUP_FAILED, paramUploadSessionLookupError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static UploadSessionFinishError path(WriteError paramWriteError)
  {
    if (paramWriteError != null) {
      return new UploadSessionFinishError().a(Tag.PATH, paramWriteError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static UploadSessionFinishError propertiesError(InvalidPropertyGroupError paramInvalidPropertyGroupError)
  {
    if (paramInvalidPropertyGroupError != null) {
      return new UploadSessionFinishError().a(Tag.PROPERTIES_ERROR, paramInvalidPropertyGroupError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof UploadSessionFinishError))
    {
      paramObject = (UploadSessionFinishError)paramObject;
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
        if (d != d)
        {
          if (d.equals(d)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 2: 
        bool1 = bool2;
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      }
      bool1 = bool3;
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
  
  public UploadSessionLookupError getLookupFailedValue()
  {
    if (a == Tag.LOOKUP_FAILED) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.LOOKUP_FAILED, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public WriteError getPathValue()
  {
    if (a == Tag.PATH) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.PATH, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public InvalidPropertyGroupError getPropertiesErrorValue()
  {
    if (a == Tag.PROPERTIES_ERROR) {
      return d;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.PROPERTIES_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c, d });
  }
  
  public boolean isLookupFailed()
  {
    return a == Tag.LOOKUP_FAILED;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isPath()
  {
    return a == Tag.PATH;
  }
  
  public boolean isPropertiesError()
  {
    return a == Tag.PROPERTIES_ERROR;
  }
  
  public boolean isTooManySharedFolderTargets()
  {
    return a == Tag.TOO_MANY_SHARED_FOLDER_TARGETS;
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
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<UploadSessionFinishError>
  {
    public static final a a = new a();
    
    a() {}
    
    public UploadSessionFinishError a(JsonParser paramJsonParser)
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
        if ("lookup_failed".equals(localObject))
        {
          expectField("lookup_failed", paramJsonParser);
          localObject = UploadSessionFinishError.lookupFailed(UploadSessionLookupError.a.a.a(paramJsonParser));
        }
        else if ("path".equals(localObject))
        {
          expectField("path", paramJsonParser);
          localObject = UploadSessionFinishError.path(WriteError.a.a.a(paramJsonParser));
        }
        else if ("properties_error".equals(localObject))
        {
          expectField("properties_error", paramJsonParser);
          localObject = UploadSessionFinishError.propertiesError(InvalidPropertyGroupError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else if ("too_many_shared_folder_targets".equals(localObject))
        {
          localObject = UploadSessionFinishError.TOO_MANY_SHARED_FOLDER_TARGETS;
        }
        else if ("too_many_write_operations".equals(localObject))
        {
          localObject = UploadSessionFinishError.TOO_MANY_WRITE_OPERATIONS;
        }
        else
        {
          localObject = UploadSessionFinishError.OTHER;
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
    
    public void a(UploadSessionFinishError paramUploadSessionFinishError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (UploadSessionFinishError.1.a[paramUploadSessionFinishError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 5: 
        paramJsonGenerator.writeString("too_many_write_operations");
        return;
      case 4: 
        paramJsonGenerator.writeString("too_many_shared_folder_targets");
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("properties_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("properties_error");
        InvalidPropertyGroupError.Serializer.INSTANCE.serialize(UploadSessionFinishError.c(paramUploadSessionFinishError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("path", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("path");
        WriteError.a.a.a(UploadSessionFinishError.b(paramUploadSessionFinishError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("lookup_failed", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("lookup_failed");
      UploadSessionLookupError.a.a.a(UploadSessionFinishError.a(paramUploadSessionFinishError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
