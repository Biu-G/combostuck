package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class ModifySharedLinkSettingsError
{
  public static final ModifySharedLinkSettingsError EMAIL_NOT_VERIFIED = new ModifySharedLinkSettingsError().a(Tag.EMAIL_NOT_VERIFIED);
  public static final ModifySharedLinkSettingsError OTHER;
  public static final ModifySharedLinkSettingsError SHARED_LINK_ACCESS_DENIED;
  public static final ModifySharedLinkSettingsError SHARED_LINK_NOT_FOUND = new ModifySharedLinkSettingsError().a(Tag.SHARED_LINK_NOT_FOUND);
  public static final ModifySharedLinkSettingsError UNSUPPORTED_LINK_TYPE;
  private Tag a;
  private SharedLinkSettingsError b;
  
  static
  {
    SHARED_LINK_ACCESS_DENIED = new ModifySharedLinkSettingsError().a(Tag.SHARED_LINK_ACCESS_DENIED);
    UNSUPPORTED_LINK_TYPE = new ModifySharedLinkSettingsError().a(Tag.UNSUPPORTED_LINK_TYPE);
    OTHER = new ModifySharedLinkSettingsError().a(Tag.OTHER);
  }
  
  private ModifySharedLinkSettingsError() {}
  
  private ModifySharedLinkSettingsError a(Tag paramTag)
  {
    ModifySharedLinkSettingsError localModifySharedLinkSettingsError = new ModifySharedLinkSettingsError();
    a = paramTag;
    return localModifySharedLinkSettingsError;
  }
  
  private ModifySharedLinkSettingsError a(Tag paramTag, SharedLinkSettingsError paramSharedLinkSettingsError)
  {
    ModifySharedLinkSettingsError localModifySharedLinkSettingsError = new ModifySharedLinkSettingsError();
    a = paramTag;
    b = paramSharedLinkSettingsError;
    return localModifySharedLinkSettingsError;
  }
  
  public static ModifySharedLinkSettingsError settingsError(SharedLinkSettingsError paramSharedLinkSettingsError)
  {
    if (paramSharedLinkSettingsError != null) {
      return new ModifySharedLinkSettingsError().a(Tag.SETTINGS_ERROR, paramSharedLinkSettingsError);
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
    if ((paramObject instanceof ModifySharedLinkSettingsError))
    {
      paramObject = (ModifySharedLinkSettingsError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 6: 
        return true;
      case 5: 
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool = false;
        }
        return bool;
      case 4: 
        return true;
      case 3: 
        return true;
      case 2: 
        return true;
      }
      return true;
    }
    return false;
  }
  
  public SharedLinkSettingsError getSettingsErrorValue()
  {
    if (a == Tag.SETTINGS_ERROR) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.SETTINGS_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, b });
    return super.hashCode() * 31 + i;
  }
  
  public boolean isEmailNotVerified()
  {
    return a == Tag.EMAIL_NOT_VERIFIED;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isSettingsError()
  {
    return a == Tag.SETTINGS_ERROR;
  }
  
  public boolean isSharedLinkAccessDenied()
  {
    return a == Tag.SHARED_LINK_ACCESS_DENIED;
  }
  
  public boolean isSharedLinkNotFound()
  {
    return a == Tag.SHARED_LINK_NOT_FOUND;
  }
  
  public boolean isUnsupportedLinkType()
  {
    return a == Tag.UNSUPPORTED_LINK_TYPE;
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
    static
    {
      SHARED_LINK_ACCESS_DENIED = new Tag("SHARED_LINK_ACCESS_DENIED", 1);
      UNSUPPORTED_LINK_TYPE = new Tag("UNSUPPORTED_LINK_TYPE", 2);
      OTHER = new Tag("OTHER", 3);
      SETTINGS_ERROR = new Tag("SETTINGS_ERROR", 4);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<ModifySharedLinkSettingsError>
  {
    public static final a a = new a();
    
    a() {}
    
    public ModifySharedLinkSettingsError a(JsonParser paramJsonParser)
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
        if ("shared_link_not_found".equals(localObject))
        {
          localObject = ModifySharedLinkSettingsError.SHARED_LINK_NOT_FOUND;
        }
        else if ("shared_link_access_denied".equals(localObject))
        {
          localObject = ModifySharedLinkSettingsError.SHARED_LINK_ACCESS_DENIED;
        }
        else if ("unsupported_link_type".equals(localObject))
        {
          localObject = ModifySharedLinkSettingsError.UNSUPPORTED_LINK_TYPE;
        }
        else if ("other".equals(localObject))
        {
          localObject = ModifySharedLinkSettingsError.OTHER;
        }
        else if ("settings_error".equals(localObject))
        {
          expectField("settings_error", paramJsonParser);
          localObject = ModifySharedLinkSettingsError.settingsError(SharedLinkSettingsError.a.a.a(paramJsonParser));
        }
        else
        {
          if (!"email_not_verified".equals(localObject)) {
            break label160;
          }
          localObject = ModifySharedLinkSettingsError.EMAIL_NOT_VERIFIED;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label160:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(ModifySharedLinkSettingsError paramModifySharedLinkSettingsError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ModifySharedLinkSettingsError.1.a[paramModifySharedLinkSettingsError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramModifySharedLinkSettingsError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 6: 
        paramJsonGenerator.writeString("email_not_verified");
        return;
      case 5: 
        paramJsonGenerator.writeStartObject();
        writeTag("settings_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("settings_error");
        SharedLinkSettingsError.a.a.a(ModifySharedLinkSettingsError.a(paramModifySharedLinkSettingsError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 4: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeString("unsupported_link_type");
        return;
      case 2: 
        paramJsonGenerator.writeString("shared_link_access_denied");
        return;
      }
      paramJsonGenerator.writeString("shared_link_not_found");
    }
  }
}
