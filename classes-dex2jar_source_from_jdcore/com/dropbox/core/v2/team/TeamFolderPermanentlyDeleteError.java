package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class TeamFolderPermanentlyDeleteError
{
  public static final TeamFolderPermanentlyDeleteError OTHER = new TeamFolderPermanentlyDeleteError().a(Tag.OTHER);
  private Tag a;
  private TeamFolderAccessError b;
  private TeamFolderInvalidStatusError c;
  private TeamFolderTeamSharedDropboxError d;
  
  private TeamFolderPermanentlyDeleteError() {}
  
  private TeamFolderPermanentlyDeleteError a(Tag paramTag)
  {
    TeamFolderPermanentlyDeleteError localTeamFolderPermanentlyDeleteError = new TeamFolderPermanentlyDeleteError();
    a = paramTag;
    return localTeamFolderPermanentlyDeleteError;
  }
  
  private TeamFolderPermanentlyDeleteError a(Tag paramTag, TeamFolderAccessError paramTeamFolderAccessError)
  {
    TeamFolderPermanentlyDeleteError localTeamFolderPermanentlyDeleteError = new TeamFolderPermanentlyDeleteError();
    a = paramTag;
    b = paramTeamFolderAccessError;
    return localTeamFolderPermanentlyDeleteError;
  }
  
  private TeamFolderPermanentlyDeleteError a(Tag paramTag, TeamFolderInvalidStatusError paramTeamFolderInvalidStatusError)
  {
    TeamFolderPermanentlyDeleteError localTeamFolderPermanentlyDeleteError = new TeamFolderPermanentlyDeleteError();
    a = paramTag;
    c = paramTeamFolderInvalidStatusError;
    return localTeamFolderPermanentlyDeleteError;
  }
  
  private TeamFolderPermanentlyDeleteError a(Tag paramTag, TeamFolderTeamSharedDropboxError paramTeamFolderTeamSharedDropboxError)
  {
    TeamFolderPermanentlyDeleteError localTeamFolderPermanentlyDeleteError = new TeamFolderPermanentlyDeleteError();
    a = paramTag;
    d = paramTeamFolderTeamSharedDropboxError;
    return localTeamFolderPermanentlyDeleteError;
  }
  
  public static TeamFolderPermanentlyDeleteError accessError(TeamFolderAccessError paramTeamFolderAccessError)
  {
    if (paramTeamFolderAccessError != null) {
      return new TeamFolderPermanentlyDeleteError().a(Tag.ACCESS_ERROR, paramTeamFolderAccessError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static TeamFolderPermanentlyDeleteError statusError(TeamFolderInvalidStatusError paramTeamFolderInvalidStatusError)
  {
    if (paramTeamFolderInvalidStatusError != null) {
      return new TeamFolderPermanentlyDeleteError().a(Tag.STATUS_ERROR, paramTeamFolderInvalidStatusError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static TeamFolderPermanentlyDeleteError teamSharedDropboxError(TeamFolderTeamSharedDropboxError paramTeamFolderTeamSharedDropboxError)
  {
    if (paramTeamFolderTeamSharedDropboxError != null) {
      return new TeamFolderPermanentlyDeleteError().a(Tag.TEAM_SHARED_DROPBOX_ERROR, paramTeamFolderTeamSharedDropboxError);
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
    if ((paramObject instanceof TeamFolderPermanentlyDeleteError))
    {
      paramObject = (TeamFolderPermanentlyDeleteError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
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
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<TeamFolderPermanentlyDeleteError>
  {
    public static final a a = new a();
    
    a() {}
    
    public TeamFolderPermanentlyDeleteError a(JsonParser paramJsonParser)
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
          localObject = TeamFolderPermanentlyDeleteError.accessError(TeamFolderAccessError.a.a.a(paramJsonParser));
        }
        else if ("status_error".equals(localObject))
        {
          expectField("status_error", paramJsonParser);
          localObject = TeamFolderPermanentlyDeleteError.statusError(TeamFolderInvalidStatusError.a.a.a(paramJsonParser));
        }
        else if ("team_shared_dropbox_error".equals(localObject))
        {
          expectField("team_shared_dropbox_error", paramJsonParser);
          localObject = TeamFolderPermanentlyDeleteError.teamSharedDropboxError(TeamFolderTeamSharedDropboxError.a.a.a(paramJsonParser));
        }
        else
        {
          if (!"other".equals(localObject)) {
            break label154;
          }
          localObject = TeamFolderPermanentlyDeleteError.OTHER;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label154:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(TeamFolderPermanentlyDeleteError paramTeamFolderPermanentlyDeleteError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (TeamFolderPermanentlyDeleteError.1.a[paramTeamFolderPermanentlyDeleteError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramTeamFolderPermanentlyDeleteError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 4: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("team_shared_dropbox_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("team_shared_dropbox_error");
        TeamFolderTeamSharedDropboxError.a.a.a(TeamFolderPermanentlyDeleteError.c(paramTeamFolderPermanentlyDeleteError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("status_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("status_error");
        TeamFolderInvalidStatusError.a.a.a(TeamFolderPermanentlyDeleteError.b(paramTeamFolderPermanentlyDeleteError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("access_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_error");
      TeamFolderAccessError.a.a.a(TeamFolderPermanentlyDeleteError.a(paramTeamFolderPermanentlyDeleteError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
