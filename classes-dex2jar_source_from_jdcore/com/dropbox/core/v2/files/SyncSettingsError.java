package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class SyncSettingsError
{
  public static final SyncSettingsError OTHER = new SyncSettingsError().a(Tag.OTHER);
  public static final SyncSettingsError UNSUPPORTED_COMBINATION = new SyncSettingsError().a(Tag.UNSUPPORTED_COMBINATION);
  public static final SyncSettingsError UNSUPPORTED_CONFIGURATION = new SyncSettingsError().a(Tag.UNSUPPORTED_CONFIGURATION);
  private Tag a;
  private LookupError b;
  
  private SyncSettingsError() {}
  
  private SyncSettingsError a(Tag paramTag)
  {
    SyncSettingsError localSyncSettingsError = new SyncSettingsError();
    a = paramTag;
    return localSyncSettingsError;
  }
  
  private SyncSettingsError a(Tag paramTag, LookupError paramLookupError)
  {
    SyncSettingsError localSyncSettingsError = new SyncSettingsError();
    a = paramTag;
    b = paramLookupError;
    return localSyncSettingsError;
  }
  
  public static SyncSettingsError path(LookupError paramLookupError)
  {
    if (paramLookupError != null) {
      return new SyncSettingsError().a(Tag.PATH, paramLookupError);
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
    if ((paramObject instanceof SyncSettingsError))
    {
      paramObject = (SyncSettingsError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
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
  
  public boolean isUnsupportedCombination()
  {
    return a == Tag.UNSUPPORTED_COMBINATION;
  }
  
  public boolean isUnsupportedConfiguration()
  {
    return a == Tag.UNSUPPORTED_CONFIGURATION;
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
    extends UnionSerializer<SyncSettingsError>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public SyncSettingsError deserialize(JsonParser paramJsonParser)
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
          localObject = SyncSettingsError.path(LookupError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else if ("unsupported_combination".equals(localObject))
        {
          localObject = SyncSettingsError.UNSUPPORTED_COMBINATION;
        }
        else if ("unsupported_configuration".equals(localObject))
        {
          localObject = SyncSettingsError.UNSUPPORTED_CONFIGURATION;
        }
        else
        {
          localObject = SyncSettingsError.OTHER;
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
    
    public void serialize(SyncSettingsError paramSyncSettingsError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SyncSettingsError.1.a[paramSyncSettingsError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeString("unsupported_configuration");
        return;
      case 2: 
        paramJsonGenerator.writeString("unsupported_combination");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("path", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path");
      LookupError.Serializer.INSTANCE.serialize(SyncSettingsError.a(paramSyncSettingsError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
  
  public static enum Tag
  {
    private Tag() {}
  }
}
