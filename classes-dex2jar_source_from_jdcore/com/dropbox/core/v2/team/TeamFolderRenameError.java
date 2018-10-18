package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class TeamFolderRenameError
{
  public static final TeamFolderRenameError FOLDER_NAME_ALREADY_USED = new TeamFolderRenameError().a(Tag.FOLDER_NAME_ALREADY_USED);
  public static final TeamFolderRenameError FOLDER_NAME_RESERVED = new TeamFolderRenameError().a(Tag.FOLDER_NAME_RESERVED);
  public static final TeamFolderRenameError INVALID_FOLDER_NAME;
  public static final TeamFolderRenameError OTHER = new TeamFolderRenameError().a(Tag.OTHER);
  private Tag a;
  private TeamFolderAccessError b;
  private TeamFolderInvalidStatusError c;
  private TeamFolderTeamSharedDropboxError d;
  
  static
  {
    INVALID_FOLDER_NAME = new TeamFolderRenameError().a(Tag.INVALID_FOLDER_NAME);
  }
  
  private TeamFolderRenameError() {}
  
  private TeamFolderRenameError a(Tag paramTag)
  {
    TeamFolderRenameError localTeamFolderRenameError = new TeamFolderRenameError();
    a = paramTag;
    return localTeamFolderRenameError;
  }
  
  private TeamFolderRenameError a(Tag paramTag, TeamFolderAccessError paramTeamFolderAccessError)
  {
    TeamFolderRenameError localTeamFolderRenameError = new TeamFolderRenameError();
    a = paramTag;
    b = paramTeamFolderAccessError;
    return localTeamFolderRenameError;
  }
  
  private TeamFolderRenameError a(Tag paramTag, TeamFolderInvalidStatusError paramTeamFolderInvalidStatusError)
  {
    TeamFolderRenameError localTeamFolderRenameError = new TeamFolderRenameError();
    a = paramTag;
    c = paramTeamFolderInvalidStatusError;
    return localTeamFolderRenameError;
  }
  
  private TeamFolderRenameError a(Tag paramTag, TeamFolderTeamSharedDropboxError paramTeamFolderTeamSharedDropboxError)
  {
    TeamFolderRenameError localTeamFolderRenameError = new TeamFolderRenameError();
    a = paramTag;
    d = paramTeamFolderTeamSharedDropboxError;
    return localTeamFolderRenameError;
  }
  
  public static TeamFolderRenameError accessError(TeamFolderAccessError paramTeamFolderAccessError)
  {
    if (paramTeamFolderAccessError != null) {
      return new TeamFolderRenameError().a(Tag.ACCESS_ERROR, paramTeamFolderAccessError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static TeamFolderRenameError statusError(TeamFolderInvalidStatusError paramTeamFolderInvalidStatusError)
  {
    if (paramTeamFolderInvalidStatusError != null) {
      return new TeamFolderRenameError().a(Tag.STATUS_ERROR, paramTeamFolderInvalidStatusError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static TeamFolderRenameError teamSharedDropboxError(TeamFolderTeamSharedDropboxError paramTeamFolderTeamSharedDropboxError)
  {
    if (paramTeamFolderTeamSharedDropboxError != null) {
      return new TeamFolderRenameError().a(Tag.TEAM_SHARED_DROPBOX_ERROR, paramTeamFolderTeamSharedDropboxError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof TeamFolderRenameError))
    {
      paramObject = (TeamFolderRenameError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 7: 
        return true;
      case 6: 
        return true;
      case 5: 
        return true;
      case 4: 
        return true;
      case 3: 
        if (d != d)
        {
          if (d.equals(d)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 2: 
        bool1 = bool2;
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      }
      bool1 = bool3;
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
    int i = Arrays.hashCode(new Object[] { a, b, c, d });
    return super.hashCode() * 31 + i;
  }
  
  public boolean isAccessError()
  {
    return a == Tag.ACCESS_ERROR;
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
  
  public boolean isStatusError()
  {
    return a == Tag.STATUS_ERROR;
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
    static
    {
      OTHER = new Tag("OTHER", 3);
      INVALID_FOLDER_NAME = new Tag("INVALID_FOLDER_NAME", 4);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<TeamFolderRenameError>
  {
    public static final a a = new a();
    
    a() {}
    
    public TeamFolderRenameError a(JsonParser paramJsonParser)
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
          localObject = TeamFolderRenameError.accessError(TeamFolderAccessError.a.a.a(paramJsonParser));
        }
        else if ("status_error".equals(localObject))
        {
          expectField("status_error", paramJsonParser);
          localObject = TeamFolderRenameError.statusError(TeamFolderInvalidStatusError.a.a.a(paramJsonParser));
        }
        else if ("team_shared_dropbox_error".equals(localObject))
        {
          expectField("team_shared_dropbox_error", paramJsonParser);
          localObject = TeamFolderRenameError.teamSharedDropboxError(TeamFolderTeamSharedDropboxError.a.a.a(paramJsonParser));
        }
        else if ("other".equals(localObject))
        {
          localObject = TeamFolderRenameError.OTHER;
        }
        else if ("invalid_folder_name".equals(localObject))
        {
          localObject = TeamFolderRenameError.INVALID_FOLDER_NAME;
        }
        else if ("folder_name_already_used".equals(localObject))
        {
          localObject = TeamFolderRenameError.FOLDER_NAME_ALREADY_USED;
        }
        else
        {
          if (!"folder_name_reserved".equals(localObject)) {
            break label202;
          }
          localObject = TeamFolderRenameError.FOLDER_NAME_RESERVED;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label202:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(TeamFolderRenameError paramTeamFolderRenameError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (TeamFolderRenameError.1.a[paramTeamFolderRenameError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramTeamFolderRenameError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 7: 
        paramJsonGenerator.writeString("folder_name_reserved");
        return;
      case 6: 
        paramJsonGenerator.writeString("folder_name_already_used");
        return;
      case 5: 
        paramJsonGenerator.writeString("invalid_folder_name");
        return;
      case 4: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("team_shared_dropbox_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("team_shared_dropbox_error");
        TeamFolderTeamSharedDropboxError.a.a.a(TeamFolderRenameError.c(paramTeamFolderRenameError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("status_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("status_error");
        TeamFolderInvalidStatusError.a.a.a(TeamFolderRenameError.b(paramTeamFolderRenameError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("access_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_error");
      TeamFolderAccessError.a.a.a(TeamFolderRenameError.a(paramTeamFolderRenameError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
