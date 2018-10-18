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
import java.util.Arrays;
import java.util.regex.Pattern;

public class RootInfo
{
  protected final String homeNamespaceId;
  protected final String rootNamespaceId;
  
  public RootInfo(String paramString1, String paramString2)
  {
    if (paramString1 != null)
    {
      if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString1))
      {
        rootNamespaceId = paramString1;
        if (paramString2 != null)
        {
          if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString2))
          {
            homeNamespaceId = paramString2;
            return;
          }
          throw new IllegalArgumentException("String 'homeNamespaceId' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'homeNamespaceId' is null");
      }
      throw new IllegalArgumentException("String 'rootNamespaceId' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'rootNamespaceId' is null");
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
      paramObject = (RootInfo)paramObject;
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
    return Arrays.hashCode(new Object[] { rootNamespaceId, homeNamespaceId });
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
    extends StructSerializer<RootInfo>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public RootInfo deserialize(JsonParser paramJsonParser, boolean paramBoolean)
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
        if (!"".equals(str)) {}
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
          if (localObject1 != null) {
            localObject1 = new RootInfo((String)localObject2, (String)localObject1);
          } else {
            throw new JsonParseException(paramJsonParser, "Required field \"home_namespace_id\" missing.");
          }
        }
        else {
          throw new JsonParseException(paramJsonParser, "Required field \"root_namespace_id\" missing.");
        }
      }
      else if ("".equals(localObject1))
      {
        localObject1 = INSTANCE.deserialize(paramJsonParser, true);
      }
      else if ("team".equals(localObject1))
      {
        localObject1 = TeamRootInfo.a.a.a(paramJsonParser, true);
      }
      else
      {
        if (!"user".equals(localObject1)) {
          break label230;
        }
        localObject1 = UserRootInfo.a.a.a(paramJsonParser, true);
      }
      if (!paramBoolean) {
        expectEndObject(paramJsonParser);
      }
      return localObject1;
      label230:
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void serialize(RootInfo paramRootInfo, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if ((paramRootInfo instanceof TeamRootInfo))
      {
        TeamRootInfo.a.a.a((TeamRootInfo)paramRootInfo, paramJsonGenerator, paramBoolean);
        return;
      }
      if ((paramRootInfo instanceof UserRootInfo))
      {
        UserRootInfo.a.a.a((UserRootInfo)paramRootInfo, paramJsonGenerator, paramBoolean);
        return;
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
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
