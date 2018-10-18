package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class PropertiesSearchError
{
  public static final PropertiesSearchError OTHER = new PropertiesSearchError().a(Tag.OTHER);
  private Tag a;
  private LookUpPropertiesError b;
  
  private PropertiesSearchError() {}
  
  private PropertiesSearchError a(Tag paramTag)
  {
    PropertiesSearchError localPropertiesSearchError = new PropertiesSearchError();
    a = paramTag;
    return localPropertiesSearchError;
  }
  
  private PropertiesSearchError a(Tag paramTag, LookUpPropertiesError paramLookUpPropertiesError)
  {
    PropertiesSearchError localPropertiesSearchError = new PropertiesSearchError();
    a = paramTag;
    b = paramLookUpPropertiesError;
    return localPropertiesSearchError;
  }
  
  public static PropertiesSearchError propertyGroupLookup(LookUpPropertiesError paramLookUpPropertiesError)
  {
    if (paramLookUpPropertiesError != null) {
      return new PropertiesSearchError().a(Tag.PROPERTY_GROUP_LOOKUP, paramLookUpPropertiesError);
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
    if ((paramObject instanceof PropertiesSearchError))
    {
      paramObject = (PropertiesSearchError)paramObject;
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
  
  public LookUpPropertiesError getPropertyGroupLookupValue()
  {
    if (a == Tag.PROPERTY_GROUP_LOOKUP) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.PROPERTY_GROUP_LOOKUP, but was Tag.");
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
  
  public boolean isPropertyGroupLookup()
  {
    return a == Tag.PROPERTY_GROUP_LOOKUP;
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
    extends UnionSerializer<PropertiesSearchError>
  {
    public static final a a = new a();
    
    a() {}
    
    public PropertiesSearchError a(JsonParser paramJsonParser)
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
        if ("property_group_lookup".equals(localObject))
        {
          expectField("property_group_lookup", paramJsonParser);
          localObject = PropertiesSearchError.propertyGroupLookup(LookUpPropertiesError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else
        {
          localObject = PropertiesSearchError.OTHER;
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
    
    public void a(PropertiesSearchError paramPropertiesSearchError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (PropertiesSearchError.1.a[paramPropertiesSearchError.tag().ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("property_group_lookup", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("property_group_lookup");
      LookUpPropertiesError.Serializer.INSTANCE.serialize(PropertiesSearchError.a(paramPropertiesSearchError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
