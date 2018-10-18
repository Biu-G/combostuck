package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum SharingPublicPolicyType
{
  static
  {
    INVITE_ONLY = new SharingPublicPolicyType("INVITE_ONLY", 2);
  }
  
  private SharingPublicPolicyType() {}
  
  static class a
    extends UnionSerializer<SharingPublicPolicyType>
  {
    public static final a a = new a();
    
    a() {}
    
    public SharingPublicPolicyType a(JsonParser paramJsonParser)
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
          localObject = SharingPublicPolicyType.PEOPLE_WITH_LINK_CAN_EDIT;
        }
        else if ("people_with_link_can_view_and_comment".equals(localObject))
        {
          localObject = SharingPublicPolicyType.PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT;
        }
        else if ("invite_only".equals(localObject))
        {
          localObject = SharingPublicPolicyType.INVITE_ONLY;
        }
        else
        {
          if (!"disabled".equals(localObject)) {
            break label115;
          }
          localObject = SharingPublicPolicyType.DISABLED;
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
    
    public void a(SharingPublicPolicyType paramSharingPublicPolicyType, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SharingPublicPolicyType.1.a[paramSharingPublicPolicyType.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramSharingPublicPolicyType);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 4: 
        paramJsonGenerator.writeString("disabled");
        return;
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
