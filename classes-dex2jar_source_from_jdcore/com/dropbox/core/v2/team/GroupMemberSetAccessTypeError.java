package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum GroupMemberSetAccessTypeError
{
  private GroupMemberSetAccessTypeError() {}
  
  static class a
    extends UnionSerializer<GroupMemberSetAccessTypeError>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupMemberSetAccessTypeError a(JsonParser paramJsonParser)
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
          localObject = GroupMemberSetAccessTypeError.GROUP_NOT_FOUND;
        }
        else if ("other".equals(localObject))
        {
          localObject = GroupMemberSetAccessTypeError.OTHER;
        }
        else if ("system_managed_group_disallowed".equals(localObject))
        {
          localObject = GroupMemberSetAccessTypeError.SYSTEM_MANAGED_GROUP_DISALLOWED;
        }
        else if ("member_not_in_group".equals(localObject))
        {
          localObject = GroupMemberSetAccessTypeError.MEMBER_NOT_IN_GROUP;
        }
        else
        {
          if (!"user_cannot_be_manager_of_company_managed_group".equals(localObject)) {
            break label131;
          }
          localObject = GroupMemberSetAccessTypeError.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label131:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(GroupMemberSetAccessTypeError paramGroupMemberSetAccessTypeError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GroupMemberSetAccessTypeError.1.a[paramGroupMemberSetAccessTypeError.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramGroupMemberSetAccessTypeError);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 5: 
        paramJsonGenerator.writeString("user_cannot_be_manager_of_company_managed_group");
        return;
      case 4: 
        paramJsonGenerator.writeString("member_not_in_group");
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
