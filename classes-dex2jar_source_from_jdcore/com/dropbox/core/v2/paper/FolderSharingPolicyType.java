package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum FolderSharingPolicyType
{
  private FolderSharingPolicyType() {}
  
  static class a
    extends UnionSerializer<FolderSharingPolicyType>
  {
    public static final a a = new a();
    
    a() {}
    
    public FolderSharingPolicyType a(JsonParser paramJsonParser)
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
        if ("team".equals(localObject))
        {
          localObject = FolderSharingPolicyType.TEAM;
        }
        else
        {
          if (!"invite_only".equals(localObject)) {
            break label83;
          }
          localObject = FolderSharingPolicyType.INVITE_ONLY;
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
    
    public void a(FolderSharingPolicyType paramFolderSharingPolicyType, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (FolderSharingPolicyType.1.a[paramFolderSharingPolicyType.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramFolderSharingPolicyType);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeString("invite_only");
        return;
      }
      paramJsonGenerator.writeString("team");
    }
  }
}
