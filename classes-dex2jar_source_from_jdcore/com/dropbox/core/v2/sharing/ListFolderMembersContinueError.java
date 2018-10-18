package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class ListFolderMembersContinueError
{
  public static final ListFolderMembersContinueError INVALID_CURSOR = new ListFolderMembersContinueError().a(Tag.INVALID_CURSOR);
  public static final ListFolderMembersContinueError OTHER = new ListFolderMembersContinueError().a(Tag.OTHER);
  private Tag a;
  private SharedFolderAccessError b;
  
  private ListFolderMembersContinueError() {}
  
  private ListFolderMembersContinueError a(Tag paramTag)
  {
    ListFolderMembersContinueError localListFolderMembersContinueError = new ListFolderMembersContinueError();
    a = paramTag;
    return localListFolderMembersContinueError;
  }
  
  private ListFolderMembersContinueError a(Tag paramTag, SharedFolderAccessError paramSharedFolderAccessError)
  {
    ListFolderMembersContinueError localListFolderMembersContinueError = new ListFolderMembersContinueError();
    a = paramTag;
    b = paramSharedFolderAccessError;
    return localListFolderMembersContinueError;
  }
  
  public static ListFolderMembersContinueError accessError(SharedFolderAccessError paramSharedFolderAccessError)
  {
    if (paramSharedFolderAccessError != null) {
      return new ListFolderMembersContinueError().a(Tag.ACCESS_ERROR, paramSharedFolderAccessError);
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
    if ((paramObject instanceof ListFolderMembersContinueError))
    {
      paramObject = (ListFolderMembersContinueError)paramObject;
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
  
  public SharedFolderAccessError getAccessErrorValue()
  {
    if (a == Tag.ACCESS_ERROR) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ACCESS_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isAccessError()
  {
    return a == Tag.ACCESS_ERROR;
  }
  
  public boolean isInvalidCursor()
  {
    return a == Tag.INVALID_CURSOR;
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
    extends UnionSerializer<ListFolderMembersContinueError>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListFolderMembersContinueError a(JsonParser paramJsonParser)
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
        if ("access_error".equals(localObject))
        {
          expectField("access_error", paramJsonParser);
          localObject = ListFolderMembersContinueError.accessError(SharedFolderAccessError.a.a.a(paramJsonParser));
        }
        else if ("invalid_cursor".equals(localObject))
        {
          localObject = ListFolderMembersContinueError.INVALID_CURSOR;
        }
        else
        {
          localObject = ListFolderMembersContinueError.OTHER;
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
    
    public void a(ListFolderMembersContinueError paramListFolderMembersContinueError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ListFolderMembersContinueError.1.a[paramListFolderMembersContinueError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("invalid_cursor");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("access_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_error");
      SharedFolderAccessError.a.a.a(ListFolderMembersContinueError.a(paramListFolderMembersContinueError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
