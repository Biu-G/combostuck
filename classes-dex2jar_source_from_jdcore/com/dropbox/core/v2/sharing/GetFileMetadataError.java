package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class GetFileMetadataError
{
  public static final GetFileMetadataError OTHER = new GetFileMetadataError().a(Tag.OTHER);
  private Tag a;
  private SharingUserError b;
  private SharingFileAccessError c;
  
  private GetFileMetadataError() {}
  
  private GetFileMetadataError a(Tag paramTag)
  {
    GetFileMetadataError localGetFileMetadataError = new GetFileMetadataError();
    a = paramTag;
    return localGetFileMetadataError;
  }
  
  private GetFileMetadataError a(Tag paramTag, SharingFileAccessError paramSharingFileAccessError)
  {
    GetFileMetadataError localGetFileMetadataError = new GetFileMetadataError();
    a = paramTag;
    c = paramSharingFileAccessError;
    return localGetFileMetadataError;
  }
  
  private GetFileMetadataError a(Tag paramTag, SharingUserError paramSharingUserError)
  {
    GetFileMetadataError localGetFileMetadataError = new GetFileMetadataError();
    a = paramTag;
    b = paramSharingUserError;
    return localGetFileMetadataError;
  }
  
  public static GetFileMetadataError accessError(SharingFileAccessError paramSharingFileAccessError)
  {
    if (paramSharingFileAccessError != null) {
      return new GetFileMetadataError().a(Tag.ACCESS_ERROR, paramSharingFileAccessError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static GetFileMetadataError userError(SharingUserError paramSharingUserError)
  {
    if (paramSharingUserError != null) {
      return new GetFileMetadataError().a(Tag.USER_ERROR, paramSharingUserError);
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
    if ((paramObject instanceof GetFileMetadataError))
    {
      paramObject = (GetFileMetadataError)paramObject;
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
    extends UnionSerializer<GetFileMetadataError>
  {
    public static final a a = new a();
    
    a() {}
    
    public GetFileMetadataError a(JsonParser paramJsonParser)
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
          localObject = GetFileMetadataError.userError(SharingUserError.a.a.a(paramJsonParser));
        }
        else if ("access_error".equals(localObject))
        {
          expectField("access_error", paramJsonParser);
          localObject = GetFileMetadataError.accessError(SharingFileAccessError.a.a.a(paramJsonParser));
        }
        else
        {
          localObject = GetFileMetadataError.OTHER;
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
    
    public void a(GetFileMetadataError paramGetFileMetadataError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GetFileMetadataError.1.a[paramGetFileMetadataError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("access_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("access_error");
        SharingFileAccessError.a.a.a(GetFileMetadataError.b(paramGetFileMetadataError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("user_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("user_error");
      SharingUserError.a.a.a(GetFileMetadataError.a(paramGetFileMetadataError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
