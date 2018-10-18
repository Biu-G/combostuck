package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum SyncSetting
{
  private SyncSetting() {}
  
  public static class Serializer
    extends UnionSerializer<SyncSetting>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public SyncSetting deserialize(JsonParser paramJsonParser)
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
          localObject = SyncSetting.DEFAULT;
        } else if ("not_synced".equals(localObject)) {
          localObject = SyncSetting.NOT_SYNCED;
        } else if ("not_synced_inactive".equals(localObject)) {
          localObject = SyncSetting.NOT_SYNCED_INACTIVE;
        } else {
          localObject = SyncSetting.OTHER;
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
    
    public void serialize(SyncSetting paramSyncSetting, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SyncSetting.1.a[paramSyncSetting.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeString("not_synced_inactive");
        return;
      case 2: 
        paramJsonGenerator.writeString("not_synced");
        return;
      }
      paramJsonGenerator.writeString("default");
    }
  }
}
