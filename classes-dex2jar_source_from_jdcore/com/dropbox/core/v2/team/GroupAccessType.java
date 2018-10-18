package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum GroupAccessType
{
  private GroupAccessType() {}
  
  static class a
    extends UnionSerializer<GroupAccessType>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupAccessType a(JsonParser paramJsonParser)
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
        if ("member".equals(localObject))
        {
          localObject = GroupAccessType.MEMBER;
        }
        else
        {
          if (!"owner".equals(localObject)) {
            break label83;
          }
          localObject = GroupAccessType.OWNER;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label83:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(GroupAccessType paramGroupAccessType, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GroupAccessType.1.a[paramGroupAccessType.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramGroupAccessType);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeString("owner");
        return;
      }
      paramJsonGenerator.writeString("member");
    }
  }
}
