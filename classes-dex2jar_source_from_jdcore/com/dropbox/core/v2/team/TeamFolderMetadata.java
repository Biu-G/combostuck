package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.ContentSyncSetting;
import com.dropbox.core.v2.files.ContentSyncSetting.Serializer;
import com.dropbox.core.v2.files.SyncSetting;
import com.dropbox.core.v2.files.SyncSetting.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public class TeamFolderMetadata
{
  protected final List<ContentSyncSetting> contentSyncSettings;
  protected final boolean isTeamSharedDropbox;
  protected final String name;
  protected final TeamFolderStatus status;
  protected final SyncSetting syncSetting;
  protected final String teamFolderId;
  
  public TeamFolderMetadata(String paramString1, String paramString2, TeamFolderStatus paramTeamFolderStatus, boolean paramBoolean, SyncSetting paramSyncSetting, List<ContentSyncSetting> paramList)
  {
    if (paramString1 != null)
    {
      if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString1))
      {
        teamFolderId = paramString1;
        if (paramString2 != null)
        {
          name = paramString2;
          if (paramTeamFolderStatus != null)
          {
            status = paramTeamFolderStatus;
            isTeamSharedDropbox = paramBoolean;
            if (paramSyncSetting != null)
            {
              syncSetting = paramSyncSetting;
              if (paramList != null)
              {
                paramString1 = paramList.iterator();
                while (paramString1.hasNext()) {
                  if ((ContentSyncSetting)paramString1.next() == null) {
                    throw new IllegalArgumentException("An item in list 'contentSyncSettings' is null");
                  }
                }
                contentSyncSettings = paramList;
                return;
              }
              throw new IllegalArgumentException("Required value for 'contentSyncSettings' is null");
            }
            throw new IllegalArgumentException("Required value for 'syncSetting' is null");
          }
          throw new IllegalArgumentException("Required value for 'status' is null");
        }
        throw new IllegalArgumentException("Required value for 'name' is null");
      }
      throw new IllegalArgumentException("String 'teamFolderId' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'teamFolderId' is null");
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
      paramObject = (TeamFolderMetadata)paramObject;
      if (((teamFolderId == teamFolderId) || (teamFolderId.equals(teamFolderId))) && ((name == name) || (name.equals(name))) && ((status == status) || (status.equals(status))) && (isTeamSharedDropbox == isTeamSharedDropbox) && ((syncSetting == syncSetting) || (syncSetting.equals(syncSetting))))
      {
        if (contentSyncSettings == contentSyncSettings) {
          break label176;
        }
        if (contentSyncSettings.equals(contentSyncSettings)) {
          return true;
        }
      }
      bool = false;
      label176:
      return bool;
    }
    return false;
  }
  
  public List<ContentSyncSetting> getContentSyncSettings()
  {
    return contentSyncSettings;
  }
  
  public boolean getIsTeamSharedDropbox()
  {
    return isTeamSharedDropbox;
  }
  
  public String getName()
  {
    return name;
  }
  
  public TeamFolderStatus getStatus()
  {
    return status;
  }
  
  public SyncSetting getSyncSetting()
  {
    return syncSetting;
  }
  
  public String getTeamFolderId()
  {
    return teamFolderId;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { teamFolderId, name, status, Boolean.valueOf(isTeamSharedDropbox), syncSetting, contentSyncSettings });
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
    extends StructSerializer<TeamFolderMetadata>
  {
    public static final a a = new a();
    
    a() {}
    
    public TeamFolderMetadata a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Boolean localBoolean = null;
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
        String str1 = null;
        localObject1 = str1;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        Object localObject4 = localObject3;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("team_folder_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("name".equals(str2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("status".equals(str2)) {
            localObject2 = TeamFolderStatus.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("is_team_shared_dropbox".equals(str2)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("sync_setting".equals(str2)) {
            localObject3 = SyncSetting.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("content_sync_settings".equals(str2)) {
            localObject4 = (List)StoneSerializers.list(ContentSyncSetting.Serializer.INSTANCE).deserialize(paramJsonParser);
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
              if (localBoolean != null)
              {
                if (localObject3 != null)
                {
                  if (localObject4 != null)
                  {
                    localObject1 = new TeamFolderMetadata(str1, (String)localObject1, (TeamFolderStatus)localObject2, localBoolean.booleanValue(), (SyncSetting)localObject3, (List)localObject4);
                    if (!paramBoolean) {
                      expectEndObject(paramJsonParser);
                    }
                    return localObject1;
                  }
                  throw new JsonParseException(paramJsonParser, "Required field \"content_sync_settings\" missing.");
                }
                throw new JsonParseException(paramJsonParser, "Required field \"sync_setting\" missing.");
              }
              throw new JsonParseException(paramJsonParser, "Required field \"is_team_shared_dropbox\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"status\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"name\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"team_folder_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(TeamFolderMetadata paramTeamFolderMetadata, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("team_folder_id");
      StoneSerializers.string().serialize(teamFolderId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("name");
      StoneSerializers.string().serialize(name, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("status");
      TeamFolderStatus.Serializer.INSTANCE.serialize(status, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("is_team_shared_dropbox");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(isTeamSharedDropbox), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("sync_setting");
      SyncSetting.Serializer.INSTANCE.serialize(syncSetting, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("content_sync_settings");
      StoneSerializers.list(ContentSyncSetting.Serializer.INSTANCE).serialize(contentSyncSettings, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
