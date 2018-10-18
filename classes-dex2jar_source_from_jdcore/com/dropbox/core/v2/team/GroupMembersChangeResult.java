package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class GroupMembersChangeResult
{
  protected final String asyncJobId;
  protected final GroupFullInfo groupInfo;
  
  public GroupMembersChangeResult(GroupFullInfo paramGroupFullInfo, String paramString)
  {
    if (paramGroupFullInfo != null)
    {
      groupInfo = paramGroupFullInfo;
      if (paramString != null)
      {
        if (paramString.length() >= 1)
        {
          asyncJobId = paramString;
          return;
        }
        throw new IllegalArgumentException("String 'asyncJobId' is shorter than 1");
      }
      throw new IllegalArgumentException("Required value for 'asyncJobId' is null");
    }
    throw new IllegalArgumentException("Required value for 'groupInfo' is null");
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
      paramObject = (GroupMembersChangeResult)paramObject;
      if ((groupInfo == groupInfo) || (groupInfo.equals(groupInfo)))
      {
        if (asyncJobId == asyncJobId) {
          break label88;
        }
        if (asyncJobId.equals(asyncJobId)) {
          return true;
        }
      }
      bool = false;
      label88:
      return bool;
    }
    return false;
  }
  
  public String getAsyncJobId()
  {
    return asyncJobId;
  }
  
  public GroupFullInfo getGroupInfo()
  {
    return groupInfo;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { groupInfo, asyncJobId });
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
    extends StructSerializer<GroupMembersChangeResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupMembersChangeResult a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Object localObject2 = null;
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
        localObject1 = null;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("group_info".equals(str)) {
            localObject2 = (GroupFullInfo)GroupFullInfo.a.a.deserialize(paramJsonParser);
          } else if ("async_job_id".equals(str)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new GroupMembersChangeResult((GroupFullInfo)localObject2, (String)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"async_job_id\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"group_info\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(GroupMembersChangeResult paramGroupMembersChangeResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("group_info");
      GroupFullInfo.a.a.serialize(groupInfo, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("async_job_id");
      StoneSerializers.string().serialize(asyncJobId, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
