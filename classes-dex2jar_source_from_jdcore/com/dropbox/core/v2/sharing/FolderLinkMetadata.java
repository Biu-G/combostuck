package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.users.Team;
import com.dropbox.core.v2.users.Team.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Date;

public class FolderLinkMetadata
  extends SharedLinkMetadata
{
  public FolderLinkMetadata(String paramString1, String paramString2, LinkPermissions paramLinkPermissions)
  {
    this(paramString1, paramString2, paramLinkPermissions, null, null, null, null, null);
  }
  
  public FolderLinkMetadata(String paramString1, String paramString2, LinkPermissions paramLinkPermissions, String paramString3, Date paramDate, String paramString4, TeamMemberInfo paramTeamMemberInfo, Team paramTeam)
  {
    super(paramString1, paramString2, paramLinkPermissions, paramString3, paramDate, paramString4, paramTeamMemberInfo, paramTeam);
  }
  
  public static Builder newBuilder(String paramString1, String paramString2, LinkPermissions paramLinkPermissions)
  {
    return new Builder(paramString1, paramString2, paramLinkPermissions);
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
      paramObject = (FolderLinkMetadata)paramObject;
      if (((url == url) || (url.equals(url))) && ((name == name) || (name.equals(name))) && ((linkPermissions == linkPermissions) || (linkPermissions.equals(linkPermissions))) && ((id == id) || ((id != null) && (id.equals(id)))) && ((expires == expires) || ((expires != null) && (expires.equals(expires)))) && ((pathLower == pathLower) || ((pathLower != null) && (pathLower.equals(pathLower)))) && ((teamMemberInfo == teamMemberInfo) || ((teamMemberInfo != null) && (teamMemberInfo.equals(teamMemberInfo)))))
      {
        if (contentOwnerTeamInfo == contentOwnerTeamInfo) {
          break label273;
        }
        if ((contentOwnerTeamInfo != null) && (contentOwnerTeamInfo.equals(contentOwnerTeamInfo))) {
          return true;
        }
      }
      bool = false;
      label273:
      return bool;
    }
    return false;
  }
  
  public Team getContentOwnerTeamInfo()
  {
    return contentOwnerTeamInfo;
  }
  
  public Date getExpires()
  {
    return expires;
  }
  
  public String getId()
  {
    return id;
  }
  
  public LinkPermissions getLinkPermissions()
  {
    return linkPermissions;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getPathLower()
  {
    return pathLower;
  }
  
  public TeamMemberInfo getTeamMemberInfo()
  {
    return teamMemberInfo;
  }
  
  public String getUrl()
  {
    return url;
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
  
  public static class Builder
    extends SharedLinkMetadata.Builder
  {
    protected Builder(String paramString1, String paramString2, LinkPermissions paramLinkPermissions)
    {
      super(paramString2, paramLinkPermissions);
    }
    
    public FolderLinkMetadata build()
    {
      return new FolderLinkMetadata(url, name, linkPermissions, id, expires, pathLower, teamMemberInfo, contentOwnerTeamInfo);
    }
    
    public Builder withContentOwnerTeamInfo(Team paramTeam)
    {
      super.withContentOwnerTeamInfo(paramTeam);
      return this;
    }
    
    public Builder withExpires(Date paramDate)
    {
      super.withExpires(paramDate);
      return this;
    }
    
    public Builder withId(String paramString)
    {
      super.withId(paramString);
      return this;
    }
    
    public Builder withPathLower(String paramString)
    {
      super.withPathLower(paramString);
      return this;
    }
    
    public Builder withTeamMemberInfo(TeamMemberInfo paramTeamMemberInfo)
    {
      super.withTeamMemberInfo(paramTeamMemberInfo);
      return this;
    }
  }
  
  static class a
    extends StructSerializer<FolderLinkMetadata>
  {
    public static final a a = new a();
    
    a() {}
    
    public FolderLinkMetadata a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject2 = readTag(paramJsonParser);
        localObject1 = localObject2;
        if (!"folder".equals(localObject2)) {}
      }
      else
      {
        localObject1 = null;
      }
      if (localObject1 == null)
      {
        String str1 = null;
        localObject1 = str1;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        Object localObject4 = localObject3;
        Object localObject5 = localObject4;
        Object localObject6 = localObject5;
        Object localObject7 = localObject6;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("url".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("name".equals(str2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("link_permissions".equals(str2)) {
            localObject2 = (LinkPermissions)LinkPermissions.a.a.deserialize(paramJsonParser);
          } else if ("id".equals(str2)) {
            localObject3 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("expires".equals(str2)) {
            localObject4 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else if ("path_lower".equals(str2)) {
            localObject5 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("team_member_info".equals(str2)) {
            localObject6 = (TeamMemberInfo)StoneSerializers.nullableStruct(TeamMemberInfo.a.a).deserialize(paramJsonParser);
          } else if ("content_owner_team_info".equals(str2)) {
            localObject7 = (Team)StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject1 != null)
          {
            if (localObject2 != null)
            {
              localObject1 = new FolderLinkMetadata(str1, (String)localObject1, (LinkPermissions)localObject2, (String)localObject3, (Date)localObject4, (String)localObject5, (TeamMemberInfo)localObject6, (Team)localObject7);
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"link_permissions\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"name\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"url\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(FolderLinkMetadata paramFolderLinkMetadata, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      writeTag("folder", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("url");
      StoneSerializers.string().serialize(url, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("name");
      StoneSerializers.string().serialize(name, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("link_permissions");
      LinkPermissions.a.a.serialize(linkPermissions, paramJsonGenerator);
      if (id != null)
      {
        paramJsonGenerator.writeFieldName("id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(id, paramJsonGenerator);
      }
      if (expires != null)
      {
        paramJsonGenerator.writeFieldName("expires");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(expires, paramJsonGenerator);
      }
      if (pathLower != null)
      {
        paramJsonGenerator.writeFieldName("path_lower");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(pathLower, paramJsonGenerator);
      }
      if (teamMemberInfo != null)
      {
        paramJsonGenerator.writeFieldName("team_member_info");
        StoneSerializers.nullableStruct(TeamMemberInfo.a.a).serialize(teamMemberInfo, paramJsonGenerator);
      }
      if (contentOwnerTeamInfo != null)
      {
        paramJsonGenerator.writeFieldName("content_owner_team_info");
        StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).serialize(contentOwnerTeamInfo, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
