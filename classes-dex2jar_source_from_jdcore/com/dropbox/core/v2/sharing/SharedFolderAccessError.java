package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum SharedFolderAccessError
{
  static
  {
    EMAIL_UNVERIFIED = new SharedFolderAccessError("EMAIL_UNVERIFIED", 2);
    UNMOUNTED = new SharedFolderAccessError("UNMOUNTED", 3);
  }
  
  private SharedFolderAccessError() {}
  
  static class a
    extends UnionSerializer<SharedFolderAccessError>
  {
    public static final a a = new a();
    
    a() {}
    
    public SharedFolderAccessError a(JsonParser paramJsonParser)
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
        if ("invalid_id".equals(localObject)) {
          localObject = SharedFolderAccessError.INVALID_ID;
        } else if ("not_a_member".equals(localObject)) {
          localObject = SharedFolderAccessError.NOT_A_MEMBER;
        } else if ("email_unverified".equals(localObject)) {
          localObject = SharedFolderAccessError.EMAIL_UNVERIFIED;
        } else if ("unmounted".equals(localObject)) {
          localObject = SharedFolderAccessError.UNMOUNTED;
        } else {
          localObject = SharedFolderAccessError.OTHER;
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
    
    public void a(SharedFolderAccessError paramSharedFolderAccessError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SharedFolderAccessError.1.a[paramSharedFolderAccessError.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 4: 
        paramJsonGenerator.writeString("unmounted");
        return;
      case 3: 
        paramJsonGenerator.writeString("email_unverified");
        return;
      case 2: 
        paramJsonGenerator.writeString("not_a_member");
        return;
      }
      paramJsonGenerator.writeString("invalid_id");
    }
  }
}
