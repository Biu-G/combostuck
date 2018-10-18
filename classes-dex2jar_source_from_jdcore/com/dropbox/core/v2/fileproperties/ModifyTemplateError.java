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

public final class ModifyTemplateError
{
  public static final ModifyTemplateError CONFLICTING_PROPERTY_NAMES;
  public static final ModifyTemplateError OTHER;
  public static final ModifyTemplateError RESTRICTED_CONTENT = new ModifyTemplateError().a(Tag.RESTRICTED_CONTENT);
  public static final ModifyTemplateError TEMPLATE_ATTRIBUTE_TOO_LARGE = new ModifyTemplateError().a(Tag.TEMPLATE_ATTRIBUTE_TOO_LARGE);
  public static final ModifyTemplateError TOO_MANY_PROPERTIES;
  public static final ModifyTemplateError TOO_MANY_TEMPLATES;
  private Tag a;
  private String b;
  
  static
  {
    OTHER = new ModifyTemplateError().a(Tag.OTHER);
    CONFLICTING_PROPERTY_NAMES = new ModifyTemplateError().a(Tag.CONFLICTING_PROPERTY_NAMES);
    TOO_MANY_PROPERTIES = new ModifyTemplateError().a(Tag.TOO_MANY_PROPERTIES);
    TOO_MANY_TEMPLATES = new ModifyTemplateError().a(Tag.TOO_MANY_TEMPLATES);
  }
  
  private ModifyTemplateError() {}
  
  private ModifyTemplateError a(Tag paramTag)
  {
    ModifyTemplateError localModifyTemplateError = new ModifyTemplateError();
    a = paramTag;
    return localModifyTemplateError;
  }
  
  private ModifyTemplateError a(Tag paramTag, String paramString)
  {
    ModifyTemplateError localModifyTemplateError = new ModifyTemplateError();
    a = paramTag;
    b = paramString;
    return localModifyTemplateError;
  }
  
  public static ModifyTemplateError templateNotFound(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1)
      {
        if (Pattern.matches("(/|ptid:).*", paramString)) {
          return new ModifyTemplateError().a(Tag.TEMPLATE_NOT_FOUND, paramString);
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
    if ((paramObject instanceof ModifyTemplateError))
    {
      paramObject = (ModifyTemplateError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 7: 
        return true;
      case 6: 
        return true;
      case 5: 
        return true;
      case 4: 
        return true;
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
    int i = Arrays.hashCode(new Object[] { a, b });
    return super.hashCode() * 31 + i;
  }
  
  public boolean isConflictingPropertyNames()
  {
    return a == Tag.CONFLICTING_PROPERTY_NAMES;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isRestrictedContent()
  {
    return a == Tag.RESTRICTED_CONTENT;
  }
  
  public boolean isTemplateAttributeTooLarge()
  {
    return a == Tag.TEMPLATE_ATTRIBUTE_TOO_LARGE;
  }
  
  public boolean isTemplateNotFound()
  {
    return a == Tag.TEMPLATE_NOT_FOUND;
  }
  
  public boolean isTooManyProperties()
  {
    return a == Tag.TOO_MANY_PROPERTIES;
  }
  
  public boolean isTooManyTemplates()
  {
    return a == Tag.TOO_MANY_TEMPLATES;
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
    extends UnionSerializer<ModifyTemplateError>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public ModifyTemplateError deserialize(JsonParser paramJsonParser)
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
          localObject = ModifyTemplateError.templateNotFound((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("restricted_content".equals(localObject))
        {
          localObject = ModifyTemplateError.RESTRICTED_CONTENT;
        }
        else if ("other".equals(localObject))
        {
          localObject = ModifyTemplateError.OTHER;
        }
        else if ("conflicting_property_names".equals(localObject))
        {
          localObject = ModifyTemplateError.CONFLICTING_PROPERTY_NAMES;
        }
        else if ("too_many_properties".equals(localObject))
        {
          localObject = ModifyTemplateError.TOO_MANY_PROPERTIES;
        }
        else if ("too_many_templates".equals(localObject))
        {
          localObject = ModifyTemplateError.TOO_MANY_TEMPLATES;
        }
        else
        {
          if (!"template_attribute_too_large".equals(localObject)) {
            break label179;
          }
          localObject = ModifyTemplateError.TEMPLATE_ATTRIBUTE_TOO_LARGE;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label179:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void serialize(ModifyTemplateError paramModifyTemplateError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ModifyTemplateError.1.a[paramModifyTemplateError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramModifyTemplateError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 7: 
        paramJsonGenerator.writeString("template_attribute_too_large");
        return;
      case 6: 
        paramJsonGenerator.writeString("too_many_templates");
        return;
      case 5: 
        paramJsonGenerator.writeString("too_many_properties");
        return;
      case 4: 
        paramJsonGenerator.writeString("conflicting_property_names");
        return;
      case 3: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("restricted_content");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("template_not_found", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("template_not_found");
      StoneSerializers.string().serialize(ModifyTemplateError.a(paramModifyTemplateError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
  
  public static enum Tag
  {
    static
    {
      RESTRICTED_CONTENT = new Tag("RESTRICTED_CONTENT", 1);
      OTHER = new Tag("OTHER", 2);
      CONFLICTING_PROPERTY_NAMES = new Tag("CONFLICTING_PROPERTY_NAMES", 3);
      TOO_MANY_PROPERTIES = new Tag("TOO_MANY_PROPERTIES", 4);
      TOO_MANY_TEMPLATES = new Tag("TOO_MANY_TEMPLATES", 5);
    }
    
    private Tag() {}
  }
}
