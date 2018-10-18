package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class ListUsersCursorError
{
  public static final ListUsersCursorError DOC_NOT_FOUND = new ListUsersCursorError().a(Tag.DOC_NOT_FOUND);
  public static final ListUsersCursorError INSUFFICIENT_PERMISSIONS = new ListUsersCursorError().a(Tag.INSUFFICIENT_PERMISSIONS);
  public static final ListUsersCursorError OTHER = new ListUsersCursorError().a(Tag.OTHER);
  private Tag a;
  private PaperApiCursorError b;
  
  private ListUsersCursorError() {}
  
  private ListUsersCursorError a(Tag paramTag)
  {
    ListUsersCursorError localListUsersCursorError = new ListUsersCursorError();
    a = paramTag;
    return localListUsersCursorError;
  }
  
  private ListUsersCursorError a(Tag paramTag, PaperApiCursorError paramPaperApiCursorError)
  {
    ListUsersCursorError localListUsersCursorError = new ListUsersCursorError();
    a = paramTag;
    b = paramPaperApiCursorError;
    return localListUsersCursorError;
  }
  
  public static ListUsersCursorError cursorError(PaperApiCursorError paramPaperApiCursorError)
  {
    if (paramPaperApiCursorError != null) {
      return new ListUsersCursorError().a(Tag.CURSOR_ERROR, paramPaperApiCursorError);
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
    if ((paramObject instanceof ListUsersCursorError))
    {
      paramObject = (ListUsersCursorError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 4: 
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool = false;
        }
        return bool;
      case 3: 
        return true;
      case 2: 
        return true;
      }
      return true;
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
    int i = Arrays.hashCode(new Object[] { a, b });
    return super.hashCode() * 31 + i;
  }
  
  public boolean isCursorError()
  {
    return a == Tag.CURSOR_ERROR;
  }
  
  public boolean isDocNotFound()
  {
    return a == Tag.DOC_NOT_FOUND;
  }
  
  public boolean isInsufficientPermissions()
  {
    return a == Tag.INSUFFICIENT_PERMISSIONS;
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
    static
    {
      DOC_NOT_FOUND = new Tag("DOC_NOT_FOUND", 2);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<ListUsersCursorError>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListUsersCursorError a(JsonParser paramJsonParser)
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
        if ("insufficient_permissions".equals(localObject))
        {
          localObject = ListUsersCursorError.INSUFFICIENT_PERMISSIONS;
        }
        else if ("other".equals(localObject))
        {
          localObject = ListUsersCursorError.OTHER;
        }
        else if ("doc_not_found".equals(localObject))
        {
          localObject = ListUsersCursorError.DOC_NOT_FOUND;
        }
        else
        {
          if (!"cursor_error".equals(localObject)) {
            break label128;
          }
          expectField("cursor_error", paramJsonParser);
          localObject = ListUsersCursorError.cursorError(PaperApiCursorError.a.a.a(paramJsonParser));
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
    
    public void a(ListUsersCursorError paramListUsersCursorError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ListUsersCursorError.1.a[paramListUsersCursorError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramListUsersCursorError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 4: 
        paramJsonGenerator.writeStartObject();
        writeTag("cursor_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("cursor_error");
        PaperApiCursorError.a.a.a(ListUsersCursorError.a(paramListUsersCursorError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 3: 
        paramJsonGenerator.writeString("doc_not_found");
        return;
      case 2: 
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("insufficient_permissions");
    }
  }
}
