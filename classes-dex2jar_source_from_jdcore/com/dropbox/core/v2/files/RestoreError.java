package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class RestoreError
{
  public static final RestoreError INVALID_REVISION = new RestoreError().a(Tag.INVALID_REVISION);
  public static final RestoreError OTHER = new RestoreError().a(Tag.OTHER);
  private Tag a;
  private LookupError b;
  private WriteError c;
  
  private RestoreError() {}
  
  private RestoreError a(Tag paramTag)
  {
    RestoreError localRestoreError = new RestoreError();
    a = paramTag;
    return localRestoreError;
  }
  
  private RestoreError a(Tag paramTag, LookupError paramLookupError)
  {
    RestoreError localRestoreError = new RestoreError();
    a = paramTag;
    b = paramLookupError;
    return localRestoreError;
  }
  
  private RestoreError a(Tag paramTag, WriteError paramWriteError)
  {
    RestoreError localRestoreError = new RestoreError();
    a = paramTag;
    c = paramWriteError;
    return localRestoreError;
  }
  
  public static RestoreError pathLookup(LookupError paramLookupError)
  {
    if (paramLookupError != null) {
      return new RestoreError().a(Tag.PATH_LOOKUP, paramLookupError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static RestoreError pathWrite(WriteError paramWriteError)
  {
    if (paramWriteError != null) {
      return new RestoreError().a(Tag.PATH_WRITE, paramWriteError);
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
    if ((paramObject instanceof RestoreError))
    {
      paramObject = (RestoreError)paramObject;
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
  
  public boolean isInvalidRevision()
  {
    return a == Tag.INVALID_REVISION;
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
    extends UnionSerializer<RestoreError>
  {
    public static final a a = new a();
    
    a() {}
    
    public RestoreError a(JsonParser paramJsonParser)
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
          localObject = RestoreError.pathLookup(LookupError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else if ("path_write".equals(localObject))
        {
          expectField("path_write", paramJsonParser);
          localObject = RestoreError.pathWrite(WriteError.a.a.a(paramJsonParser));
        }
        else if ("invalid_revision".equals(localObject))
        {
          localObject = RestoreError.INVALID_REVISION;
        }
        else
        {
          localObject = RestoreError.OTHER;
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
    
    public void a(RestoreError paramRestoreError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (RestoreError.1.a[paramRestoreError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeString("invalid_revision");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("path_write", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("path_write");
        WriteError.a.a.a(RestoreError.b(paramRestoreError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("path_lookup", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path_lookup");
      LookupError.Serializer.INSTANCE.serialize(RestoreError.a(paramRestoreError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
