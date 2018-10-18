package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class ListFilesContinueError
{
  public static final ListFilesContinueError INVALID_CURSOR = new ListFilesContinueError().a(Tag.INVALID_CURSOR);
  public static final ListFilesContinueError OTHER = new ListFilesContinueError().a(Tag.OTHER);
  private Tag a;
  private SharingUserError b;
  
  private ListFilesContinueError() {}
  
  private ListFilesContinueError a(Tag paramTag)
  {
    ListFilesContinueError localListFilesContinueError = new ListFilesContinueError();
    a = paramTag;
    return localListFilesContinueError;
  }
  
  private ListFilesContinueError a(Tag paramTag, SharingUserError paramSharingUserError)
  {
    ListFilesContinueError localListFilesContinueError = new ListFilesContinueError();
    a = paramTag;
    b = paramSharingUserError;
    return localListFilesContinueError;
  }
  
  public static ListFilesContinueError userError(SharingUserError paramSharingUserError)
  {
    if (paramSharingUserError != null) {
      return new ListFilesContinueError().a(Tag.USER_ERROR, paramSharingUserError);
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
    if ((paramObject instanceof ListFilesContinueError))
    {
      paramObject = (ListFilesContinueError)paramObject;
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
  
  public SharingUserError getUserErrorValue()
  {
    if (a == Tag.USER_ERROR) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.USER_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isInvalidCursor()
  {
    return a == Tag.INVALID_CURSOR;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isUserError()
  {
    return a == Tag.USER_ERROR;
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
    extends UnionSerializer<ListFilesContinueError>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListFilesContinueError a(JsonParser paramJsonParser)
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
        if ("user_error".equals(localObject))
        {
          expectField("user_error", paramJsonParser);
          localObject = ListFilesContinueError.userError(SharingUserError.a.a.a(paramJsonParser));
        }
        else if ("invalid_cursor".equals(localObject))
        {
          localObject = ListFilesContinueError.INVALID_CURSOR;
        }
        else
        {
          localObject = ListFilesContinueError.OTHER;
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
    
    public void a(ListFilesContinueError paramListFilesContinueError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ListFilesContinueError.1.a[paramListFilesContinueError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("invalid_cursor");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("user_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("user_error");
      SharingUserError.a.a.a(ListFilesContinueError.a(paramListFilesContinueError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
