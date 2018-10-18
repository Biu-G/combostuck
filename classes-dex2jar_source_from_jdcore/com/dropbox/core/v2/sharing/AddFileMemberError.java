package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class AddFileMemberError
{
  public static final AddFileMemberError INVALID_COMMENT = new AddFileMemberError().a(Tag.INVALID_COMMENT);
  public static final AddFileMemberError OTHER = new AddFileMemberError().a(Tag.OTHER);
  public static final AddFileMemberError RATE_LIMIT = new AddFileMemberError().a(Tag.RATE_LIMIT);
  private Tag a;
  private SharingUserError b;
  private SharingFileAccessError c;
  
  private AddFileMemberError() {}
  
  private AddFileMemberError a(Tag paramTag)
  {
    AddFileMemberError localAddFileMemberError = new AddFileMemberError();
    a = paramTag;
    return localAddFileMemberError;
  }
  
  private AddFileMemberError a(Tag paramTag, SharingFileAccessError paramSharingFileAccessError)
  {
    AddFileMemberError localAddFileMemberError = new AddFileMemberError();
    a = paramTag;
    c = paramSharingFileAccessError;
    return localAddFileMemberError;
  }
  
  private AddFileMemberError a(Tag paramTag, SharingUserError paramSharingUserError)
  {
    AddFileMemberError localAddFileMemberError = new AddFileMemberError();
    a = paramTag;
    b = paramSharingUserError;
    return localAddFileMemberError;
  }
  
  public static AddFileMemberError accessError(SharingFileAccessError paramSharingFileAccessError)
  {
    if (paramSharingFileAccessError != null) {
      return new AddFileMemberError().a(Tag.ACCESS_ERROR, paramSharingFileAccessError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static AddFileMemberError userError(SharingUserError paramSharingUserError)
  {
    if (paramSharingUserError != null) {
      return new AddFileMemberError().a(Tag.USER_ERROR, paramSharingUserError);
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
    if ((paramObject instanceof AddFileMemberError))
    {
      paramObject = (AddFileMemberError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 5: 
        return true;
      case 4: 
        return true;
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
  
  public SharingFileAccessError getAccessErrorValue()
  {
    if (a == Tag.ACCESS_ERROR) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ACCESS_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
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
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public boolean isAccessError()
  {
    return a == Tag.ACCESS_ERROR;
  }
  
  public boolean isInvalidComment()
  {
    return a == Tag.INVALID_COMMENT;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isRateLimit()
  {
    return a == Tag.RATE_LIMIT;
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
    static
    {
      ACCESS_ERROR = new Tag("ACCESS_ERROR", 1);
      RATE_LIMIT = new Tag("RATE_LIMIT", 2);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<AddFileMemberError>
  {
    public static final a a = new a();
    
    a() {}
    
    public AddFileMemberError a(JsonParser paramJsonParser)
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
          localObject = AddFileMemberError.userError(SharingUserError.a.a.a(paramJsonParser));
        }
        else if ("access_error".equals(localObject))
        {
          expectField("access_error", paramJsonParser);
          localObject = AddFileMemberError.accessError(SharingFileAccessError.a.a.a(paramJsonParser));
        }
        else if ("rate_limit".equals(localObject))
        {
          localObject = AddFileMemberError.RATE_LIMIT;
        }
        else if ("invalid_comment".equals(localObject))
        {
          localObject = AddFileMemberError.INVALID_COMMENT;
        }
        else
        {
          localObject = AddFileMemberError.OTHER;
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
    
    public void a(AddFileMemberError paramAddFileMemberError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (AddFileMemberError.1.a[paramAddFileMemberError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 4: 
        paramJsonGenerator.writeString("invalid_comment");
        return;
      case 3: 
        paramJsonGenerator.writeString("rate_limit");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("access_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("access_error");
        SharingFileAccessError.a.a.a(AddFileMemberError.b(paramAddFileMemberError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("user_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("user_error");
      SharingUserError.a.a.a(AddFileMemberError.a(paramAddFileMemberError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
