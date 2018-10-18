package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class DownloadZipError
{
  public static final DownloadZipError OTHER = new DownloadZipError().a(Tag.OTHER);
  public static final DownloadZipError TOO_LARGE = new DownloadZipError().a(Tag.TOO_LARGE);
  public static final DownloadZipError TOO_MANY_FILES = new DownloadZipError().a(Tag.TOO_MANY_FILES);
  private Tag a;
  private LookupError b;
  
  private DownloadZipError() {}
  
  private DownloadZipError a(Tag paramTag)
  {
    DownloadZipError localDownloadZipError = new DownloadZipError();
    a = paramTag;
    return localDownloadZipError;
  }
  
  private DownloadZipError a(Tag paramTag, LookupError paramLookupError)
  {
    DownloadZipError localDownloadZipError = new DownloadZipError();
    a = paramTag;
    b = paramLookupError;
    return localDownloadZipError;
  }
  
  public static DownloadZipError path(LookupError paramLookupError)
  {
    if (paramLookupError != null) {
      return new DownloadZipError().a(Tag.PATH, paramLookupError);
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
    if ((paramObject instanceof DownloadZipError))
    {
      paramObject = (DownloadZipError)paramObject;
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
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isPath()
  {
    return a == Tag.PATH;
  }
  
  public boolean isTooLarge()
  {
    return a == Tag.TOO_LARGE;
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
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<DownloadZipError>
  {
    public static final a a = new a();
    
    a() {}
    
    public DownloadZipError a(JsonParser paramJsonParser)
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
          localObject = DownloadZipError.path(LookupError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else if ("too_large".equals(localObject))
        {
          localObject = DownloadZipError.TOO_LARGE;
        }
        else if ("too_many_files".equals(localObject))
        {
          localObject = DownloadZipError.TOO_MANY_FILES;
        }
        else
        {
          localObject = DownloadZipError.OTHER;
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
    
    public void a(DownloadZipError paramDownloadZipError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (DownloadZipError.1.a[paramDownloadZipError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeString("too_many_files");
        return;
      case 2: 
        paramJsonGenerator.writeString("too_large");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("path", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path");
      LookupError.Serializer.INSTANCE.serialize(DownloadZipError.a(paramDownloadZipError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
