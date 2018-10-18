package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum SharingFileAccessError
{
  static
  {
    INVALID_FILE = new SharingFileAccessError("INVALID_FILE", 1);
    IS_FOLDER = new SharingFileAccessError("IS_FOLDER", 2);
    INSIDE_PUBLIC_FOLDER = new SharingFileAccessError("INSIDE_PUBLIC_FOLDER", 3);
  }
  
  private SharingFileAccessError() {}
  
  static class a
    extends UnionSerializer<SharingFileAccessError>
  {
    public static final a a = new a();
    
    a() {}
    
    public SharingFileAccessError a(JsonParser paramJsonParser)
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
        if ("no_permission".equals(localObject)) {
          localObject = SharingFileAccessError.NO_PERMISSION;
        } else if ("invalid_file".equals(localObject)) {
          localObject = SharingFileAccessError.INVALID_FILE;
        } else if ("is_folder".equals(localObject)) {
          localObject = SharingFileAccessError.IS_FOLDER;
        } else if ("inside_public_folder".equals(localObject)) {
          localObject = SharingFileAccessError.INSIDE_PUBLIC_FOLDER;
        } else if ("inside_osx_package".equals(localObject)) {
          localObject = SharingFileAccessError.INSIDE_OSX_PACKAGE;
        } else {
          localObject = SharingFileAccessError.OTHER;
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
    
    public void a(SharingFileAccessError paramSharingFileAccessError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SharingFileAccessError.1.a[paramSharingFileAccessError.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 5: 
        paramJsonGenerator.writeString("inside_osx_package");
        return;
      case 4: 
        paramJsonGenerator.writeString("inside_public_folder");
        return;
      case 3: 
        paramJsonGenerator.writeString("is_folder");
        return;
      case 2: 
        paramJsonGenerator.writeString("invalid_file");
        return;
      }
      paramJsonGenerator.writeString("no_permission");
    }
  }
}
