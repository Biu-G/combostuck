package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class RevokeLinkedAppStatus
{
  protected final RevokeLinkedAppError errorType;
  protected final boolean success;
  
  public RevokeLinkedAppStatus(boolean paramBoolean)
  {
    this(paramBoolean, null);
  }
  
  public RevokeLinkedAppStatus(boolean paramBoolean, RevokeLinkedAppError paramRevokeLinkedAppError)
  {
    success = paramBoolean;
    errorType = paramRevokeLinkedAppError;
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
    if (paramObject.getClass().equals(getClass()))
    {
      paramObject = (RevokeLinkedAppStatus)paramObject;
      if (success == success)
      {
        if (errorType == errorType) {
          break label81;
        }
        if ((errorType != null) && (errorType.equals(errorType))) {
          return true;
        }
      }
      bool = false;
      label81:
      return bool;
    }
    return false;
  }
  
  public RevokeLinkedAppError getErrorType()
  {
    return errorType;
  }
  
  public boolean getSuccess()
  {
    return success;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Boolean.valueOf(success), errorType });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  static class a
    extends StructSerializer<RevokeLinkedAppStatus>
  {
    public static final a a = new a();
    
    a() {}
    
    public RevokeLinkedAppStatus a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Object localObject2 = null;
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject1 = readTag(paramJsonParser);
      }
      else
      {
        localObject1 = null;
      }
      if (localObject1 == null)
      {
        localObject1 = null;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("success".equals(str)) {
            localObject2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("error_type".equals(str)) {
            localObject1 = (RevokeLinkedAppError)StoneSerializers.nullable(RevokeLinkedAppError.a.a).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          localObject1 = new RevokeLinkedAppStatus(((Boolean)localObject2).booleanValue(), (RevokeLinkedAppError)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"success\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(RevokeLinkedAppStatus paramRevokeLinkedAppStatus, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("success");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(success), paramJsonGenerator);
      if (errorType != null)
      {
        paramJsonGenerator.writeFieldName("error_type");
        StoneSerializers.nullable(RevokeLinkedAppError.a.a).serialize(errorType, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
