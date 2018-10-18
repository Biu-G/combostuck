package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class PreviewError
{
  public static final PreviewError IN_PROGRESS = new PreviewError().a(Tag.IN_PROGRESS);
  public static final PreviewError UNSUPPORTED_CONTENT = new PreviewError().a(Tag.UNSUPPORTED_CONTENT);
  public static final PreviewError UNSUPPORTED_EXTENSION = new PreviewError().a(Tag.UNSUPPORTED_EXTENSION);
  private Tag a;
  private LookupError b;
  
  private PreviewError() {}
  
  private PreviewError a(Tag paramTag)
  {
    PreviewError localPreviewError = new PreviewError();
    a = paramTag;
    return localPreviewError;
  }
  
  private PreviewError a(Tag paramTag, LookupError paramLookupError)
  {
    PreviewError localPreviewError = new PreviewError();
    a = paramTag;
    b = paramLookupError;
    return localPreviewError;
  }
  
  public static PreviewError path(LookupError paramLookupError)
  {
    if (paramLookupError != null) {
      return new PreviewError().a(Tag.PATH, paramLookupError);
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
    if ((paramObject instanceof PreviewError))
    {
      paramObject = (PreviewError)paramObject;
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
  
  public boolean isInProgress()
  {
    return a == Tag.IN_PROGRESS;
  }
  
  public boolean isPath()
  {
    return a == Tag.PATH;
  }
  
  public boolean isUnsupportedContent()
  {
    return a == Tag.UNSUPPORTED_CONTENT;
  }
  
  public boolean isUnsupportedExtension()
  {
    return a == Tag.UNSUPPORTED_EXTENSION;
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
      IN_PROGRESS = new Tag("IN_PROGRESS", 1);
      UNSUPPORTED_EXTENSION = new Tag("UNSUPPORTED_EXTENSION", 2);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<PreviewError>
  {
    public static final a a = new a();
    
    a() {}
    
    public PreviewError a(JsonParser paramJsonParser)
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
          localObject = PreviewError.path(LookupError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else if ("in_progress".equals(localObject))
        {
          localObject = PreviewError.IN_PROGRESS;
        }
        else if ("unsupported_extension".equals(localObject))
        {
          localObject = PreviewError.UNSUPPORTED_EXTENSION;
        }
        else
        {
          if (!"unsupported_content".equals(localObject)) {
            break label128;
          }
          localObject = PreviewError.UNSUPPORTED_CONTENT;
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
    
    public void a(PreviewError paramPreviewError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (PreviewError.1.a[paramPreviewError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramPreviewError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 4: 
        paramJsonGenerator.writeString("unsupported_content");
        return;
      case 3: 
        paramJsonGenerator.writeString("unsupported_extension");
        return;
      case 2: 
        paramJsonGenerator.writeString("in_progress");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("path", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path");
      LookupError.Serializer.INSTANCE.serialize(PreviewError.a(paramPreviewError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
