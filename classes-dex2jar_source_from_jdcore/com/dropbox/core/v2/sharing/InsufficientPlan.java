package com.dropbox.core.v2.sharing;

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

public class InsufficientPlan
{
  protected final String message;
  protected final String upsellUrl;
  
  public InsufficientPlan(String paramString)
  {
    this(paramString, null);
  }
  
  public InsufficientPlan(String paramString1, String paramString2)
  {
    if (paramString1 != null)
    {
      message = paramString1;
      upsellUrl = paramString2;
      return;
    }
    throw new IllegalArgumentException("Required value for 'message' is null");
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
      paramObject = (InsufficientPlan)paramObject;
      if ((message == message) || (message.equals(message)))
      {
        if (upsellUrl == upsellUrl) {
          break label95;
        }
        if ((upsellUrl != null) && (upsellUrl.equals(upsellUrl))) {
          return true;
        }
      }
      bool = false;
      label95:
      return bool;
    }
    return false;
  }
  
  public String getMessage()
  {
    return message;
  }
  
  public String getUpsellUrl()
  {
    return upsellUrl;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { message, upsellUrl });
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
    extends StructSerializer<InsufficientPlan>
  {
    public static final a a = new a();
    
    a() {}
    
    public InsufficientPlan a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("message".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("upsell_url".equals(str)) {
            localObject1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          localObject1 = new InsufficientPlan((String)localObject2, (String)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"message\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(InsufficientPlan paramInsufficientPlan, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("message");
      StoneSerializers.string().serialize(message, paramJsonGenerator);
      if (upsellUrl != null)
      {
        paramJsonGenerator.writeFieldName("upsell_url");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(upsellUrl, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
