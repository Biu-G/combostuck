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

public class TeamRootInfo
  extends RootInfo
{
  protected final String homePath;
  
  public TeamRootInfo(String paramString1, String paramString2, String paramString3)
  {
    super(paramString1, paramString2);
    if (paramString3 != null)
    {
      homePath = paramString3;
      return;
    }
    throw new IllegalArgumentException("Required value for 'homePath' is null");
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
      paramObject = (TeamRootInfo)paramObject;
      if (((rootNamespaceId == rootNamespaceId) || (rootNamespaceId.equals(rootNamespaceId))) && ((homeNamespaceId == homeNamespaceId) || (homeNamespaceId.equals(homeNamespaceId))))
      {
        if (homePath == homePath) {
          break label113;
        }
        if (homePath.equals(homePath)) {
          return true;
        }
      }
      bool = false;
      label113:
      return bool;
    }
    return false;
  }
  
  public String getHomeNamespaceId()
  {
    return homeNamespaceId;
  }
  
  public String getHomePath()
  {
    return homePath;
  }
  
  public String getRootNamespaceId()
  {
    return rootNamespaceId;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { homePath });
    return super.hashCode() * 31 + i;
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
    extends StructSerializer<TeamRootInfo>
  {
    public static final a a = new a();
    
    a() {}
    
    public TeamRootInfo a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      String str1 = null;
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject2 = readTag(paramJsonParser);
        localObject1 = localObject2;
        if (!"team".equals(localObject2)) {}
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
          if ("root_namespace_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("home_namespace_id".equals(str2)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("home_path".equals(str2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
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
              localObject1 = new TeamRootInfo(str1, (String)localObject2, (String)localObject1);
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"home_path\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"home_namespace_id\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"root_namespace_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(TeamRootInfo paramTeamRootInfo, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      writeTag("team", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("root_namespace_id");
      StoneSerializers.string().serialize(rootNamespaceId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("home_namespace_id");
      StoneSerializers.string().serialize(homeNamespaceId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("home_path");
      StoneSerializers.string().serialize(homePath, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
