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

public class UploadWriteFailed
{
  protected final WriteError reason;
  protected final String uploadSessionId;
  
  public UploadWriteFailed(WriteError paramWriteError, String paramString)
  {
    if (paramWriteError != null)
    {
      reason = paramWriteError;
      if (paramString != null)
      {
        uploadSessionId = paramString;
        return;
      }
      throw new IllegalArgumentException("Required value for 'uploadSessionId' is null");
    }
    throw new IllegalArgumentException("Required value for 'reason' is null");
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
      paramObject = (UploadWriteFailed)paramObject;
      if ((reason == reason) || (reason.equals(reason)))
      {
        if (uploadSessionId == uploadSessionId) {
          break label88;
        }
        if (uploadSessionId.equals(uploadSessionId)) {
          return true;
        }
      }
      bool = false;
      label88:
      return bool;
    }
    return false;
  }
  
  public WriteError getReason()
  {
    return reason;
  }
  
  public String getUploadSessionId()
  {
    return uploadSessionId;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { reason, uploadSessionId });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  static class a
    extends StructSerializer<UploadWriteFailed>
  {
    public static final a a = new a();
    
    a() {}
    
    public UploadWriteFailed a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("reason".equals(str)) {
            localObject2 = WriteError.a.a.a(paramJsonParser);
          } else if ("upload_session_id".equals(str)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new UploadWriteFailed((WriteError)localObject2, (String)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"upload_session_id\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"reason\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(UploadWriteFailed paramUploadWriteFailed, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("reason");
      WriteError.a.a.a(reason, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("upload_session_id");
      StoneSerializers.string().serialize(uploadSessionId, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
