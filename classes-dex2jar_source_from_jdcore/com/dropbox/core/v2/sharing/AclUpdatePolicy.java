package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum AclUpdatePolicy
{
  private AclUpdatePolicy() {}
  
  public static class Serializer
    extends UnionSerializer<AclUpdatePolicy>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public AclUpdatePolicy deserialize(JsonParser paramJsonParser)
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
        if ("owner".equals(localObject)) {
          localObject = AclUpdatePolicy.OWNER;
        } else if ("editors".equals(localObject)) {
          localObject = AclUpdatePolicy.EDITORS;
        } else {
          localObject = AclUpdatePolicy.OTHER;
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
    
    public void serialize(AclUpdatePolicy paramAclUpdatePolicy, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (AclUpdatePolicy.1.a[paramAclUpdatePolicy.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("editors");
        return;
      }
      paramJsonGenerator.writeString("owner");
    }
  }
}
