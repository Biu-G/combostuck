package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class ThumbnailError
{
  public static final ThumbnailError CONVERSION_ERROR = new ThumbnailError().a(Tag.CONVERSION_ERROR);
  public static final ThumbnailError UNSUPPORTED_EXTENSION = new ThumbnailError().a(Tag.UNSUPPORTED_EXTENSION);
  public static final ThumbnailError UNSUPPORTED_IMAGE = new ThumbnailError().a(Tag.UNSUPPORTED_IMAGE);
  private Tag a;
  private LookupError b;
  
  private ThumbnailError() {}
  
  private ThumbnailError a(Tag paramTag)
  {
    ThumbnailError localThumbnailError = new ThumbnailError();
    a = paramTag;
    return localThumbnailError;
  }
  
  private ThumbnailError a(Tag paramTag, LookupError paramLookupError)
  {
    ThumbnailError localThumbnailError = new ThumbnailError();
    a = paramTag;
    b = paramLookupError;
    return localThumbnailError;
  }
  
  public static ThumbnailError path(LookupError paramLookupError)
  {
    if (paramLookupError != null) {
      return new ThumbnailError().a(Tag.PATH, paramLookupError);
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
    if ((paramObject instanceof ThumbnailError))
    {
      paramObject = (ThumbnailError)paramObject;
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
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isConversionError()
  {
    return a == Tag.CONVERSION_ERROR;
  }
  
  public boolean isPath()
  {
    return a == Tag.PATH;
  }
  
  public boolean isUnsupportedExtension()
  {
    return a == Tag.UNSUPPORTED_EXTENSION;
  }
  
  public boolean isUnsupportedImage()
  {
    return a == Tag.UNSUPPORTED_IMAGE;
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
    extends UnionSerializer<ThumbnailError>
  {
    public static final a a = new a();
    
    a() {}
    
    public ThumbnailError a(JsonParser paramJsonParser)
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
          localObject = ThumbnailError.path(LookupError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else if ("unsupported_extension".equals(localObject))
        {
          localObject = ThumbnailError.UNSUPPORTED_EXTENSION;
        }
        else if ("unsupported_image".equals(localObject))
        {
          localObject = ThumbnailError.UNSUPPORTED_IMAGE;
        }
        else
        {
          if (!"conversion_error".equals(localObject)) {
            break label128;
          }
          localObject = ThumbnailError.CONVERSION_ERROR;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label128:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(ThumbnailError paramThumbnailError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ThumbnailError.1.a[paramThumbnailError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramThumbnailError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 4: 
        paramJsonGenerator.writeString("conversion_error");
        return;
      case 3: 
        paramJsonGenerator.writeString("unsupported_image");
        return;
      case 2: 
        paramJsonGenerator.writeString("unsupported_extension");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("path", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path");
      LookupError.Serializer.INSTANCE.serialize(ThumbnailError.a(paramThumbnailError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
