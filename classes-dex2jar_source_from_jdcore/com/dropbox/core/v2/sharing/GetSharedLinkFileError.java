package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum GetSharedLinkFileError
{
  static
  {
    SHARED_LINK_ACCESS_DENIED = new GetSharedLinkFileError("SHARED_LINK_ACCESS_DENIED", 1);
    UNSUPPORTED_LINK_TYPE = new GetSharedLinkFileError("UNSUPPORTED_LINK_TYPE", 2);
  }
  
  private GetSharedLinkFileError() {}
  
  static class a
    extends UnionSerializer<GetSharedLinkFileError>
  {
    public static final a a = new a();
    
    a() {}
    
    public GetSharedLinkFileError a(JsonParser paramJsonParser)
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
        if ("shared_link_not_found".equals(localObject))
        {
          localObject = GetSharedLinkFileError.SHARED_LINK_NOT_FOUND;
        }
        else if ("shared_link_access_denied".equals(localObject))
        {
          localObject = GetSharedLinkFileError.SHARED_LINK_ACCESS_DENIED;
        }
        else if ("unsupported_link_type".equals(localObject))
        {
          localObject = GetSharedLinkFileError.UNSUPPORTED_LINK_TYPE;
        }
        else if ("other".equals(localObject))
        {
          localObject = GetSharedLinkFileError.OTHER;
        }
        else
        {
          if (!"shared_link_is_directory".equals(localObject)) {
            break label131;
          }
          localObject = GetSharedLinkFileError.SHARED_LINK_IS_DIRECTORY;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label131:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(GetSharedLinkFileError paramGetSharedLinkFileError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GetSharedLinkFileError.1.a[paramGetSharedLinkFileError.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramGetSharedLinkFileError);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 5: 
        paramJsonGenerator.writeString("shared_link_is_directory");
        return;
      case 4: 
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
