package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.LookupError;
import com.dropbox.core.v2.files.LookupError.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class CreateSharedLinkError
{
  public static final CreateSharedLinkError OTHER = new CreateSharedLinkError().a(Tag.OTHER);
  private Tag a;
  private LookupError b;
  
  private CreateSharedLinkError() {}
  
  private CreateSharedLinkError a(Tag paramTag)
  {
    CreateSharedLinkError localCreateSharedLinkError = new CreateSharedLinkError();
    a = paramTag;
    return localCreateSharedLinkError;
  }
  
  private CreateSharedLinkError a(Tag paramTag, LookupError paramLookupError)
  {
    CreateSharedLinkError localCreateSharedLinkError = new CreateSharedLinkError();
    a = paramTag;
    b = paramLookupError;
    return localCreateSharedLinkError;
  }
  
  public static CreateSharedLinkError path(LookupError paramLookupError)
  {
    if (paramLookupError != null) {
      return new CreateSharedLinkError().a(Tag.PATH, paramLookupError);
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
    if ((paramObject instanceof CreateSharedLinkError))
    {
      paramObject = (CreateSharedLinkError)paramObject;
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
    extends UnionSerializer<CreateSharedLinkError>
  {
    public static final a a = new a();
    
    a() {}
    
    public CreateSharedLinkError a(JsonParser paramJsonParser)
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
          localObject = CreateSharedLinkError.path(LookupError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else
        {
          localObject = CreateSharedLinkError.OTHER;
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
    
    public void a(CreateSharedLinkError paramCreateSharedLinkError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (CreateSharedLinkError.1.a[paramCreateSharedLinkError.tag().ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("path", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path");
      LookupError.Serializer.INSTANCE.serialize(CreateSharedLinkError.a(paramCreateSharedLinkError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
