package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum ListMembersDevicesError
{
  private ListMembersDevicesError() {}
  
  static class a
    extends UnionSerializer<ListMembersDevicesError>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListMembersDevicesError a(JsonParser paramJsonParser)
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
        if ("reset".equals(localObject)) {
          localObject = ListMembersDevicesError.RESET;
        } else {
          localObject = ListMembersDevicesError.OTHER;
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
    
    public void a(ListMembersDevicesError paramListMembersDevicesError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (ListMembersDevicesError.1.a[paramListMembersDevicesError.ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("reset");
    }
  }
}
