package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum AccessInheritance
{
  private AccessInheritance() {}
  
  static class a
    extends UnionSerializer<AccessInheritance>
  {
    public static final a a = new a();
    
    a() {}
    
    public AccessInheritance a(JsonParser paramJsonParser)
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
        if ("inherit".equals(localObject)) {
          localObject = AccessInheritance.INHERIT;
        } else if ("no_inherit".equals(localObject)) {
          localObject = AccessInheritance.NO_INHERIT;
        } else {
          localObject = AccessInheritance.OTHER;
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
    
    public void a(AccessInheritance paramAccessInheritance, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (AccessInheritance.1.a[paramAccessInheritance.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("no_inherit");
        return;
      }
      paramJsonGenerator.writeString("inherit");
    }
  }
}
