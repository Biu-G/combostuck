package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum SyncSettingArg
{
  private SyncSettingArg() {}
  
  public static class Serializer
    extends UnionSerializer<SyncSettingArg>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public SyncSettingArg deserialize(JsonParser paramJsonParser)
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
        if ("default".equals(localObject)) {
          localObject = SyncSettingArg.DEFAULT;
        } else if ("not_synced".equals(localObject)) {
          localObject = SyncSettingArg.NOT_SYNCED;
        } else {
          localObject = SyncSettingArg.OTHER;
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
    
    public void serialize(SyncSettingArg paramSyncSettingArg, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SyncSettingArg.1.a[paramSyncSettingArg.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("not_synced");
        return;
      }
      paramJsonGenerator.writeString("default");
    }
  }
}
