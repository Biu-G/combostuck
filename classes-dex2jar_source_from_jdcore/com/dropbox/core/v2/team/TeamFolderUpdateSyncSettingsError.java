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

public final class TeamFolderUpdateSyncSettingsError
{
  public static final TeamFolderUpdateSyncSettingsError OTHER = new TeamFolderUpdateSyncSettingsError().a(Tag.OTHER);
  private Tag a;
  private TeamFolderAccessError b;
  private TeamFolderInvalidStatusError c;
  private TeamFolderTeamSharedDropboxError d;
  private SyncSettingsError e;
  
  private TeamFolderUpdateSyncSettingsError() {}
  
  private TeamFolderUpdateSyncSettingsError a(Tag paramTag)
  {
    TeamFolderUpdateSyncSettingsError localTeamFolderUpdateSyncSettingsError = new TeamFolderUpdateSyncSettingsError();
    a = paramTag;
    return localTeamFolderUpdateSyncSettingsError;
  }
  
  private TeamFolderUpdateSyncSettingsError a(Tag paramTag, SyncSettingsError paramSyncSettingsError)
  {
    TeamFolderUpdateSyncSettingsError localTeamFolderUpdateSyncSettingsError = new TeamFolderUpdateSyncSettingsError();
    a = paramTag;
    e = paramSyncSettingsError;
    return localTeamFolderUpdateSyncSettingsError;
  }
  
  private TeamFolderUpdateSyncSettingsError a(Tag paramTag, TeamFolderAccessError paramTeamFolderAccessError)
  {
    TeamFolderUpdateSyncSettingsError localTeamFolderUpdateSyncSettingsError = new TeamFolderUpdateSyncSettingsError();
    a = paramTag;
    b = paramTeamFolderAccessError;
    return localTeamFolderUpdateSyncSettingsError;
  }
  
  private TeamFolderUpdateSyncSettingsError a(Tag paramTag, TeamFolderInvalidStatusError paramTeamFolderInvalidStatusError)
  {
    TeamFolderUpdateSyncSettingsError localTeamFolderUpdateSyncSettingsError = new TeamFolderUpdateSyncSettingsError();
    a = paramTag;
    c = paramTeamFolderInvalidStatusError;
    return localTeamFolderUpdateSyncSettingsError;
  }
  
  private TeamFolderUpdateSyncSettingsError a(Tag paramTag, TeamFolderTeamSharedDropboxError paramTeamFolderTeamSharedDropboxError)
  {
    TeamFolderUpdateSyncSettingsError localTeamFolderUpdateSyncSettingsError = new TeamFolderUpdateSyncSettingsError();
    a = paramTag;
    d = paramTeamFolderTeamSharedDropboxError;
    return localTeamFolderUpdateSyncSettingsError;
  }
  
