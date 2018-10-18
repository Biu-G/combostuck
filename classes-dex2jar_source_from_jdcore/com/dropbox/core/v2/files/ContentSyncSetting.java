package com.dropbox.core.v2.files;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

public class ContentSyncSetting
{
  protected final String id;
  protected final SyncSetting syncSetting;
  
  public ContentSyncSetting(String paramString, SyncSetting paramSyncSetting)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 4)
      {
        if (Pattern.matches("id:.+", paramString))
        {
          id = paramString;
          if (paramSyncSetting != null)
          {
            syncSetting = paramSyncSetting;
            return;
          }
          throw new IllegalArgumentException("Required value for 'syncSetting' is null");
        }
        throw new IllegalArgumentException("String 'id' does not match pattern");
      }
      throw new IllegalArgumentException("String 'id' is shorter than 4");
    }
    throw new IllegalArgumentException("Required value for 'id' is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (paramObject.getClass().equals(getClass()))
    {
      paramObject = (ContentSyncSetting)paramObject;
      if ((id == id) || (id.equals(id)))
      {
        if (syncSetting == syncSetting) {
          break label88;
        }
        if (syncSetting.equals(syncSetting)) {
          return true;
        }
      }
      bool = false;
      label88:
      return bool;
    }
    return false;
  }
  
  public String getId()
  {
    return id;
  }
  
  public SyncSetting getSyncSetting()
  {
    return syncSetting;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { id, syncSetting });
  }
  
  public String toString()
  {
    return Serializer.INSTANCE.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return Serializer.INSTANCE.serialize(this, true);
  }
  
  public static class Serializer
    extends StructSerializer<ContentSyncSetting>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public ContentSyncSetting deserialize(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Object localObject2 = null;
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject1 = readTag(paramJsonParser);
      }
      else
      {
        localObject1 = null;
      }
      if (localObject1 == null)
      {
        localObject1 = null;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("id".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("sync_setting".equals(str)) {
            localObject1 = SyncSetting.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new ContentSyncSetting((String)localObject2, (SyncSetting)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"sync_setting\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"id\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void serialize(ContentSyncSetting paramContentSyncSetting, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("id");
      StoneSerializers.string().serialize(id, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("sync_setting");
      SyncSetting.Serializer.INSTANCE.serialize(syncSetting, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
