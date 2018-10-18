package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum SharingTeamPolicyType
{
  private SharingTeamPolicyType() {}
  
  static class a
    extends UnionSerializer<SharingTeamPolicyType>
  {
    public static final a a = new a();
    
    a() {}
    
    public SharingTeamPolicyType a(JsonParser paramJsonParser)
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
        if ("people_with_link_can_edit".equals(localObject))
        {
          localObject = SharingTeamPolicyType.PEOPLE_WITH_LINK_CAN_EDIT;
        }
        else if ("people_with_link_can_view_and_comment".equals(localObject))
        {
          localObject = SharingTeamPolicyType.PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT;
        }
        else
        {
          if (!"invite_only".equals(localObject)) {
            break label99;
          }
          localObject = SharingTeamPolicyType.INVITE_ONLY;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label99:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(SharingTeamPolicyType paramSharingTeamPolicyType, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SharingTeamPolicyType.1.a[paramSharingTeamPolicyType.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramSharingTeamPolicyType);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 3: 
        paramJsonGenerator.writeString("invite_only");
        return;
      case 2: 
        paramJsonGenerator.writeString("people_with_link_can_view_and_comment");
        return;
      }
      paramJsonGenerator.writeString("people_with_link_can_edit");
    }
  }
}
