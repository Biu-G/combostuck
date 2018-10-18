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

public final class UpdatePropertiesError
{
  public static final UpdatePropertiesError DOES_NOT_FIT_TEMPLATE = new UpdatePropertiesError().a(Tag.DOES_NOT_FIT_TEMPLATE);
  public static final UpdatePropertiesError OTHER;
  public static final UpdatePropertiesError PROPERTY_FIELD_TOO_LARGE;
  public static final UpdatePropertiesError RESTRICTED_CONTENT = new UpdatePropertiesError().a(Tag.RESTRICTED_CONTENT);
  public static final UpdatePropertiesError UNSUPPORTED_FOLDER;
  private Tag a;
  private String b;
  private LookupError c;
  private LookUpPropertiesError d;
  
  static
  {
    OTHER = new UpdatePropertiesError().a(Tag.OTHER);
    UNSUPPORTED_FOLDER = new UpdatePropertiesError().a(Tag.UNSUPPORTED_FOLDER);
    PROPERTY_FIELD_TOO_LARGE = new UpdatePropertiesError().a(Tag.PROPERTY_FIELD_TOO_LARGE);
  }
  
  private UpdatePropertiesError() {}
  
  private UpdatePropertiesError a(Tag paramTag)
  {
    UpdatePropertiesError localUpdatePropertiesError = new UpdatePropertiesError();
    a = paramTag;
    return localUpdatePropertiesError;
  }
  
  private UpdatePropertiesError a(Tag paramTag, LookUpPropertiesError paramLookUpPropertiesError)
  {
    UpdatePropertiesError localUpdatePropertiesError = new UpdatePropertiesError();
    a = paramTag;
    d = paramLookUpPropertiesError;
    return localUpdatePropertiesError;
  }
  
  private UpdatePropertiesError a(Tag paramTag, LookupError paramLookupError)
  {
    UpdatePropertiesError localUpdatePropertiesError = new UpdatePropertiesError();
    a = paramTag;
    c = paramLookupError;
    return localUpdatePropertiesError;
  }
  
  private UpdatePropertiesError a(Tag paramTag, String paramString)
  {
    UpdatePropertiesError localUpdatePropertiesError = new UpdatePropertiesError();
    a = paramTag;
    b = paramString;
    return localUpdatePropertiesError;
  }
  
  public static UpdatePropertiesError path(LookupError paramLookupError)
  {
    if (paramLookupError != null) {
      return new UpdatePropertiesError().a(Tag.PATH, paramLookupError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static UpdatePropertiesError propertyGroupLookup(LookUpPropertiesError paramLookUpPropertiesError)
  {
    if (paramLookUpPropertiesError != null) {
      return new UpdatePropertiesError().a(Tag.PROPERTY_GROUP_LOOKUP, paramLookUpPropertiesError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static UpdatePropertiesError templateNotFound(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1)
      {
        if (Pattern.matches("(/|ptid:).*", paramString)) {
          return new UpdatePropertiesError().a(Tag.TEMPLATE_NOT_FOUND, paramString);
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
    boolean bool3 = true;
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof UpdatePropertiesError))
    {
      paramObject = (UpdatePropertiesError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 8: 
        if (d != d)
        {
          if (d.equals(d)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 7: 
        return true;
      case 6: 
        return true;
      case 5: 
        return true;
      case 4: 
        bool1 = bool2;
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
      bool1 = bool3;
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
  
  public LookUpPropertiesError getPropertyGroupLookupValue()
  {
    if (a == Tag.PROPERTY_GROUP_LOOKUP) {
      return d;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.PROPERTY_GROUP_LOOKUP, but was Tag.");
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
    int i = Arrays.hashCode(new Object[] { a, b, c, d });
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
  
  public boolean isPropertyGroupLookup()
  {
    return a == Tag.PROPERTY_GROUP_LOOKUP;
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
    extends UnionSerializer<UpdatePropertiesError>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public UpdatePropertiesError deserialize(JsonParser paramJsonParser)
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
          localObject = UpdatePropertiesError.templateNotFound((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("restricted_content".equals(localObject))
        {
          localObject = UpdatePropertiesError.RESTRICTED_CONTENT;
        }
        else if ("other".equals(localObject))
        {
          localObject = UpdatePropertiesError.OTHER;
        }
        else if ("path".equals(localObject))
        {
          expectField("path", paramJsonParser);
          localObject = UpdatePropertiesError.path(LookupError.a.a.a(paramJsonParser));
        }
        else if ("unsupported_folder".equals(localObject))
        {
          localObject = UpdatePropertiesError.UNSUPPORTED_FOLDER;
        }
        else if ("property_field_too_large".equals(localObject))
        {
          localObject = UpdatePropertiesError.PROPERTY_FIELD_TOO_LARGE;
        }
        else if ("does_not_fit_template".equals(localObject))
        {
          localObject = UpdatePropertiesError.DOES_NOT_FIT_TEMPLATE;
        }
        else
        {
          if (!"property_group_lookup".equals(localObject)) {
            break label221;
          }
          expectField("property_group_lookup", paramJsonParser);
          localObject = UpdatePropertiesError.propertyGroupLookup(LookUpPropertiesError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label221:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void serialize(UpdatePropertiesError paramUpdatePropertiesError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (UpdatePropertiesError.1.a[paramUpdatePropertiesError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramUpdatePropertiesError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 8: 
        paramJsonGenerator.writeStartObject();
        writeTag("property_group_lookup", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("property_group_lookup");
        LookUpPropertiesError.Serializer.INSTANCE.serialize(UpdatePropertiesError.c(paramUpdatePropertiesError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
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
        LookupError.a.a.a(UpdatePropertiesError.b(paramUpdatePropertiesError), paramJsonGenerator);
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
      StoneSerializers.string().serialize(UpdatePropertiesError.a(paramUpdatePropertiesError), paramJsonGenerator);
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
