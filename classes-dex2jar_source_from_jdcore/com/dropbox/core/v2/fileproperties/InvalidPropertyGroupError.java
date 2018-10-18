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

public final class InvalidPropertyGroupError
{
  public static final InvalidPropertyGroupError DOES_NOT_FIT_TEMPLATE = new InvalidPropertyGroupError().a(Tag.DOES_NOT_FIT_TEMPLATE);
  public static final InvalidPropertyGroupError OTHER;
  public static final InvalidPropertyGroupError PROPERTY_FIELD_TOO_LARGE;
  public static final InvalidPropertyGroupError RESTRICTED_CONTENT = new InvalidPropertyGroupError().a(Tag.RESTRICTED_CONTENT);
  public static final InvalidPropertyGroupError UNSUPPORTED_FOLDER;
  private Tag a;
  private String b;
  private LookupError c;
  
  static
  {
    OTHER = new InvalidPropertyGroupError().a(Tag.OTHER);
    UNSUPPORTED_FOLDER = new InvalidPropertyGroupError().a(Tag.UNSUPPORTED_FOLDER);
    PROPERTY_FIELD_TOO_LARGE = new InvalidPropertyGroupError().a(Tag.PROPERTY_FIELD_TOO_LARGE);
  }
  
  private InvalidPropertyGroupError() {}
  
  private InvalidPropertyGroupError a(Tag paramTag)
  {
    InvalidPropertyGroupError localInvalidPropertyGroupError = new InvalidPropertyGroupError();
    a = paramTag;
    return localInvalidPropertyGroupError;
  }
  
  private InvalidPropertyGroupError a(Tag paramTag, LookupError paramLookupError)
  {
    InvalidPropertyGroupError localInvalidPropertyGroupError = new InvalidPropertyGroupError();
    a = paramTag;
    c = paramLookupError;
    return localInvalidPropertyGroupError;
  }
  
  private InvalidPropertyGroupError a(Tag paramTag, String paramString)
  {
    InvalidPropertyGroupError localInvalidPropertyGroupError = new InvalidPropertyGroupError();
    a = paramTag;
    b = paramString;
    return localInvalidPropertyGroupError;
  }
  
  public static InvalidPropertyGroupError path(LookupError paramLookupError)
  {
    if (paramLookupError != null) {
      return new InvalidPropertyGroupError().a(Tag.PATH, paramLookupError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static InvalidPropertyGroupError templateNotFound(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1)
      {
        if (Pattern.matches("(/|ptid:).*", paramString)) {
          return new InvalidPropertyGroupError().a(Tag.TEMPLATE_NOT_FOUND, paramString);
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
    if ((paramObject instanceof InvalidPropertyGroupError))
    {
      paramObject = (InvalidPropertyGroupError)paramObject;
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
    extends UnionSerializer<InvalidPropertyGroupError>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public InvalidPropertyGroupError deserialize(JsonParser paramJsonParser)
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
          localObject = InvalidPropertyGroupError.templateNotFound((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("restricted_content".equals(localObject))
        {
          localObject = InvalidPropertyGroupError.RESTRICTED_CONTENT;
        }
        else if ("other".equals(localObject))
        {
          localObject = InvalidPropertyGroupError.OTHER;
        }
        else if ("path".equals(localObject))
        {
          expectField("path", paramJsonParser);
          localObject = InvalidPropertyGroupError.path(LookupError.a.a.a(paramJsonParser));
        }
        else if ("unsupported_folder".equals(localObject))
        {
          localObject = InvalidPropertyGroupError.UNSUPPORTED_FOLDER;
        }
        else if ("property_field_too_large".equals(localObject))
        {
          localObject = InvalidPropertyGroupError.PROPERTY_FIELD_TOO_LARGE;
        }
        else
        {
          if (!"does_not_fit_template".equals(localObject)) {
            break label192;
          }
          localObject = InvalidPropertyGroupError.DOES_NOT_FIT_TEMPLATE;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label192:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void serialize(InvalidPropertyGroupError paramInvalidPropertyGroupError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (InvalidPropertyGroupError.1.a[paramInvalidPropertyGroupError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramInvalidPropertyGroupError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
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
        LookupError.a.a.a(InvalidPropertyGroupError.b(paramInvalidPropertyGroupError), paramJsonGenerator);
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
      StoneSerializers.string().serialize(InvalidPropertyGroupError.a(paramInvalidPropertyGroupError), paramJsonGenerator);
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
