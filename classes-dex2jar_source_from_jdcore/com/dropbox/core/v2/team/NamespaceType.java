package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum NamespaceType
{
  private NamespaceType() {}
  
  static class a
    extends UnionSerializer<NamespaceType>
  {
    public static final a a = new a();
    
    a() {}
    
    public NamespaceType a(JsonParser paramJsonParser)
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
        if ("app_folder".equals(localObject)) {
          localObject = NamespaceType.APP_FOLDER;
        } else if ("shared_folder".equals(localObject)) {
          localObject = NamespaceType.SHARED_FOLDER;
        } else if ("team_folder".equals(localObject)) {
          localObject = NamespaceType.TEAM_FOLDER;
        } else if ("team_member_folder".equals(localObject)) {
          localObject = NamespaceType.TEAM_MEMBER_FOLDER;
        } else {
          localObject = NamespaceType.OTHER;
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
    
    public void a(NamespaceType paramNamespaceType, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (NamespaceType.1.a[paramNamespaceType.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 4: 
        paramJsonGenerator.writeString("team_member_folder");
        return;
      case 3: 
        paramJsonGenerator.writeString("team_folder");
        return;
      case 2: 
        paramJsonGenerator.writeString("shared_folder");
        return;
      }
      paramJsonGenerator.writeString("app_folder");
    }
  }
}
