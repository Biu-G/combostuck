package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum AccessLevel
{
  static
  {
    EDITOR = new AccessLevel("EDITOR", 1);
    VIEWER = new AccessLevel("VIEWER", 2);
    VIEWER_NO_COMMENT = new AccessLevel("VIEWER_NO_COMMENT", 3);
  }
  
  private AccessLevel() {}
  
  public static class Serializer
    extends UnionSerializer<AccessLevel>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public AccessLevel deserialize(JsonParser paramJsonParser)
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
          localObject = AccessLevel.OWNER;
        } else if ("editor".equals(localObject)) {
          localObject = AccessLevel.EDITOR;
        } else if ("viewer".equals(localObject)) {
          localObject = AccessLevel.VIEWER;
        } else if ("viewer_no_comment".equals(localObject)) {
          localObject = AccessLevel.VIEWER_NO_COMMENT;
        } else {
          localObject = AccessLevel.OTHER;
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
    
    public void serialize(AccessLevel paramAccessLevel, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (AccessLevel.1.a[paramAccessLevel.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 4: 
        paramJsonGenerator.writeString("viewer_no_comment");
        return;
      case 3: 
        paramJsonGenerator.writeString("viewer");
        return;
      case 2: 
        paramJsonGenerator.writeString("editor");
        return;
      }
      paramJsonGenerator.writeString("owner");
    }
  }
}
