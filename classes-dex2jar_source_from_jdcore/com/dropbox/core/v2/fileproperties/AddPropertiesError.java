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

public final class AddPropertiesError
{
  public static final AddPropertiesError DOES_NOT_FIT_TEMPLATE = new AddPropertiesError().a(Tag.DOES_NOT_FIT_TEMPLATE);
  public static final AddPropertiesError OTHER;
  public static final AddPropertiesError PROPERTY_FIELD_TOO_LARGE;
  public static final AddPropertiesError PROPERTY_GROUP_ALREADY_EXISTS = new AddPropertiesError().a(Tag.PROPERTY_GROUP_ALREADY_EXISTS);
  public static final AddPropertiesError RESTRICTED_CONTENT = new AddPropertiesError().a(Tag.RESTRICTED_CONTENT);
  public static final AddPropertiesError UNSUPPORTED_FOLDER;
  private Tag a;
  private String b;
  private LookupError c;
  
  static
  {
    OTHER = new AddPropertiesError().a(Tag.OTHER);
    UNSUPPORTED_FOLDER = new AddPropertiesError().a(Tag.UNSUPPORTED_FOLDER);
    PROPERTY_FIELD_TOO_LARGE = new AddPropertiesError().a(Tag.PROPERTY_FIELD_TOO_LARGE);
  }
  
  private AddPropertiesError() {}
  
  private AddPropertiesError a(Tag paramTag)
  {
    AddPropertiesError localAddPropertiesError = new AddPropertiesError();
    a = paramTag;
    return localAddPropertiesError;
  }
  
  private AddPropertiesError a(Tag paramTag, LookupError paramLookupError)
  {
    AddPropertiesError localAddPropertiesError = new AddPropertiesError();
    a = paramTag;
    c = paramLookupError;
    return localAddPropertiesError;
  }
  
  private AddPropertiesError a(Tag paramTag, String paramString)
  {
    AddPropertiesError localAddPropertiesError = new AddPropertiesError();
    a = paramTag;
    b = paramString;
    return localAddPropertiesError;
  }
  
  public static AddPropertiesError path(LookupError paramLookupError)
  {
    if (paramLookupError != null) {
      return new AddPropertiesError().a(Tag.PATH, paramLookupError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static AddPropertiesError templateNotFound(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1)
      {
        if (Pattern.matches("(/|ptid:).*", paramString)) {
          return new AddPropertiesError().a(Tag.TEMPLATE_NOT_FOUND, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is shorter than 1");
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
    if ((paramObject instanceof AddPropertiesError))
    {
      paramObject = (AddPropertiesError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 8: 
        return true;
      case 7: 
        return true;
      case 6: 
        return true;
      case 5: 
        return true;
      case 4: 
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 3: 
        return true;
      case 2: 
        return true;
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
  
  public LookupError getPathValue()
  {
    if (a == Tag.PATH) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.PATH, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
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
    int i = Arrays.hashCode(new Object[] { a, b, c });
    return super.hashCode() * 31 + i;
  }
  
  public boolean isDoesNotFitTemplate()
  {
    return a == Tag.DOES_NOT_FIT_TEMPLATE;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isPath()
  {
    return a == Tag.PATH;
  }
  
  public boolean isPropertyFieldTooLarge()
  {
    return a == Tag.PROPERTY_FIELD_TOO_LARGE;
  }
  
  public boolean isPropertyGroupAlreadyExists()
  {
    return a == Tag.PROPERTY_GROUP_ALREADY_EXISTS;
  }
  
  public boolean isRestrictedContent()
  {
    return a == Tag.RESTRICTED_CONTENT;
  }
  
  public boolean isTemplateNotFound()
  {
    return a == Tag.TEMPLATE_NOT_FOUND;
  }
  
  public boolean isUnsupportedFolder()
  {
    return a == Tag.UNSUPPORTED_FOLDER;
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
    extends UnionSerializer<AddPropertiesError>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public AddPropertiesError deserialize(JsonParser paramJsonParser)
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
          localObject = AddPropertiesError.templateNotFound((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("restricted_content".equals(localObject))
        {
          localObject = AddPropertiesError.RESTRICTED_CONTENT;
        }
        else if ("other".equals(localObject))
        {
          localObject = AddPropertiesError.OTHER;
        }
        else if ("path".equals(localObject))
        {
          expectField("path", paramJsonParser);
          localObject = AddPropertiesError.path(LookupError.a.a.a(paramJsonParser));
        }
        else if ("unsupported_folder".equals(localObject))
        {
          localObject = AddPropertiesError.UNSUPPORTED_FOLDER;
        }
        else if ("property_field_too_large".equals(localObject))
        {
          localObject = AddPropertiesError.PROPERTY_FIELD_TOO_LARGE;
        }
        else if ("does_not_fit_template".equals(localObject))
        {
          localObject = AddPropertiesError.DOES_NOT_FIT_TEMPLATE;
        }
        else
        {
          if (!"property_group_already_exists".equals(localObject)) {
            break label208;
          }
          localObject = AddPropertiesError.PROPERTY_GROUP_ALREADY_EXISTS;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label208:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void serialize(AddPropertiesError paramAddPropertiesError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (AddPropertiesError.1.a[paramAddPropertiesError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramAddPropertiesError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 8: 
        paramJsonGenerator.writeString("property_group_already_exists");
        return;
      case 7: 
        paramJsonGenerator.writeString("does_not_fit_template");
        return;
      case 6: 
        paramJsonGenerator.writeString("property_field_too_large");
        return;
      case 5: 
        paramJsonGenerator.writeString("unsupported_folder");
        return;
      case 4: 
        paramJsonGenerator.writeStartObject();
        writeTag("path", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("path");
        LookupError.a.a.a(AddPropertiesError.b(paramAddPropertiesError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
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
      StoneSerializers.string().serialize(AddPropertiesError.a(paramAddPropertiesError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
  
  public static enum Tag
  {
    static
    {
      RESTRICTED_CONTENT = new Tag("RESTRICTED_CONTENT", 1);
      OTHER = new Tag("OTHER", 2);
      PATH = new Tag("PATH", 3);
      UNSUPPORTED_FOLDER = new Tag("UNSUPPORTED_FOLDER", 4);
      PROPERTY_FIELD_TOO_LARGE = new Tag("PROPERTY_FIELD_TOO_LARGE", 5);
    }
    
    private Tag() {}
  }
}
