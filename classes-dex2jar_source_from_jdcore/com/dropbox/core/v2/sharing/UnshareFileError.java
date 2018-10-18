package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class UnshareFileError
{
  public static final UnshareFileError OTHER = new UnshareFileError().a(Tag.OTHER);
  private Tag a;
  private SharingUserError b;
  private SharingFileAccessError c;
  
  private UnshareFileError() {}
  
  private UnshareFileError a(Tag paramTag)
  {
    UnshareFileError localUnshareFileError = new UnshareFileError();
    a = paramTag;
    return localUnshareFileError;
  }
  
  private UnshareFileError a(Tag paramTag, SharingFileAccessError paramSharingFileAccessError)
  {
    UnshareFileError localUnshareFileError = new UnshareFileError();
    a = paramTag;
    c = paramSharingFileAccessError;
    return localUnshareFileError;
  }
  
  private UnshareFileError a(Tag paramTag, SharingUserError paramSharingUserError)
  {
    UnshareFileError localUnshareFileError = new UnshareFileError();
    a = paramTag;
    b = paramSharingUserError;
    return localUnshareFileError;
  }
  
  public static UnshareFileError accessError(SharingFileAccessError paramSharingFileAccessError)
  {
    if (paramSharingFileAccessError != null) {
      return new UnshareFileError().a(Tag.ACCESS_ERROR, paramSharingFileAccessError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static UnshareFileError userError(SharingUserError paramSharingUserError)
  {
    if (paramSharingUserError != null) {
      return new UnshareFileError().a(Tag.USER_ERROR, paramSharingUserError);
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
    if ((paramObject instanceof UnshareFileError))
    {
      paramObject = (UnshareFileError)paramObject;
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
    extends UnionSerializer<UnshareFileError>
  {
    public static final a a = new a();
    
    a() {}
    
    public UnshareFileError a(JsonParser paramJsonParser)
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
          localObject = UnshareFileError.userError(SharingUserError.a.a.a(paramJsonParser));
        }
        else if ("access_error".equals(localObject))
        {
          expectField("access_error", paramJsonParser);
          localObject = UnshareFileError.accessError(SharingFileAccessError.a.a.a(paramJsonParser));
        }
        else
        {
          localObject = UnshareFileError.OTHER;
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
    
    public void a(UnshareFileError paramUnshareFileError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (UnshareFileError.1.a[paramUnshareFileError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("access_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("access_error");
        SharingFileAccessError.a.a.a(UnshareFileError.b(paramUnshareFileError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("user_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("user_error");
      SharingUserError.a.a.a(UnshareFileError.a(paramUnshareFileError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