  public static TeamFolderUpdateSyncSettingsError accessError(TeamFolderAccessError paramTeamFolderAccessError)
  {
    if (paramTeamFolderAccessError != null) {
      return new TeamFolderUpdateSyncSettingsError().a(Tag.ACCESS_ERROR, paramTeamFolderAccessError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static TeamFolderUpdateSyncSettingsError statusError(TeamFolderInvalidStatusError paramTeamFolderInvalidStatusError)
  {
    if (paramTeamFolderInvalidStatusError != null) {
      return new TeamFolderUpdateSyncSettingsError().a(Tag.STATUS_ERROR, paramTeamFolderInvalidStatusError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static TeamFolderUpdateSyncSettingsError syncSettingsError(SyncSettingsError paramSyncSettingsError)
  {
    if (paramSyncSettingsError != null) {
      return new TeamFolderUpdateSyncSettingsError().a(Tag.SYNC_SETTINGS_ERROR, paramSyncSettingsError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static TeamFolderUpdateSyncSettingsError teamSharedDropboxError(TeamFolderTeamSharedDropboxError paramTeamFolderTeamSharedDropboxError)
  {
    if (paramTeamFolderTeamSharedDropboxError != null) {
      return new TeamFolderUpdateSyncSettingsError().a(Tag.TEAM_SHARED_DROPBOX_ERROR, paramTeamFolderTeamSharedDropboxError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool4 = true;
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof TeamFolderUpdateSyncSettingsError))
    {
      paramObject = (TeamFolderUpdateSyncSettingsError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 5: 
        if (e != e)
        {
          if (e.equals(e)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 4: 
        return true;
      case 3: 
        bool1 = bool2;
        if (d != d)
        {
          if (d.equals(d)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 2: 
        bool1 = bool3;
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      }
      bool1 = bool4;
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
  
  public TeamFolderAccessError getAccessErrorValue()
  {
    if (a == Tag.ACCESS_ERROR) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ACCESS_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public TeamFolderInvalidStatusError getStatusErrorValue()
  {
    if (a == Tag.STATUS_ERROR) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.STATUS_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public SyncSettingsError getSyncSettingsErrorValue()
  {
    if (a == Tag.SYNC_SETTINGS_ERROR) {
      return e;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.SYNC_SETTINGS_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public TeamFolderTeamSharedDropboxError getTeamSharedDropboxErrorValue()
  {
    if (a == Tag.TEAM_SHARED_DROPBOX_ERROR) {
      return d;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.TEAM_SHARED_DROPBOX_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, b, c, d, e });
    return super.hashCode() * 31 + i;
  }
  
  public boolean isAccessError()
  {
    return a == Tag.ACCESS_ERROR;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isStatusError()
  {
    return a == Tag.STATUS_ERROR;
  }
  
  public boolean isSyncSettingsError()
  {
    return a == Tag.SYNC_SETTINGS_ERROR;
  }
  
  public boolean isTeamSharedDropboxError()
  {
    return a == Tag.TEAM_SHARED_DROPBOX_ERROR;
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
    extends UnionSerializer<TeamFolderUpdateSyncSettingsError>
  {
    public static final a a = new a();
    
    a() {}
    
    public TeamFolderUpdateSyncSettingsError a(JsonParser paramJsonParser)
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
        if ("access_error".equals(localObject))
        {
          expectField("access_error", paramJsonParser);
          localObject = TeamFolderUpdateSyncSettingsError.accessError(TeamFolderAccessError.a.a.a(paramJsonParser));
        }
        else if ("status_error".equals(localObject))
        {
          expectField("status_error", paramJsonParser);
          localObject = TeamFolderUpdateSyncSettingsError.statusError(TeamFolderInvalidStatusError.a.a.a(paramJsonParser));
        }
        else if ("team_shared_dropbox_error".equals(localObject))
        {
          expectField("team_shared_dropbox_error", paramJsonParser);
          localObject = TeamFolderUpdateSyncSettingsError.teamSharedDropboxError(TeamFolderTeamSharedDropboxError.a.a.a(paramJsonParser));
        }
        else if ("other".equals(localObject))
        {
          localObject = TeamFolderUpdateSyncSettingsError.OTHER;
        }
        else
        {
          if (!"sync_settings_error".equals(localObject)) {
            break label183;
          }
          expectField("sync_settings_error", paramJsonParser);
          localObject = TeamFolderUpdateSyncSettingsError.syncSettingsError(SyncSettingsError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label183:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(TeamFolderUpdateSyncSettingsError paramTeamFolderUpdateSyncSettingsError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (TeamFolderUpdateSyncSettingsError.1.a[paramTeamFolderUpdateSyncSettingsError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramTeamFolderUpdateSyncSettingsError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 5: 
        paramJsonGenerator.writeStartObject();
        writeTag("sync_settings_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("sync_settings_error");
        SyncSettingsError.Serializer.INSTANCE.serialize(TeamFolderUpdateSyncSettingsError.d(paramTeamFolderUpdateSyncSettingsError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 4: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("team_shared_dropbox_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("team_shared_dropbox_error");
        TeamFolderTeamSharedDropboxError.a.a.a(TeamFolderUpdateSyncSettingsError.c(paramTeamFolderUpdateSyncSettingsError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("status_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("status_error");
        TeamFolderInvalidStatusError.a.a.a(TeamFolderUpdateSyncSettingsError.b(paramTeamFolderUpdateSyncSettingsError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("access_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_error");
      TeamFolderAccessError.a.a.a(TeamFolderUpdateSyncSettingsError.a(paramTeamFolderUpdateSyncSettingsError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
