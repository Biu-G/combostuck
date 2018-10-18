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
import java.util.regex.Pattern;

public final class TemplateError
{
  public static final TemplateError OTHER = new TemplateError().a(Tag.OTHER);
  public static final TemplateError RESTRICTED_CONTENT = new TemplateError().a(Tag.RESTRICTED_CONTENT);
  private Tag a;
  private String b;
  
  private TemplateError() {}
  
  private TemplateError a(Tag paramTag)
  {
    TemplateError localTemplateError = new TemplateError();
    a = paramTag;
    return localTemplateError;
  }
  
  private TemplateError a(Tag paramTag, String paramString)
  {
    TemplateError localTemplateError = new TemplateError();
    a = paramTag;
    b = paramString;
    return localTemplateError;
  }
  
  public static TemplateError templateNotFound(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1)
      {
        if (Pattern.matches("(/|ptid:).*", paramString)) {
          return new TemplateError().a(Tag.TEMPLATE_NOT_FOUND, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is shorter than 1");
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
    if ((paramObject instanceof TemplateError))
    {
      paramObject = (TemplateError)paramObject;
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
  
  public String getTemplateNotFoundValue()
  {
    if (a == Tag.TEMPLATE_NOT_FOUND) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag.");
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
  
  public boolean isRestrictedContent()
  {
    return a == Tag.RESTRICTED_CONTENT;
  }
  
  public boolean isTemplateNotFound()
  {
    return a == Tag.TEMPLATE_NOT_FOUND;
  }
  
  public Tag tag()
  {
    return a;
  }
  
  public String toString()
  {
    return Serializer.INSTANCE.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return Serializer.INSTANCE.serialize(this, true);
  }
  
  public static class Serializer
    extends UnionSerializer<TemplateError>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public TemplateError deserialize(JsonParser paramJsonParser)
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
        if ("template_not_found".equals(localObject))
        {
          expectField("template_not_found", paramJsonParser);
          localObject = TemplateError.templateNotFound((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("restricted_content".equals(localObject))
        {
          localObject = TemplateError.RESTRICTED_CONTENT;
        }
        else
        {
          localObject = TemplateError.OTHER;
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
    
    public void serialize(TemplateError paramTemplateError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (TemplateError.1.a[paramTemplateError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("restricted_content");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("template_not_found", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("template_not_found");
      StoneSerializers.string().serialize(TemplateError.a(paramTemplateError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
  
  public static enum Tag
  {
    static
    {
      RESTRICTED_CONTENT = new Tag("RESTRICTED_CONTENT", 1);
    }
    
    private Tag() {}
  }
}
