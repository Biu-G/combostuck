package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class ListDocsCursorError
{
  public static final ListDocsCursorError OTHER = new ListDocsCursorError().a(Tag.OTHER);
  private Tag a;
  private PaperApiCursorError b;
  
  private ListDocsCursorError() {}
  
  private ListDocsCursorError a(Tag paramTag)
  {
    ListDocsCursorError localListDocsCursorError = new ListDocsCursorError();
    a = paramTag;
    return localListDocsCursorError;
  }
  
  private ListDocsCursorError a(Tag paramTag, PaperApiCursorError paramPaperApiCursorError)
  {
    ListDocsCursorError localListDocsCursorError = new ListDocsCursorError();
    a = paramTag;
    b = paramPaperApiCursorError;
    return localListDocsCursorError;
  }
  
  public static ListDocsCursorError cursorError(PaperApiCursorError paramPaperApiCursorError)
  {
    if (paramPaperApiCursorError != null) {
      return new ListDocsCursorError().a(Tag.CURSOR_ERROR, paramPaperApiCursorError);
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
    if ((paramObject instanceof ListDocsCursorError))
    {
      paramObject = (ListDocsCursorError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
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
  
  public PaperApiCursorError getCursorErrorValue()
  {
    if (a == Tag.CURSOR_ERROR) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.CURSOR_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isCursorError()
  {
    return a == Tag.CURSOR_ERROR;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
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
    extends UnionSerializer<ListDocsCursorError>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListDocsCursorError a(JsonParser paramJsonParser)
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
        if ("cursor_error".equals(localObject))
        {
          expectField("cursor_error", paramJsonParser);
          localObject = ListDocsCursorError.cursorError(PaperApiCursorError.a.a.a(paramJsonParser));
        }
        else
        {
          localObject = ListDocsCursorError.OTHER;
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
    
    public void a(ListDocsCursorError paramListDocsCursorError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (ListDocsCursorError.1.a[paramListDocsCursorError.tag().ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("cursor_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("cursor_error");
      PaperApiCursorError.a.a.a(ListDocsCursorError.a(paramListDocsCursorError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
