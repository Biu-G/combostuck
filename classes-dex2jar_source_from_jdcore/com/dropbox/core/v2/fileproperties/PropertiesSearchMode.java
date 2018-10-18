package com.dropbox.core.v2.fileproperties;

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

public final class PropertiesSearchMode
{
  public static final PropertiesSearchMode OTHER = new PropertiesSearchMode().a(Tag.OTHER);
  private Tag a;
  private String b;
  
  private PropertiesSearchMode() {}
  
  private PropertiesSearchMode a(Tag paramTag)
  {
    PropertiesSearchMode localPropertiesSearchMode = new PropertiesSearchMode();
    a = paramTag;
    return localPropertiesSearchMode;
  }
  
  private PropertiesSearchMode a(Tag paramTag, String paramString)
  {
    PropertiesSearchMode localPropertiesSearchMode = new PropertiesSearchMode();
    a = paramTag;
    b = paramString;
    return localPropertiesSearchMode;
  }
  
  public static PropertiesSearchMode fieldName(String paramString)
  {
    if (paramString != null) {
      return new PropertiesSearchMode().a(Tag.FIELD_NAME, paramString);
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
    if ((paramObject instanceof PropertiesSearchMode))
    {
      paramObject = (PropertiesSearchMode)paramObject;
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
  
  public String getFieldNameValue()
  {
    if (a == Tag.FIELD_NAME) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.FIELD_NAME, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isFieldName()
  {
    return a == Tag.FIELD_NAME;
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
    extends UnionSerializer<PropertiesSearchMode>
  {
    public static final a a = new a();
    
    a() {}
    
    public PropertiesSearchMode a(JsonParser paramJsonParser)
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
        if ("field_name".equals(localObject))
        {
          expectField("field_name", paramJsonParser);
          localObject = PropertiesSearchMode.fieldName((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else
        {
          localObject = PropertiesSearchMode.OTHER;
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
    
    public void a(PropertiesSearchMode paramPropertiesSearchMode, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (PropertiesSearchMode.1.a[paramPropertiesSearchMode.tag().ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("field_name", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("field_name");
      StoneSerializers.string().serialize(PropertiesSearchMode.a(paramPropertiesSearchMode), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
