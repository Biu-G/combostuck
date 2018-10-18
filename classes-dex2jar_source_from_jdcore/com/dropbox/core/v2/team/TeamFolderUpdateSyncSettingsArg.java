package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.ContentSyncSettingArg;
import com.dropbox.core.v2.files.ContentSyncSettingArg.Serializer;
import com.dropbox.core.v2.files.SyncSettingArg;
import com.dropbox.core.v2.files.SyncSettingArg.Serializer;
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

class TeamFolderUpdateSyncSettingsArg
  extends ad
{
  protected final SyncSettingArg a;
  protected final List<ContentSyncSettingArg> c;
  
  public TeamFolderUpdateSyncSettingsArg(String paramString)
  {
    this(paramString, null, null);
  }
  
  public TeamFolderUpdateSyncSettingsArg(String paramString, SyncSettingArg paramSyncSettingArg, List<ContentSyncSettingArg> paramList)
  {
    super(paramString);
    a = paramSyncSettingArg;
    if (paramList != null)
    {
      paramString = paramList.iterator();
      while (paramString.hasNext()) {
        if ((ContentSyncSettingArg)paramString.next() == null) {
          throw new IllegalArgumentException("An item in list 'contentSyncSettings' is null");
        }
      }
    }
    c = paramList;
  }
  
  public static Builder a(String paramString)
  {
    return new Builder(paramString);
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
      paramObject = (TeamFolderUpdateSyncSettingsArg)paramObject;
      if (((b == b) || (b.equals(b))) && ((a == a) || ((a != null) && (a.equals(a)))))
      {
        if (c == c) {
          break label129;
        }
        if ((c != null) && (c.equals(c))) {
          return true;
        }
      }
      bool = false;
      label129:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, c });
    return super.hashCode() * 31 + i;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected List<ContentSyncSettingArg> contentSyncSettings;
    protected SyncSettingArg syncSetting;
    protected final String teamFolderId;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString))
        {
          teamFolderId = paramString;
          syncSetting = null;
          contentSyncSettings = null;
          return;
        }
        throw new IllegalArgumentException("String 'teamFolderId' does not match pattern");
      }
      throw new IllegalArgumentException("Required value for 'teamFolderId' is null");
    }
    
    public TeamFolderUpdateSyncSettingsArg build()
    {
      return new TeamFolderUpdateSyncSettingsArg(teamFolderId, syncSetting, contentSyncSettings);
    }
    
    public Builder withContentSyncSettings(List<ContentSyncSettingArg> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((ContentSyncSettingArg)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'contentSyncSettings' is null");
          }
        }
      }
      contentSyncSettings = paramList;
      return this;
    }
    
    public Builder withSyncSetting(SyncSettingArg paramSyncSettingArg)
    {
      syncSetting = paramSyncSettingArg;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<TeamFolderUpdateSyncSettingsArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public TeamFolderUpdateSyncSettingsArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("team_folder_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("sync_setting".equals(str2)) {
            localObject2 = (SyncSettingArg)StoneSerializers.nullable(SyncSettingArg.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("content_sync_settings".equals(str2)) {
            localObject1 = (List)StoneSerializers.nullable(StoneSerializers.list(ContentSyncSettingArg.Serializer.INSTANCE)).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new TeamFolderUpdateSyncSettingsArg(str1, (SyncSettingArg)localObject2, (List)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"team_folder_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(TeamFolderUpdateSyncSettingsArg paramTeamFolderUpdateSyncSettingsArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("team_folder_id");
      StoneSerializers.string().serialize(b, paramJsonGenerator);
      if (a != null)
      {
        paramJsonGenerator.writeFieldName("sync_setting");
        StoneSerializers.nullable(SyncSettingArg.Serializer.INSTANCE).serialize(a, paramJsonGenerator);
      }
      if (c != null)
      {
        paramJsonGenerator.writeFieldName("content_sync_settings");
        StoneSerializers.nullable(StoneSerializers.list(ContentSyncSettingArg.Serializer.INSTANCE)).serialize(c, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
