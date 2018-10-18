package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.SyncSettingsError;
import com.dropbox.core.v2.files.SyncSettingsError.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class TeamFolderCreateError
{
  public static final TeamFolderCreateError FOLDER_NAME_ALREADY_USED = new TeamFolderCreateError().a(Tag.FOLDER_NAME_ALREADY_USED);
  public static final TeamFolderCreateError FOLDER_NAME_RESERVED = new TeamFolderCreateError().a(Tag.FOLDER_NAME_RESERVED);
  public static final TeamFolderCreateError INVALID_FOLDER_NAME = new TeamFolderCreateError().a(Tag.INVALID_FOLDER_NAME);
  public static final TeamFolderCreateError OTHER = new TeamFolderCreateError().a(Tag.OTHER);
  private Tag a;
  private SyncSettingsError b;
  
  private TeamFolderCreateError() {}
  
  private TeamFolderCreateError a(Tag paramTag)
  {
    TeamFolderCreateError localTeamFolderCreateError = new TeamFolderCreateError();
    a = paramTag;
    return localTeamFolderCreateError;
  }
  
  private TeamFolderCreateError a(Tag paramTag, SyncSettingsError paramSyncSettingsError)
  {
    TeamFolderCreateError localTeamFolderCreateError = new TeamFolderCreateError();
    a = paramTag;
    b = paramSyncSettingsError;
    return localTeamFolderCreateError;
  }
  
  public static TeamFolderCreateError syncSettingsError(SyncSettingsError paramSyncSettingsError)
  {
    if (paramSyncSettingsError != null) {
      return new TeamFolderCreateError().a(Tag.SYNC_SETTINGS_ERROR, paramSyncSettingsError);
    }
    throw new IllegalArgumentException("Value is null");
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
    if ((paramObject instanceof TeamFolderCreateError))
    {
      paramObject = (TeamFolderCreateError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 5: 
        return true;
      case 4: 
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool = false;
        }
        return bool;
      case 3: 
        return true;
      case 2: 
        return true;
      }
      return true;
    }
    return false;
  }
  
  public SyncSettingsError getSyncSettingsErrorValue()
  {
    if (a == Tag.SYNC_SETTINGS_ERROR) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.SYNC_SETTINGS_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isFolderNameAlreadyUsed()
  {
    return a == Tag.FOLDER_NAME_ALREADY_USED;
  }
  
  public boolean isFolderNameReserved()
  {
    return a == Tag.FOLDER_NAME_RESERVED;
  }
  
  public boolean isInvalidFolderName()
  {
    return a == Tag.INVALID_FOLDER_NAME;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isSyncSettingsError()
  {
    return a == Tag.SYNC_SETTINGS_ERROR;
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
    static
    {
      FOLDER_NAME_ALREADY_USED = new Tag("FOLDER_NAME_ALREADY_USED", 1);
      FOLDER_NAME_RESERVED = new Tag("FOLDER_NAME_RESERVED", 2);
      SYNC_SETTINGS_ERROR = new Tag("SYNC_SETTINGS_ERROR", 3);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<TeamFolderCreateError>
  {
    public static final a a = new a();
    
    a() {}
    
    public TeamFolderCreateError a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      int i;
      Object localObject;
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
      {
        i = 1;
        localObject = getStringValue(paramJsonParser);
        paramJsonParser.nextToken();
      }
      else
      {
        i = 0;
        expectStartObject(paramJsonParser);
        localObject = readTag(paramJsonParser);
      }
      if (localObject != null)
      {
        if ("invalid_folder_name".equals(localObject))
        {
          localObject = TeamFolderCreateError.INVALID_FOLDER_NAME;
        }
        else if ("folder_name_already_used".equals(localObject))
        {
          localObject = TeamFolderCreateError.FOLDER_NAME_ALREADY_USED;
        }
        else if ("folder_name_reserved".equals(localObject))
        {
          localObject = TeamFolderCreateError.FOLDER_NAME_RESERVED;
        }
        else if ("sync_settings_error".equals(localObject))
        {
          expectField("sync_settings_error", paramJsonParser);
          localObject = TeamFolderCreateError.syncSettingsError(SyncSettingsError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else
        {
          localObject = TeamFolderCreateError.OTHER;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(TeamFolderCreateError paramTeamFolderCreateError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (TeamFolderCreateError.1.a[paramTeamFolderCreateError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 4: 
        paramJsonGenerator.writeStartObject();
        writeTag("sync_settings_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("sync_settings_error");
        SyncSettingsError.Serializer.INSTANCE.serialize(TeamFolderCreateError.a(paramTeamFolderCreateError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 3: 
        paramJsonGenerator.writeString("folder_name_reserved");
        return;
      case 2: 
        paramJsonGenerator.writeString("folder_name_already_used");
        return;
      }
      paramJsonGenerator.writeString("invalid_folder_name");
    }
  }
}
