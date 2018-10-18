package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class ListRevisionsError
{
  public static final ListRevisionsError OTHER = new ListRevisionsError().a(Tag.OTHER);
  private Tag a;
  private LookupError b;
  
  private ListRevisionsError() {}
  
  private ListRevisionsError a(Tag paramTag)
  {
    ListRevisionsError localListRevisionsError = new ListRevisionsError();
    a = paramTag;
    return localListRevisionsError;
  }
  
  private ListRevisionsError a(Tag paramTag, LookupError paramLookupError)
  {
    ListRevisionsError localListRevisionsError = new ListRevisionsError();
    a = paramTag;
    b = paramLookupError;
    return localListRevisionsError;
  }
  
  public static ListRevisionsError path(LookupError paramLookupError)
  {
    if (paramLookupError != null) {
      return new ListRevisionsError().a(Tag.PATH, paramLookupError);
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
    if ((paramObject instanceof ListRevisionsError))
    {
      paramObject = (ListRevisionsError)paramObject;
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
    extends UnionSerializer<ListRevisionsError>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListRevisionsError a(JsonParser paramJsonParser)
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
          localObject = ListRevisionsError.path(LookupError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else
        {
          localObject = ListRevisionsError.OTHER;
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
    
    public void a(ListRevisionsError paramListRevisionsError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (ListRevisionsError.1.a[paramListRevisionsError.tag().ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("path", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path");
      LookupError.Serializer.INSTANCE.serialize(ListRevisionsError.a(paramListRevisionsError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
