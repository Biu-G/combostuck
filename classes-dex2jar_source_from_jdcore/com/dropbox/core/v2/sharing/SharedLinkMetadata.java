package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.users.Team;
import com.dropbox.core.v2.users.Team.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

public class SharedLinkMetadata
{
  protected final Team contentOwnerTeamInfo;
  protected final Date expires;
  protected final String id;
  protected final LinkPermissions linkPermissions;
  protected final String name;
  protected final String pathLower;
  protected final TeamMemberInfo teamMemberInfo;
  protected final String url;
  
  public SharedLinkMetadata(String paramString1, String paramString2, LinkPermissions paramLinkPermissions)
  {
    this(paramString1, paramString2, paramLinkPermissions, null, null, null, null, null);
  }
  
  public SharedLinkMetadata(String paramString1, String paramString2, LinkPermissions paramLinkPermissions, String paramString3, Date paramDate, String paramString4, TeamMemberInfo paramTeamMemberInfo, Team paramTeam)
  {
    if (paramString1 != null)
    {
      url = paramString1;
      if ((paramString3 != null) && (paramString3.length() < 1)) {
        throw new IllegalArgumentException("String 'id' is shorter than 1");
      }
      id = paramString3;
      if (paramString2 != null)
      {
        name = paramString2;
        expires = LangUtil.truncateMillis(paramDate);
        pathLower = paramString4;
        if (paramLinkPermissions != null)
        {
          linkPermissions = paramLinkPermissions;
          teamMemberInfo = paramTeamMemberInfo;
          contentOwnerTeamInfo = paramTeam;
          return;
        }
        throw new IllegalArgumentException("Required value for 'linkPermissions' is null");
      }
      throw new IllegalArgumentException("Required value for 'name' is null");
    }
    throw new IllegalArgumentException("Required value for 'url' is null");
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
      paramObject = (SharedLinkMetadata)paramObject;
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
    return Arrays.hashCode(new Object[] { url, id, name, expires, pathLower, linkPermissions, teamMemberInfo, contentOwnerTeamInfo });
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
  {
    protected Team contentOwnerTeamInfo;
    protected Date expires;
    protected String id;
    protected final LinkPermissions linkPermissions;
    protected final String name;
    protected String pathLower;
    protected TeamMemberInfo teamMemberInfo;
    protected final String url;
    
    protected Builder(String paramString1, String paramString2, LinkPermissions paramLinkPermissions)
    {
      if (paramString1 != null)
      {
        url = paramString1;
        if (paramString2 != null)
        {
          name = paramString2;
          if (paramLinkPermissions != null)
          {
            linkPermissions = paramLinkPermissions;
            id = null;
            expires = null;
            pathLower = null;
            teamMemberInfo = null;
            contentOwnerTeamInfo = null;
            return;
          }
          throw new IllegalArgumentException("Required value for 'linkPermissions' is null");
        }
        throw new IllegalArgumentException("Required value for 'name' is null");
      }
      throw new IllegalArgumentException("Required value for 'url' is null");
    }
    
    public SharedLinkMetadata build()
    {
      return new SharedLinkMetadata(url, name, linkPermissions, id, expires, pathLower, teamMemberInfo, contentOwnerTeamInfo);
    }
    
    public Builder withContentOwnerTeamInfo(Team paramTeam)
    {
      contentOwnerTeamInfo = paramTeam;
      return this;
    }
    
    public Builder withExpires(Date paramDate)
    {
      expires = LangUtil.truncateMillis(paramDate);
      return this;
    }
    
    public Builder withId(String paramString)
    {
      if ((paramString != null) && (paramString.length() < 1)) {
        throw new IllegalArgumentException("String 'id' is shorter than 1");
      }
      id = paramString;
      return this;
    }
    
    public Builder withPathLower(String paramString)
    {
      pathLower = paramString;
      return this;
    }
    
    public Builder withTeamMemberInfo(TeamMemberInfo paramTeamMemberInfo)
    {
      teamMemberInfo = paramTeamMemberInfo;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<SharedLinkMetadata>
  {
    public static final a a = new a();
    
    a() {}
    
    public SharedLinkMetadata a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject2 = readTag(paramJsonParser);
        localObject1 = localObject2;
        if (!"".equals(localObject2)) {}
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
            if (localObject2 != null) {
              localObject1 = new SharedLinkMetadata(str1, (String)localObject1, (LinkPermissions)localObject2, (String)localObject3, (Date)localObject4, (String)localObject5, (TeamMemberInfo)localObject6, (Team)localObject7);
            } else {
              throw new JsonParseException(paramJsonParser, "Required field \"link_permissions\" missing.");
            }
          }
          else {
            throw new JsonParseException(paramJsonParser, "Required field \"name\" missing.");
          }
        }
        else {
          throw new JsonParseException(paramJsonParser, "Required field \"url\" missing.");
        }
      }
      else if ("".equals(localObject1))
      {
        localObject1 = a.a(paramJsonParser, true);
      }
      else if ("file".equals(localObject1))
      {
        localObject1 = FileLinkMetadata.a.a.a(paramJsonParser, true);
      }
      else
      {
        if (!"folder".equals(localObject1)) {
          break label447;
        }
        localObject1 = FolderLinkMetadata.a.a.a(paramJsonParser, true);
      }
      if (!paramBoolean) {
        expectEndObject(paramJsonParser);
      }
      return localObject1;
      label447:
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(SharedLinkMetadata paramSharedLinkMetadata, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if ((paramSharedLinkMetadata instanceof FileLinkMetadata))
      {
        FileLinkMetadata.a.a.a((FileLinkMetadata)paramSharedLinkMetadata, paramJsonGenerator, paramBoolean);
        return;
      }
      if ((paramSharedLinkMetadata instanceof FolderLinkMetadata))
      {
        FolderLinkMetadata.a.a.a((FolderLinkMetadata)paramSharedLinkMetadata, paramJsonGenerator, paramBoolean);
        return;
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
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
