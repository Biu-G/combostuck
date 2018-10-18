package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum GroupDeleteError
{
  private GroupDeleteError() {}
  
  static class a
    extends UnionSerializer<GroupDeleteError>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupDeleteError a(JsonParser paramJsonParser)
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
        if ("group_not_found".equals(localObject))
        {
          localObject = GroupDeleteError.GROUP_NOT_FOUND;
        }
        else if ("other".equals(localObject))
        {
          localObject = GroupDeleteError.OTHER;
        }
        else if ("system_managed_group_disallowed".equals(localObject))
        {
          localObject = GroupDeleteError.SYSTEM_MANAGED_GROUP_DISALLOWED;
        }
        else
        {
          if (!"group_already_deleted".equals(localObject)) {
            break label115;
          }
          localObject = GroupDeleteError.GROUP_ALREADY_DELETED;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label115:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(GroupDeleteError paramGroupDeleteError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GroupDeleteError.1.a[paramGroupDeleteError.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramGroupDeleteError);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 4: 
        paramJsonGenerator.writeString("group_already_deleted");
        return;
      case 3: 
        paramJsonGenerator.writeString("system_managed_group_disallowed");
        return;
      case 2: 
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("group_not_found");
    }
  }
}
