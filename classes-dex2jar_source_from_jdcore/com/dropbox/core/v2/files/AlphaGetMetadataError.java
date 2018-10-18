package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.fileproperties.LookUpPropertiesError;
import com.dropbox.core.v2.fileproperties.LookUpPropertiesError.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class AlphaGetMetadataError
{
  private Tag a;
  private LookupError b;
  private LookUpPropertiesError c;
  
  private AlphaGetMetadataError() {}
  
  private AlphaGetMetadataError a(Tag paramTag, LookUpPropertiesError paramLookUpPropertiesError)
  {
    AlphaGetMetadataError localAlphaGetMetadataError = new AlphaGetMetadataError();
    a = paramTag;
    c = paramLookUpPropertiesError;
    return localAlphaGetMetadataError;
  }
  
  private AlphaGetMetadataError a(Tag paramTag, LookupError paramLookupError)
  {
    AlphaGetMetadataError localAlphaGetMetadataError = new AlphaGetMetadataError();
    a = paramTag;
    b = paramLookupError;
    return localAlphaGetMetadataError;
  }
  
  public static AlphaGetMetadataError path(LookupError paramLookupError)
  {
    if (paramLookupError != null) {
      return new AlphaGetMetadataError().a(Tag.PATH, paramLookupError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static AlphaGetMetadataError propertiesError(LookUpPropertiesError paramLookUpPropertiesError)
  {
    if (paramLookUpPropertiesError != null) {
      return new AlphaGetMetadataError().a(Tag.PROPERTIES_ERROR, paramLookUpPropertiesError);
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
    if ((paramObject instanceof AlphaGetMetadataError))
    {
      paramObject = (AlphaGetMetadataError)paramObject;
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
  
  public LookupError getPathValue()
  {
    if (a == Tag.PATH) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.PATH, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public LookUpPropertiesError getPropertiesErrorValue()
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
    extends UnionSerializer<AlphaGetMetadataError>
  {
    public static final a a = new a();
    
    a() {}
    
    public AlphaGetMetadataError a(JsonParser paramJsonParser)
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
          localObject = AlphaGetMetadataError.path(LookupError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else
        {
          if (!"properties_error".equals(localObject)) {
            break label109;
          }
          expectField("properties_error", paramJsonParser);
          localObject = AlphaGetMetadataError.propertiesError(LookUpPropertiesError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label109:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(AlphaGetMetadataError paramAlphaGetMetadataError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (AlphaGetMetadataError.1.a[paramAlphaGetMetadataError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramAlphaGetMetadataError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("properties_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("properties_error");
        LookUpPropertiesError.Serializer.INSTANCE.serialize(AlphaGetMetadataError.b(paramAlphaGetMetadataError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("path", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path");
      LookupError.Serializer.INSTANCE.serialize(AlphaGetMetadataError.a(paramAlphaGetMetadataError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
