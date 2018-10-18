package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class TeamFolderGetInfoItem
{
  private Tag a;
  private String b;
  private TeamFolderMetadata c;
  
  private TeamFolderGetInfoItem() {}
  
  private TeamFolderGetInfoItem a(Tag paramTag, TeamFolderMetadata paramTeamFolderMetadata)
  {
    TeamFolderGetInfoItem localTeamFolderGetInfoItem = new TeamFolderGetInfoItem();
    a = paramTag;
    c = paramTeamFolderMetadata;
    return localTeamFolderGetInfoItem;
  }
  
  private TeamFolderGetInfoItem a(Tag paramTag, String paramString)
  {
    TeamFolderGetInfoItem localTeamFolderGetInfoItem = new TeamFolderGetInfoItem();
    a = paramTag;
    b = paramString;
    return localTeamFolderGetInfoItem;
  }
  
  public static TeamFolderGetInfoItem idNotFound(String paramString)
  {
    if (paramString != null) {
      return new TeamFolderGetInfoItem().a(Tag.ID_NOT_FOUND, paramString);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static TeamFolderGetInfoItem teamFolderMetadata(TeamFolderMetadata paramTeamFolderMetadata)
  {
    if (paramTeamFolderMetadata != null) {
      return new TeamFolderGetInfoItem().a(Tag.TEAM_FOLDER_METADATA, paramTeamFolderMetadata);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof TeamFolderGetInfoItem))
    {
      paramObject = (TeamFolderGetInfoItem)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 2: 
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      }
      bool1 = bool2;
      if (b != b)
      {
        if (b.equals(b)) {
          return true;
        }
        bool1 = false;
      }
      return bool1;
    }
    return false;
  }
  
  public String getIdNotFoundValue()
  {
    if (a == Tag.ID_NOT_FOUND) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ID_NOT_FOUND, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public TeamFolderMetadata getTeamFolderMetadataValue()
  {
    if (a == Tag.TEAM_FOLDER_METADATA) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.TEAM_FOLDER_METADATA, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public boolean isIdNotFound()
  {
    return a == Tag.ID_NOT_FOUND;
  }
  
  public boolean isTeamFolderMetadata()
  {
    return a == Tag.TEAM_FOLDER_METADATA;
  }
  
  public Tag tag()
  {
    return a;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  public static enum Tag
  {
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<TeamFolderGetInfoItem>
  {
    public static final a a = new a();
    
    a() {}
    
    public TeamFolderGetInfoItem a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      Object localObject;
      int i;
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
      {
        localObject = getStringValue(paramJsonParser);
        paramJsonParser.nextToken();
        i = 1;
      }
      else
      {
        expectStartObject(paramJsonParser);
        localObject = readTag(paramJsonParser);
        i = 0;
      }
      if (localObject != null)
      {
        if ("id_not_found".equals(localObject))
        {
          expectField("id_not_found", paramJsonParser);
          localObject = TeamFolderGetInfoItem.idNotFound((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else
        {
          if (!"team_folder_metadata".equals(localObject)) {
            break label107;
          }
          localObject = TeamFolderGetInfoItem.teamFolderMetadata(TeamFolderMetadata.a.a.a(paramJsonParser, true));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label107:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(TeamFolderGetInfoItem paramTeamFolderGetInfoItem, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (TeamFolderGetInfoItem.1.a[paramTeamFolderGetInfoItem.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramTeamFolderGetInfoItem.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("team_folder_metadata", paramJsonGenerator);
        TeamFolderMetadata.a.a.a(TeamFolderGetInfoItem.b(paramTeamFolderGetInfoItem), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("id_not_found", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("id_not_found");
      StoneSerializers.string().serialize(TeamFolderGetInfoItem.a(paramTeamFolderGetInfoItem), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
