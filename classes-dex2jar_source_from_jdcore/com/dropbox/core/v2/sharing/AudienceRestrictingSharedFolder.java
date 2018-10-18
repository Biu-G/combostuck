package com.dropbox.core.v2.sharing;

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

public class AudienceRestrictingSharedFolder
{
  protected final LinkAudience audience;
  protected final String name;
  protected final String sharedFolderId;
  
  public AudienceRestrictingSharedFolder(String paramString1, String paramString2, LinkAudience paramLinkAudience)
  {
    if (paramString1 != null)
    {
      if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString1))
      {
        sharedFolderId = paramString1;
        if (paramString2 != null)
        {
          name = paramString2;
          if (paramLinkAudience != null)
          {
            audience = paramLinkAudience;
            return;
          }
          throw new IllegalArgumentException("Required value for 'audience' is null");
        }
        throw new IllegalArgumentException("Required value for 'name' is null");
      }
      throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
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
      paramObject = (AudienceRestrictingSharedFolder)paramObject;
      if (((sharedFolderId == sharedFolderId) || (sharedFolderId.equals(sharedFolderId))) && ((name == name) || (name.equals(name))))
      {
        if (audience == audience) {
          break label113;
        }
        if (audience.equals(audience)) {
          return true;
        }
      }
      bool = false;
      label113:
      return bool;
    }
    return false;
  }
  
  public LinkAudience getAudience()
  {
    return audience;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getSharedFolderId()
  {
    return sharedFolderId;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { sharedFolderId, name, audience });
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
    extends StructSerializer<AudienceRestrictingSharedFolder>
  {
    public static final a a = new a();
    
    a() {}
    
    public AudienceRestrictingSharedFolder a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      String str1 = null;
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
        localObject2 = null;
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("shared_folder_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("name".equals(str2)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("audience".equals(str2)) {
            localObject1 = LinkAudience.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject2 != null)
          {
            if (localObject1 != null)
            {
              localObject1 = new AudienceRestrictingSharedFolder(str1, (String)localObject2, (LinkAudience)localObject1);
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"audience\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"name\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"shared_folder_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(AudienceRestrictingSharedFolder paramAudienceRestrictingSharedFolder, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("shared_folder_id");
      StoneSerializers.string().serialize(sharedFolderId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("name");
      StoneSerializers.string().serialize(name, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("audience");
      LinkAudience.Serializer.INSTANCE.serialize(audience, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
