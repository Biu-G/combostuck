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

class l
{
  protected final String a;
  protected final SharedLinkSettings b;
  protected final boolean c;
  
  public l(String paramString, SharedLinkSettings paramSharedLinkSettings)
  {
    this(paramString, paramSharedLinkSettings, false);
  }
  
  public l(String paramString, SharedLinkSettings paramSharedLinkSettings, boolean paramBoolean)
  {
    if (paramString != null)
    {
      a = paramString;
      if (paramSharedLinkSettings != null)
      {
        b = paramSharedLinkSettings;
        c = paramBoolean;
        return;
      }
      throw new IllegalArgumentException("Required value for 'settings' is null");
    }
    throw new IllegalArgumentException("Required value for 'url' is null");
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (paramObject.getClass().equals(getClass()))
    {
      paramObject = (l)paramObject;
      return ((a == a) || (a.equals(a))) && ((b == b) || (b.equals(b))) && (c == c);
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, Boolean.valueOf(c) });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  static class a
    extends StructSerializer<l>
  {
    public static final a a = new a();
    
    a() {}
    
    public l a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      String str1 = null;
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
        localObject1 = Boolean.valueOf(false);
        localObject2 = null;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("url".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("settings".equals(str2)) {
            localObject2 = (SharedLinkSettings)SharedLinkSettings.a.a.deserialize(paramJsonParser);
          } else if ("remove_expiration".equals(str2)) {
            localObject1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject2 != null)
          {
            localObject1 = new l(str1, (SharedLinkSettings)localObject2, ((Boolean)localObject1).booleanValue());
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"settings\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"url\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(l paramL, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("url");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("settings");
      SharedLinkSettings.a.a.serialize(b, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("remove_expiration");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(c), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
