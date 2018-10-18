package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class TeamMemberStatus
{
  public static final TeamMemberStatus ACTIVE = new TeamMemberStatus().a(Tag.ACTIVE);
  public static final TeamMemberStatus INVITED = new TeamMemberStatus().a(Tag.INVITED);
  public static final TeamMemberStatus SUSPENDED = new TeamMemberStatus().a(Tag.SUSPENDED);
  private Tag a;
  private RemovedStatus b;
  
  private TeamMemberStatus() {}
  
  private TeamMemberStatus a(Tag paramTag)
  {
    TeamMemberStatus localTeamMemberStatus = new TeamMemberStatus();
    a = paramTag;
    return localTeamMemberStatus;
  }
  
  private TeamMemberStatus a(Tag paramTag, RemovedStatus paramRemovedStatus)
  {
    TeamMemberStatus localTeamMemberStatus = new TeamMemberStatus();
    a = paramTag;
    b = paramRemovedStatus;
    return localTeamMemberStatus;
  }
  
  public static TeamMemberStatus removed(RemovedStatus paramRemovedStatus)
  {
    if (paramRemovedStatus != null) {
      return new TeamMemberStatus().a(Tag.REMOVED, paramRemovedStatus);
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
    if ((paramObject instanceof TeamMemberStatus))
    {
      paramObject = (TeamMemberStatus)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
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
  
  public RemovedStatus getRemovedValue()
  {
    if (a == Tag.REMOVED) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.REMOVED, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isActive()
  {
    return a == Tag.ACTIVE;
  }
  
  public boolean isInvited()
  {
    return a == Tag.INVITED;
  }
  
  public boolean isRemoved()
  {
    return a == Tag.REMOVED;
  }
  
  public boolean isSuspended()
  {
    return a == Tag.SUSPENDED;
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
    extends UnionSerializer<TeamMemberStatus>
  {
    public static final a a = new a();
    
    a() {}
    
    public TeamMemberStatus a(JsonParser paramJsonParser)
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
        if ("active".equals(localObject))
        {
          localObject = TeamMemberStatus.ACTIVE;
        }
        else if ("invited".equals(localObject))
        {
          localObject = TeamMemberStatus.INVITED;
        }
        else if ("suspended".equals(localObject))
        {
          localObject = TeamMemberStatus.SUSPENDED;
        }
        else
        {
          if (!"removed".equals(localObject)) {
            break label123;
          }
          localObject = TeamMemberStatus.removed(RemovedStatus.a.a.a(paramJsonParser, true));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label123:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(TeamMemberStatus paramTeamMemberStatus, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (TeamMemberStatus.1.a[paramTeamMemberStatus.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramTeamMemberStatus.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 4: 
        paramJsonGenerator.writeStartObject();
        writeTag("removed", paramJsonGenerator);
        RemovedStatus.a.a.a(TeamMemberStatus.a(paramTeamMemberStatus), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      case 3: 
        paramJsonGenerator.writeString("suspended");
        return;
      case 2: 
        paramJsonGenerator.writeString("invited");
        return;
      }
      paramJsonGenerator.writeString("active");
    }
  }
}
