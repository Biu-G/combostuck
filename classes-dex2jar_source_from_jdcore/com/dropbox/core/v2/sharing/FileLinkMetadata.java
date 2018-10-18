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
import java.util.regex.Pattern;

public class FileLinkMetadata
  extends SharedLinkMetadata
{
  protected final Date clientModified;
  protected final String rev;
  protected final Date serverModified;
  protected final long size;
  
  public FileLinkMetadata(String paramString1, String paramString2, LinkPermissions paramLinkPermissions, Date paramDate1, Date paramDate2, String paramString3, long paramLong)
  {
    this(paramString1, paramString2, paramLinkPermissions, paramDate1, paramDate2, paramString3, paramLong, null, null, null, null, null);
  }
  
  public FileLinkMetadata(String paramString1, String paramString2, LinkPermissions paramLinkPermissions, Date paramDate1, Date paramDate2, String paramString3, long paramLong, String paramString4, Date paramDate3, String paramString5, TeamMemberInfo paramTeamMemberInfo, Team paramTeam)
  {
    super(paramString1, paramString2, paramLinkPermissions, paramString4, paramDate3, paramString5, paramTeamMemberInfo, paramTeam);
    if (paramDate1 != null)
    {
      clientModified = LangUtil.truncateMillis(paramDate1);
      if (paramDate2 != null)
      {
        serverModified = LangUtil.truncateMillis(paramDate2);
        if (paramString3 != null)
        {
          if (paramString3.length() >= 9)
          {
            if (Pattern.matches("[0-9a-f]+", paramString3))
            {
              rev = paramString3;
              size = paramLong;
              return;
            }
            throw new IllegalArgumentException("String 'rev' does not match pattern");
          }
          throw new IllegalArgumentException("String 'rev' is shorter than 9");
        }
        throw new IllegalArgumentException("Required value for 'rev' is null");
      }
      throw new IllegalArgumentException("Required value for 'serverModified' is null");
    }
    throw new IllegalArgumentException("Required value for 'clientModified' is null");
  }
  
  public static Builder newBuilder(String paramString1, String paramString2, LinkPermissions paramLinkPermissions, Date paramDate1, Date paramDate2, String paramString3, long paramLong)
  {
    return new Builder(paramString1, paramString2, paramLinkPermissions, paramDate1, paramDate2, paramString3, paramLong);
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
      paramObject = (FileLinkMetadata)paramObject;
      if (((url == url) || (url.equals(url))) && ((name == name) || (name.equals(name))) && ((linkPermissions == linkPermissions) || (linkPermissions.equals(linkPermissions))) && ((clientModified == clientModified) || (clientModified.equals(clientModified))) && ((serverModified == serverModified) || (serverModified.equals(serverModified))) && ((rev == rev) || (rev.equals(rev))) && (size == size) && ((id == id) || ((id != null) && (id.equals(id)))) && ((expires == expires) || ((expires != null) && (expires.equals(expires)))) && ((pathLower == pathLower) || ((pathLower != null) && (pathLower.equals(pathLower)))) && ((teamMemberInfo == teamMemberInfo) || ((teamMemberInfo != null) && (teamMemberInfo.equals(teamMemberInfo)))))
      {
        if (contentOwnerTeamInfo == contentOwnerTeamInfo) {
          break label360;
        }
        if ((contentOwnerTeamInfo != null) && (contentOwnerTeamInfo.equals(contentOwnerTeamInfo))) {
          return true;
        }
      }
      bool = false;
      label360:
      return bool;
    }
    return false;
  }
  
  public Date getClientModified()
  {
    return clientModified;
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
  
  public String getRev()
  {
    return rev;
  }
  
  public Date getServerModified()
  {
    return serverModified;
  }
  
  public long getSize()
  {
    return size;
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
    int i = Arrays.hashCode(new Object[] { clientModified, serverModified, rev, Long.valueOf(size) });
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
  
  public static class Builder
    extends SharedLinkMetadata.Builder
  {
    protected final Date clientModified;
    protected final String rev;
    protected final Date serverModified;
    protected final long size;
    
    protected Builder(String paramString1, String paramString2, LinkPermissions paramLinkPermissions, Date paramDate1, Date paramDate2, String paramString3, long paramLong)
    {
      super(paramString2, paramLinkPermissions);
      if (paramDate1 != null)
      {
        clientModified = LangUtil.truncateMillis(paramDate1);
        if (paramDate2 != null)
        {
          serverModified = LangUtil.truncateMillis(paramDate2);
          if (paramString3 != null)
          {
            if (paramString3.length() >= 9)
            {
              if (Pattern.matches("[0-9a-f]+", paramString3))
              {
                rev = paramString3;
                size = paramLong;
                return;
              }
              throw new IllegalArgumentException("String 'rev' does not match pattern");
            }
            throw new IllegalArgumentException("String 'rev' is shorter than 9");
          }
          throw new IllegalArgumentException("Required value for 'rev' is null");
        }
        throw new IllegalArgumentException("Required value for 'serverModified' is null");
      }
      throw new IllegalArgumentException("Required value for 'clientModified' is null");
    }
    
    public FileLinkMetadata build()
    {
      return new FileLinkMetadata(url, name, linkPermissions, clientModified, serverModified, rev, size, id, expires, pathLower, teamMemberInfo, contentOwnerTeamInfo);
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
    extends StructSerializer<FileLinkMetadata>
  {
    public static final a a = new a();
    
    a() {}
    
    public FileLinkMetadata a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Long localLong = null;
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject2 = readTag(paramJsonParser);
        localObject1 = localObject2;
        if (!"file".equals(localObject2)) {}
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
        Object localObject8 = localObject7;
        Object localObject9 = localObject8;
        Object localObject10 = localObject9;
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
          } else if ("client_modified".equals(str2)) {
            localObject3 = (Date)StoneSerializers.timestamp().deserialize(paramJsonParser);
          } else if ("server_modified".equals(str2)) {
            localObject4 = (Date)StoneSerializers.timestamp().deserialize(paramJsonParser);
          } else if ("rev".equals(str2)) {
            localObject5 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("size".equals(str2)) {
            localLong = (Long)StoneSerializers.uInt64().deserialize(paramJsonParser);
          } else if ("id".equals(str2)) {
            localObject6 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("expires".equals(str2)) {
            localObject7 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else if ("path_lower".equals(str2)) {
            localObject8 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("team_member_info".equals(str2)) {
            localObject9 = (TeamMemberInfo)StoneSerializers.nullableStruct(TeamMemberInfo.a.a).deserialize(paramJsonParser);
          } else if ("content_owner_team_info".equals(str2)) {
            localObject10 = (Team)StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).deserialize(paramJsonParser);
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
              if (localObject3 != null)
              {
                if (localObject4 != null)
                {
                  if (localObject5 != null)
                  {
                    if (localLong != null)
                    {
                      localObject1 = new FileLinkMetadata(str1, (String)localObject1, (LinkPermissions)localObject2, (Date)localObject3, (Date)localObject4, (String)localObject5, localLong.longValue(), (String)localObject6, (Date)localObject7, (String)localObject8, (TeamMemberInfo)localObject9, (Team)localObject10);
                      if (!paramBoolean) {
                        expectEndObject(paramJsonParser);
                      }
                      return localObject1;
                    }
                    throw new JsonParseException(paramJsonParser, "Required field \"size\" missing.");
                  }
                  throw new JsonParseException(paramJsonParser, "Required field \"rev\" missing.");
                }
                throw new JsonParseException(paramJsonParser, "Required field \"server_modified\" missing.");
              }
              throw new JsonParseException(paramJsonParser, "Required field \"client_modified\" missing.");
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
    
    public void a(FileLinkMetadata paramFileLinkMetadata, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      writeTag("file", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("url");
      StoneSerializers.string().serialize(url, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("name");
      StoneSerializers.string().serialize(name, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("link_permissions");
      LinkPermissions.a.a.serialize(linkPermissions, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("client_modified");
      StoneSerializers.timestamp().serialize(clientModified, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("server_modified");
      StoneSerializers.timestamp().serialize(serverModified, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("rev");
      StoneSerializers.string().serialize(rev, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("size");
      StoneSerializers.uInt64().serialize(Long.valueOf(size), paramJsonGenerator);
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
