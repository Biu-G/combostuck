package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class UploadSessionLookupError
{
  public static final UploadSessionLookupError CLOSED;
  public static final UploadSessionLookupError NOT_CLOSED;
  public static final UploadSessionLookupError NOT_FOUND = new UploadSessionLookupError().a(Tag.NOT_FOUND);
  public static final UploadSessionLookupError OTHER = new UploadSessionLookupError().a(Tag.OTHER);
  public static final UploadSessionLookupError TOO_LARGE;
  private Tag a;
  private UploadSessionOffsetError b;
  
  static
  {
    CLOSED = new UploadSessionLookupError().a(Tag.CLOSED);
    NOT_CLOSED = new UploadSessionLookupError().a(Tag.NOT_CLOSED);
    TOO_LARGE = new UploadSessionLookupError().a(Tag.TOO_LARGE);
  }
  
  private UploadSessionLookupError() {}
  
  private UploadSessionLookupError a(Tag paramTag)
  {
    UploadSessionLookupError localUploadSessionLookupError = new UploadSessionLookupError();
    a = paramTag;
    return localUploadSessionLookupError;
  }
  
  private UploadSessionLookupError a(Tag paramTag, UploadSessionOffsetError paramUploadSessionOffsetError)
  {
    UploadSessionLookupError localUploadSessionLookupError = new UploadSessionLookupError();
    a = paramTag;
    b = paramUploadSessionOffsetError;
    return localUploadSessionLookupError;
  }
  
  public static UploadSessionLookupError incorrectOffset(UploadSessionOffsetError paramUploadSessionOffsetError)
  {
    if (paramUploadSessionOffsetError != null) {
      return new UploadSessionLookupError().a(Tag.INCORRECT_OFFSET, paramUploadSessionOffsetError);
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
    if ((paramObject instanceof UploadSessionLookupError))
    {
      paramObject = (UploadSessionLookupError)paramObject;
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
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool = false;
        }
        return bool;
      }
      return true;
    }
    return false;
  }
  
  public UploadSessionOffsetError getIncorrectOffsetValue()
  {
    if (a == Tag.INCORRECT_OFFSET) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.INCORRECT_OFFSET, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isClosed()
  {
    return a == Tag.CLOSED;
  }
  
  public boolean isIncorrectOffset()
  {
    return a == Tag.INCORRECT_OFFSET;
  }
  
  public boolean isNotClosed()
  {
    return a == Tag.NOT_CLOSED;
  }
  
  public boolean isNotFound()
  {
    return a == Tag.NOT_FOUND;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isTooLarge()
  {
    return a == Tag.TOO_LARGE;
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
      INCORRECT_OFFSET = new Tag("INCORRECT_OFFSET", 1);
      CLOSED = new Tag("CLOSED", 2);
      NOT_CLOSED = new Tag("NOT_CLOSED", 3);
      TOO_LARGE = new Tag("TOO_LARGE", 4);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<UploadSessionLookupError>
  {
    public static final a a = new a();
    
    a() {}
    
    public UploadSessionLookupError a(JsonParser paramJsonParser)
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
        if ("not_found".equals(localObject)) {
          localObject = UploadSessionLookupError.NOT_FOUND;
        } else if ("incorrect_offset".equals(localObject)) {
          localObject = UploadSessionLookupError.incorrectOffset(UploadSessionOffsetError.a.a.a(paramJsonParser, true));
        } else if ("closed".equals(localObject)) {
          localObject = UploadSessionLookupError.CLOSED;
        } else if ("not_closed".equals(localObject)) {
          localObject = UploadSessionLookupError.NOT_CLOSED;
        } else if ("too_large".equals(localObject)) {
          localObject = UploadSessionLookupError.TOO_LARGE;
        } else {
          localObject = UploadSessionLookupError.OTHER;
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
    
    public void a(UploadSessionLookupError paramUploadSessionLookupError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (UploadSessionLookupError.1.a[paramUploadSessionLookupError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 5: 
        paramJsonGenerator.writeString("too_large");
        return;
      case 4: 
        paramJsonGenerator.writeString("not_closed");
        return;
      case 3: 
        paramJsonGenerator.writeString("closed");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("incorrect_offset", paramJsonGenerator);
        UploadSessionOffsetError.a.a.a(UploadSessionLookupError.a(paramUploadSessionLookupError), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeString("not_found");
    }
  }
}
