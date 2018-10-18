package com.dropbox.core.v2.common;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public class UserRootInfo
  extends RootInfo
{
  public UserRootInfo(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
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
      paramObject = (UserRootInfo)paramObject;
      if ((rootNamespaceId == rootNamespaceId) || (rootNamespaceId.equals(rootNamespaceId)))
      {
        if (homeNamespaceId == homeNamespaceId) {
          break label88;
        }
        if (homeNamespaceId.equals(homeNamespaceId)) {
          return true;
        }
      }
      bool = false;
      label88:
      return bool;
    }
    return false;
  }
  
  public String getHomeNamespaceId()
  {
    return homeNamespaceId;
  }
  
  public String getRootNamespaceId()
  {
    return rootNamespaceId;
  }
  
  public int hashCode()
  {
    return getClass().toString().hashCode();
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
    extends StructSerializer<UserRootInfo>
  {
    public static final a a = new a();
    
    a() {}
    
    public UserRootInfo a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Object localObject2 = null;
      String str;
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        str = readTag(paramJsonParser);
        localObject1 = str;
        if (!"user".equals(str)) {}
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
          str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("root_namespace_id".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("home_namespace_id".equals(str)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new UserRootInfo((String)localObject2, (String)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"home_namespace_id\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"root_namespace_id\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(UserRootInfo paramUserRootInfo, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      writeTag("user", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("root_namespace_id");
      StoneSerializers.string().serialize(rootNamespaceId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("home_namespace_id");
      StoneSerializers.string().serialize(homeNamespaceId, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
