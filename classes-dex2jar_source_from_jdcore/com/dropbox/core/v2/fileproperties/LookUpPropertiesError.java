package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum LookUpPropertiesError
{
  private LookUpPropertiesError() {}
  
  public static class Serializer
    extends UnionSerializer<LookUpPropertiesError>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public LookUpPropertiesError deserialize(JsonParser paramJsonParser)
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
        if ("property_group_not_found".equals(localObject)) {
          localObject = LookUpPropertiesError.PROPERTY_GROUP_NOT_FOUND;
        } else {
          localObject = LookUpPropertiesError.OTHER;
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
    
    public void serialize(LookUpPropertiesError paramLookUpPropertiesError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (LookUpPropertiesError.1.a[paramLookUpPropertiesError.ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("property_group_not_found");
    }
  }
}
