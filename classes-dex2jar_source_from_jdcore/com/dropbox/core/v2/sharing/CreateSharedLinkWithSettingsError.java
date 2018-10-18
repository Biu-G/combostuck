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

public final class CreateSharedLinkWithSettingsError
{
  public static final CreateSharedLinkWithSettingsError ACCESS_DENIED = new CreateSharedLinkWithSettingsError().a(Tag.ACCESS_DENIED);
  public static final CreateSharedLinkWithSettingsError EMAIL_NOT_VERIFIED = new CreateSharedLinkWithSettingsError().a(Tag.EMAIL_NOT_VERIFIED);
  public static final CreateSharedLinkWithSettingsError SHARED_LINK_ALREADY_EXISTS = new CreateSharedLinkWithSettingsError().a(Tag.SHARED_LINK_ALREADY_EXISTS);
  private Tag a;
  private LookupError b;
  private SharedLinkSettingsError c;
  
  private CreateSharedLinkWithSettingsError() {}
  
  private CreateSharedLinkWithSettingsError a(Tag paramTag)
  {
    CreateSharedLinkWithSettingsError localCreateSharedLinkWithSettingsError = new CreateSharedLinkWithSettingsError();
    a = paramTag;
    return localCreateSharedLinkWithSettingsError;
  }
  
  private CreateSharedLinkWithSettingsError a(Tag paramTag, LookupError paramLookupError)
  {
    CreateSharedLinkWithSettingsError localCreateSharedLinkWithSettingsError = new CreateSharedLinkWithSettingsError();
    a = paramTag;
    b = paramLookupError;
    return localCreateSharedLinkWithSettingsError;
  }
  
  private CreateSharedLinkWithSettingsError a(Tag paramTag, SharedLinkSettingsError paramSharedLinkSettingsError)
  {
    CreateSharedLinkWithSettingsError localCreateSharedLinkWithSettingsError = new CreateSharedLinkWithSettingsError();
    a = paramTag;
    c = paramSharedLinkSettingsError;
    return localCreateSharedLinkWithSettingsError;
  }
  
  public static CreateSharedLinkWithSettingsError path(LookupError paramLookupError)
  {
    if (paramLookupError != null) {
      return new CreateSharedLinkWithSettingsError().a(Tag.PATH, paramLookupError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static CreateSharedLinkWithSettingsError settingsError(SharedLinkSettingsError paramSharedLinkSettingsError)
  {
    if (paramSharedLinkSettingsError != null) {
      return new CreateSharedLinkWithSettingsError().a(Tag.SETTINGS_ERROR, paramSharedLinkSettingsError);
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
    if ((paramObject instanceof CreateSharedLinkWithSettingsError))
    {
      paramObject = (CreateSharedLinkWithSettingsError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
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
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.PATH, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public SharedLinkSettingsError getSettingsErrorValue()
  {
    if (a == Tag.SETTINGS_ERROR) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.SETTINGS_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public boolean isAccessDenied()
  {
    return a == Tag.ACCESS_DENIED;
  }
  
  public boolean isEmailNotVerified()
  {
    return a == Tag.EMAIL_NOT_VERIFIED;
  }
  
  public boolean isPath()
  {
    return a == Tag.PATH;
  }
  
  public boolean isSettingsError()
  {
    return a == Tag.SETTINGS_ERROR;
  }
  
  public boolean isSharedLinkAlreadyExists()
  {
    return a == Tag.SHARED_LINK_ALREADY_EXISTS;
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
      EMAIL_NOT_VERIFIED = new Tag("EMAIL_NOT_VERIFIED", 1);
      SHARED_LINK_ALREADY_EXISTS = new Tag("SHARED_LINK_ALREADY_EXISTS", 2);
      SETTINGS_ERROR = new Tag("SETTINGS_ERROR", 3);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<CreateSharedLinkWithSettingsError>
  {
    public static final a a = new a();
    
    a() {}
    
    public CreateSharedLinkWithSettingsError a(JsonParser paramJsonParser)
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
          localObject = CreateSharedLinkWithSettingsError.path(LookupError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else if ("email_not_verified".equals(localObject))
        {
          localObject = CreateSharedLinkWithSettingsError.EMAIL_NOT_VERIFIED;
        }
        else if ("shared_link_already_exists".equals(localObject))
        {
          localObject = CreateSharedLinkWithSettingsError.SHARED_LINK_ALREADY_EXISTS;
        }
        else if ("settings_error".equals(localObject))
        {
          expectField("settings_error", paramJsonParser);
          localObject = CreateSharedLinkWithSettingsError.settingsError(SharedLinkSettingsError.a.a.a(paramJsonParser));
        }
        else
        {
          if (!"access_denied".equals(localObject)) {
            break label157;
          }
          localObject = CreateSharedLinkWithSettingsError.ACCESS_DENIED;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label157:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(CreateSharedLinkWithSettingsError paramCreateSharedLinkWithSettingsError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (CreateSharedLinkWithSettingsError.1.a[paramCreateSharedLinkWithSettingsError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramCreateSharedLinkWithSettingsError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 5: 
        paramJsonGenerator.writeString("access_denied");
        return;
      case 4: 
        paramJsonGenerator.writeStartObject();
        writeTag("settings_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("settings_error");
        SharedLinkSettingsError.a.a.a(CreateSharedLinkWithSettingsError.b(paramCreateSharedLinkWithSettingsError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 3: 
        paramJsonGenerator.writeString("shared_link_already_exists");
        return;
      case 2: 
        paramJsonGenerator.writeString("email_not_verified");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("path", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path");
      LookupError.Serializer.INSTANCE.serialize(CreateSharedLinkWithSettingsError.a(paramCreateSharedLinkWithSettingsError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
