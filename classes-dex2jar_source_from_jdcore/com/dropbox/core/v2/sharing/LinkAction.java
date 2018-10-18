package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum LinkAction
{
  private LinkAction() {}
  
  static class a
    extends UnionSerializer<LinkAction>
  {
    public static final a a = new a();
    
    a() {}
    
    public LinkAction a(JsonParser paramJsonParser)
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
        if ("change_access_level".equals(localObject)) {
          localObject = LinkAction.CHANGE_ACCESS_LEVEL;
        } else if ("change_audience".equals(localObject)) {
          localObject = LinkAction.CHANGE_AUDIENCE;
        } else if ("remove_expiry".equals(localObject)) {
          localObject = LinkAction.REMOVE_EXPIRY;
        } else if ("remove_password".equals(localObject)) {
          localObject = LinkAction.REMOVE_PASSWORD;
        } else if ("set_expiry".equals(localObject)) {
          localObject = LinkAction.SET_EXPIRY;
        } else if ("set_password".equals(localObject)) {
          localObject = LinkAction.SET_PASSWORD;
        } else {
          localObject = LinkAction.OTHER;
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
    
    public void a(LinkAction paramLinkAction, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (LinkAction.1.a[paramLinkAction.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 6: 
        paramJsonGenerator.writeString("set_password");
        return;
      case 5: 
        paramJsonGenerator.writeString("set_expiry");
        return;
      case 4: 
        paramJsonGenerator.writeString("remove_password");
        return;
      case 3: 
        paramJsonGenerator.writeString("remove_expiry");
        return;
      case 2: 
        paramJsonGenerator.writeString("change_audience");
        return;
      }
      paramJsonGenerator.writeString("change_access_level");
    }
  }
}
