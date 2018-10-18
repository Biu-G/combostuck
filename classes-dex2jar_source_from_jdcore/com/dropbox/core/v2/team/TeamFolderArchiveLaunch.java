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

public final class TeamFolderArchiveLaunch
{
  private Tag a;
  private String b;
  private TeamFolderMetadata c;
  
  private TeamFolderArchiveLaunch() {}
  
  private TeamFolderArchiveLaunch a(Tag paramTag, TeamFolderMetadata paramTeamFolderMetadata)
  {
    TeamFolderArchiveLaunch localTeamFolderArchiveLaunch = new TeamFolderArchiveLaunch();
    a = paramTag;
    c = paramTeamFolderMetadata;
    return localTeamFolderArchiveLaunch;
  }
  
  private TeamFolderArchiveLaunch a(Tag paramTag, String paramString)
  {
    TeamFolderArchiveLaunch localTeamFolderArchiveLaunch = new TeamFolderArchiveLaunch();
    a = paramTag;
    b = paramString;
    return localTeamFolderArchiveLaunch;
  }
  
  public static TeamFolderArchiveLaunch asyncJobId(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1) {
        return new TeamFolderArchiveLaunch().a(Tag.ASYNC_JOB_ID, paramString);
      }
      throw new IllegalArgumentException("String is shorter than 1");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static TeamFolderArchiveLaunch complete(TeamFolderMetadata paramTeamFolderMetadata)
  {
    if (paramTeamFolderMetadata != null) {
      return new TeamFolderArchiveLaunch().a(Tag.COMPLETE, paramTeamFolderMetadata);
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
    if ((paramObject instanceof TeamFolderArchiveLaunch))
    {
      paramObject = (TeamFolderArchiveLaunch)paramObject;
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
  
  public String getAsyncJobIdValue()
  {
    if (a == Tag.ASYNC_JOB_ID) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public TeamFolderMetadata getCompleteValue()
  {
    if (a == Tag.COMPLETE) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.COMPLETE, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, b, c });
    return super.hashCode() * 31 + i;
  }
  
  public boolean isAsyncJobId()
  {
    return a == Tag.ASYNC_JOB_ID;
  }
  
  public boolean isComplete()
  {
    return a == Tag.COMPLETE;
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
    extends UnionSerializer<TeamFolderArchiveLaunch>
  {
    public static final a a = new a();
    
    a() {}
    
    public TeamFolderArchiveLaunch a(JsonParser paramJsonParser)
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
        if ("async_job_id".equals(localObject))
        {
          expectField("async_job_id", paramJsonParser);
          localObject = TeamFolderArchiveLaunch.asyncJobId((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else
        {
          if (!"complete".equals(localObject)) {
            break label107;
          }
          localObject = TeamFolderArchiveLaunch.complete(TeamFolderMetadata.a.a.a(paramJsonParser, true));
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
    
    public void a(TeamFolderArchiveLaunch paramTeamFolderArchiveLaunch, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (TeamFolderArchiveLaunch.1.a[paramTeamFolderArchiveLaunch.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramTeamFolderArchiveLaunch.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("complete", paramJsonGenerator);
        TeamFolderMetadata.a.a.a(TeamFolderArchiveLaunch.b(paramTeamFolderArchiveLaunch), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("async_job_id", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("async_job_id");
      StoneSerializers.string().serialize(TeamFolderArchiveLaunch.a(paramTeamFolderArchiveLaunch), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
