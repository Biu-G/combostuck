package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum AdminTier
{
  static
  {
    SUPPORT_ADMIN = new AdminTier("SUPPORT_ADMIN", 2);
  }
  
  private AdminTier() {}
  
  static class a
    extends UnionSerializer<AdminTier>
  {
    public static final a a = new a();
    
    a() {}
    
    public AdminTier a(JsonParser paramJsonParser)
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
        if ("team_admin".equals(localObject))
        {
          localObject = AdminTier.TEAM_ADMIN;
        }
        else if ("user_management_admin".equals(localObject))
        {
          localObject = AdminTier.USER_MANAGEMENT_ADMIN;
        }
        else if ("support_admin".equals(localObject))
        {
          localObject = AdminTier.SUPPORT_ADMIN;
        }
        else
        {
          if (!"member_only".equals(localObject)) {
            break label115;
          }
          localObject = AdminTier.MEMBER_ONLY;
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
    
    public void a(AdminTier paramAdminTier, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (AdminTier.1.a[paramAdminTier.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramAdminTier);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 4: 
        paramJsonGenerator.writeString("member_only");
        return;
      case 3: 
        paramJsonGenerator.writeString("support_admin");
        return;
      case 2: 
        paramJsonGenerator.writeString("user_management_admin");
        return;
      }
      paramJsonGenerator.writeString("team_admin");
    }
  }
}
