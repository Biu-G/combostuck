package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum GroupUpdateError
{
  static
  {
    GROUP_NAME_ALREADY_USED = new GroupUpdateError("GROUP_NAME_ALREADY_USED", 3);
    GROUP_NAME_INVALID = new GroupUpdateError("GROUP_NAME_INVALID", 4);
  }
  
  private GroupUpdateError() {}
  
  static class a
    extends UnionSerializer<GroupUpdateError>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupUpdateError a(JsonParser paramJsonParser)
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
          localObject = GroupUpdateError.GROUP_NOT_FOUND;
        }
        else if ("other".equals(localObject))
        {
          localObject = GroupUpdateError.OTHER;
        }
        else if ("system_managed_group_disallowed".equals(localObject))
        {
          localObject = GroupUpdateError.SYSTEM_MANAGED_GROUP_DISALLOWED;
        }
        else if ("group_name_already_used".equals(localObject))
        {
          localObject = GroupUpdateError.GROUP_NAME_ALREADY_USED;
        }
        else if ("group_name_invalid".equals(localObject))
        {
          localObject = GroupUpdateError.GROUP_NAME_INVALID;
        }
        else
        {
          if (!"external_id_already_in_use".equals(localObject)) {
            break label147;
          }
          localObject = GroupUpdateError.EXTERNAL_ID_ALREADY_IN_USE;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label147:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(GroupUpdateError paramGroupUpdateError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GroupUpdateError.1.a[paramGroupUpdateError.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramGroupUpdateError);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 6: 
        paramJsonGenerator.writeString("external_id_already_in_use");
        return;
      case 5: 
        paramJsonGenerator.writeString("group_name_invalid");
        return;
      case 4: 
        paramJsonGenerator.writeString("group_name_already_used");
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
