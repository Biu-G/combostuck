package com.dropbox.core.v2.teamcommon;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum GroupManagementType
{
  static
  {
    COMPANY_MANAGED = new GroupManagementType("COMPANY_MANAGED", 1);
    SYSTEM_MANAGED = new GroupManagementType("SYSTEM_MANAGED", 2);
  }
  
  private GroupManagementType() {}
  
  public static class Serializer
    extends UnionSerializer<GroupManagementType>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public GroupManagementType deserialize(JsonParser paramJsonParser)
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
        if ("user_managed".equals(localObject)) {
          localObject = GroupManagementType.USER_MANAGED;
        } else if ("company_managed".equals(localObject)) {
          localObject = GroupManagementType.COMPANY_MANAGED;
        } else if ("system_managed".equals(localObject)) {
          localObject = GroupManagementType.SYSTEM_MANAGED;
        } else {
          localObject = GroupManagementType.OTHER;
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
    
    public void serialize(GroupManagementType paramGroupManagementType, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GroupManagementType.1.a[paramGroupManagementType.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeString("system_managed");
        return;
      case 2: 
        paramJsonGenerator.writeString("company_managed");
        return;
      }
      paramJsonGenerator.writeString("user_managed");
    }
  }
}
