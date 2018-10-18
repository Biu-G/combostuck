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

public final class UploadError
{
  public static final UploadError OTHER = new UploadError().a(Tag.OTHER);
  private Tag a;
  private UploadWriteFailed b;
  private InvalidPropertyGroupError c;
  
  private UploadError() {}
  
  private UploadError a(Tag paramTag)
  {
    UploadError localUploadError = new UploadError();
    a = paramTag;
    return localUploadError;
  }
  
  private UploadError a(Tag paramTag, InvalidPropertyGroupError paramInvalidPropertyGroupError)
  {
    UploadError localUploadError = new UploadError();
    a = paramTag;
    c = paramInvalidPropertyGroupError;
    return localUploadError;
  }
  
  private UploadError a(Tag paramTag, UploadWriteFailed paramUploadWriteFailed)
  {
    UploadError localUploadError = new UploadError();
    a = paramTag;
    b = paramUploadWriteFailed;
    return localUploadError;
  }
  
  public static UploadError path(UploadWriteFailed paramUploadWriteFailed)
  {
    if (paramUploadWriteFailed != null) {
      return new UploadError().a(Tag.PATH, paramUploadWriteFailed);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static UploadError propertiesError(InvalidPropertyGroupError paramInvalidPropertyGroupError)
  {
    if (paramInvalidPropertyGroupError != null) {
      return new UploadError().a(Tag.PROPERTIES_ERROR, paramInvalidPropertyGroupError);
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
    if ((paramObject instanceof UploadError))
    {
      paramObject = (UploadError)paramObject;
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
  
  public UploadWriteFailed getPathValue()
  {
    if (a == Tag.PATH) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.PATH, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public InvalidPropertyGroupError getPropertiesErrorValue()
  {
    if (a == Tag.PROPERTIES_ERROR) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.PROPERTIES_ERROR, but was Tag.");
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
  
  public boolean isPath()
  {
    return a == Tag.PATH;
  }
  
  public boolean isPropertiesError()
  {
    return a == Tag.PROPERTIES_ERROR;
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
    extends UnionSerializer<UploadError>
  {
    public static final a a = new a();
    
    a() {}
    
    public UploadError a(JsonParser paramJsonParser)
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
        if ("path".equals(localObject))
        {
          localObject = UploadError.path(UploadWriteFailed.a.a.a(paramJsonParser, true));
        }
        else if ("properties_error".equals(localObject))
        {
          expectField("properties_error", paramJsonParser);
          localObject = UploadError.propertiesError(InvalidPropertyGroupError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else
        {
          localObject = UploadError.OTHER;
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
    
    public void a(UploadError paramUploadError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (UploadError.1.a[paramUploadError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("properties_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("properties_error");
        InvalidPropertyGroupError.Serializer.INSTANCE.serialize(UploadError.b(paramUploadError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("path", paramJsonGenerator);
      UploadWriteFailed.a.a.a(UploadError.a(paramUploadError), paramJsonGenerator, true);
      paramJsonGenerator.writeEndObject();
    }
  }
}
