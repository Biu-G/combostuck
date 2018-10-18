package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class GetSharedLinksError
{
  public static final GetSharedLinksError OTHER = new GetSharedLinksError().a(Tag.OTHER);
  private Tag a;
  private String b;
  
  private GetSharedLinksError() {}
  
  private GetSharedLinksError a(Tag paramTag)
  {
    GetSharedLinksError localGetSharedLinksError = new GetSharedLinksError();
    a = paramTag;
    return localGetSharedLinksError;
  }
  
  private GetSharedLinksError a(Tag paramTag, String paramString)
  {
    GetSharedLinksError localGetSharedLinksError = new GetSharedLinksError();
    a = paramTag;
    b = paramString;
    return localGetSharedLinksError;
  }
  
  public static GetSharedLinksError path()
  {
    return path(null);
  }
  
  public static GetSharedLinksError path(String paramString)
  {
    return new GetSharedLinksError().a(Tag.PATH, paramString);
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
    if ((paramObject instanceof GetSharedLinksError))
    {
      paramObject = (GetSharedLinksError)paramObject;
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
        if ((b != null) && (b.equals(b))) {
          return true;
        }
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  public String getPathValue()
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
    extends UnionSerializer<GetSharedLinksError>
  {
    public static final a a = new a();
    
    a() {}
    
    public GetSharedLinksError a(JsonParser paramJsonParser)
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
          localObject = null;
          if (paramJsonParser.getCurrentToken() != JsonToken.END_OBJECT)
          {
            expectField("path", paramJsonParser);
            localObject = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          }
          if (localObject == null) {
            localObject = GetSharedLinksError.path();
          } else {
            localObject = GetSharedLinksError.path((String)localObject);
          }
        }
        else
        {
          localObject = GetSharedLinksError.OTHER;
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
    
    public void a(GetSharedLinksError paramGetSharedLinksError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (GetSharedLinksError.1.a[paramGetSharedLinksError.tag().ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("path", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path");
      StoneSerializers.nullable(StoneSerializers.string()).serialize(GetSharedLinksError.a(paramGetSharedLinksError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
