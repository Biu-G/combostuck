package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum GroupsPollError
{
  static
  {
    INTERNAL_ERROR = new GroupsPollError("INTERNAL_ERROR", 1);
    OTHER = new GroupsPollError("OTHER", 2);
  }
  
  private GroupsPollError() {}
  
  static class a
    extends UnionSerializer<GroupsPollError>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupsPollError a(JsonParser paramJsonParser)
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
        if ("invalid_async_job_id".equals(localObject))
        {
          localObject = GroupsPollError.INVALID_ASYNC_JOB_ID;
        }
        else if ("internal_error".equals(localObject))
        {
          localObject = GroupsPollError.INTERNAL_ERROR;
        }
        else if ("other".equals(localObject))
        {
          localObject = GroupsPollError.OTHER;
        }
        else
        {
          if (!"access_denied".equals(localObject)) {
            break label115;
          }
          localObject = GroupsPollError.ACCESS_DENIED;
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
    
    public void a(GroupsPollError paramGroupsPollError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GroupsPollError.1.a[paramGroupsPollError.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramGroupsPollError);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 4: 
        paramJsonGenerator.writeString("access_denied");
        return;
      case 3: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("internal_error");
        return;
      }
      paramJsonGenerator.writeString("invalid_async_job_id");
    }
  }
}
