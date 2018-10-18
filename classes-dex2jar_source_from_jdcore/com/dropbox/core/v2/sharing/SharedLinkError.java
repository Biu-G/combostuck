package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum SharedLinkError
{
  static
  {
    SHARED_LINK_ACCESS_DENIED = new SharedLinkError("SHARED_LINK_ACCESS_DENIED", 1);
    UNSUPPORTED_LINK_TYPE = new SharedLinkError("UNSUPPORTED_LINK_TYPE", 2);
  }
  
  private SharedLinkError() {}
  
  static class a
    extends UnionSerializer<SharedLinkError>
  {
    public static final a a = new a();
    
    a() {}
    
    public SharedLinkError a(JsonParser paramJsonParser)
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
        if ("shared_link_not_found".equals(localObject)) {
          localObject = SharedLinkError.SHARED_LINK_NOT_FOUND;
        } else if ("shared_link_access_denied".equals(localObject)) {
          localObject = SharedLinkError.SHARED_LINK_ACCESS_DENIED;
        } else if ("unsupported_link_type".equals(localObject)) {
          localObject = SharedLinkError.UNSUPPORTED_LINK_TYPE;
        } else {
          localObject = SharedLinkError.OTHER;
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
    
    public void a(SharedLinkError paramSharedLinkError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SharedLinkError.1.a[paramSharedLinkError.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeString("unsupported_link_type");
        return;
      case 2: 
        paramJsonGenerator.writeString("shared_link_access_denied");
        return;
      }
      paramJsonGenerator.writeString("shared_link_not_found");
    }
  }
}
