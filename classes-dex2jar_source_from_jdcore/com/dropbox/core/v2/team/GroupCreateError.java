package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum GroupCreateError
{
  static
  {
    EXTERNAL_ID_ALREADY_IN_USE = new GroupCreateError("EXTERNAL_ID_ALREADY_IN_USE", 2);
    SYSTEM_MANAGED_GROUP_DISALLOWED = new GroupCreateError("SYSTEM_MANAGED_GROUP_DISALLOWED", 3);
  }
  
  private GroupCreateError() {}
  
  static class a
    extends UnionSerializer<GroupCreateError>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupCreateError a(JsonParser paramJsonParser)
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
        if ("group_name_already_used".equals(localObject)) {
          localObject = GroupCreateError.GROUP_NAME_ALREADY_USED;
        } else if ("group_name_invalid".equals(localObject)) {
          localObject = GroupCreateError.GROUP_NAME_INVALID;
        } else if ("external_id_already_in_use".equals(localObject)) {
          localObject = GroupCreateError.EXTERNAL_ID_ALREADY_IN_USE;
        } else if ("system_managed_group_disallowed".equals(localObject)) {
          localObject = GroupCreateError.SYSTEM_MANAGED_GROUP_DISALLOWED;
        } else {
          localObject = GroupCreateError.OTHER;
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
    
    public void a(GroupCreateError paramGroupCreateError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GroupCreateError.1.a[paramGroupCreateError.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 4: 
        paramJsonGenerator.writeString("system_managed_group_disallowed");
        return;
      case 3: 
        paramJsonGenerator.writeString("external_id_already_in_use");
        return;
      case 2: 
        paramJsonGenerator.writeString("group_name_invalid");
        return;
      }
      paramJsonGenerator.writeString("group_name_already_used");
    }
  }
}
