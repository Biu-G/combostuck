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

public final class UploadErrorWithProperties
{
  public static final UploadErrorWithProperties OTHER = new UploadErrorWithProperties().a(Tag.OTHER);
  private Tag a;
  private UploadWriteFailed b;
  private InvalidPropertyGroupError c;
  
  private UploadErrorWithProperties() {}
  
  private UploadErrorWithProperties a(Tag paramTag)
  {
    UploadErrorWithProperties localUploadErrorWithProperties = new UploadErrorWithProperties();
    a = paramTag;
    return localUploadErrorWithProperties;
  }
  
  private UploadErrorWithProperties a(Tag paramTag, InvalidPropertyGroupError paramInvalidPropertyGroupError)
  {
    UploadErrorWithProperties localUploadErrorWithProperties = new UploadErrorWithProperties();
    a = paramTag;
    c = paramInvalidPropertyGroupError;
    return localUploadErrorWithProperties;
  }
  
  private UploadErrorWithProperties a(Tag paramTag, UploadWriteFailed paramUploadWriteFailed)
  {
    UploadErrorWithProperties localUploadErrorWithProperties = new UploadErrorWithProperties();
    a = paramTag;
    b = paramUploadWriteFailed;
    return localUploadErrorWithProperties;
  }
  
  public static UploadErrorWithProperties path(UploadWriteFailed paramUploadWriteFailed)
  {
    if (paramUploadWriteFailed != null) {
      return new UploadErrorWithProperties().a(Tag.PATH, paramUploadWriteFailed);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static UploadErrorWithProperties propertiesError(InvalidPropertyGroupError paramInvalidPropertyGroupError)
  {
    if (paramInvalidPropertyGroupError != null) {
      return new UploadErrorWithProperties().a(Tag.PROPERTIES_ERROR, paramInvalidPropertyGroupError);
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
    if ((paramObject instanceof UploadErrorWithProperties))
    {
      paramObject = (UploadErrorWithProperties)paramObject;
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
    int i = Arrays.hashCode(new Object[] { a, b, c });
    return super.hashCode() * 31 + i;
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
    extends UnionSerializer<UploadErrorWithProperties>
  {
    public static final a a = new a();
    
    a() {}
    
    public UploadErrorWithProperties a(JsonParser paramJsonParser)
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
          localObject = UploadErrorWithProperties.path(UploadWriteFailed.a.a.a(paramJsonParser, true));
        }
        else if ("properties_error".equals(localObject))
        {
          expectField("properties_error", paramJsonParser);
          localObject = UploadErrorWithProperties.propertiesError(InvalidPropertyGroupError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else
        {
          if (!"other".equals(localObject)) {
            break label120;
          }
          localObject = UploadErrorWithProperties.OTHER;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label120:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(UploadErrorWithProperties paramUploadErrorWithProperties, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (UploadErrorWithProperties.1.a[paramUploadErrorWithProperties.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramUploadErrorWithProperties.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 3: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("properties_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("properties_error");
        InvalidPropertyGroupError.Serializer.INSTANCE.serialize(UploadErrorWithProperties.b(paramUploadErrorWithProperties), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("path", paramJsonGenerator);
      UploadWriteFailed.a.a.a(UploadErrorWithProperties.a(paramUploadErrorWithProperties), paramJsonGenerator, true);
      paramJsonGenerator.writeEndObject();
    }
  }
}
