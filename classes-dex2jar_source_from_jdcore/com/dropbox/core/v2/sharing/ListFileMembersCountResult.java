package com.dropbox.core.v2.sharing;

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

public class ListFileMembersCountResult
{
  protected final long memberCount;
  protected final SharedFileMembers members;
  
  public ListFileMembersCountResult(SharedFileMembers paramSharedFileMembers, long paramLong)
  {
    if (paramSharedFileMembers != null)
    {
      members = paramSharedFileMembers;
      memberCount = paramLong;
      return;
    }
    throw new IllegalArgumentException("Required value for 'members' is null");
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (paramObject.getClass().equals(getClass()))
    {
      paramObject = (ListFileMembersCountResult)paramObject;
      return ((members == members) || (members.equals(members))) && (memberCount == memberCount);
    }
    return false;
  }
  
  public long getMemberCount()
  {
    return memberCount;
  }
  
  public SharedFileMembers getMembers()
  {
    return members;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { members, Long.valueOf(memberCount) });
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
    extends StructSerializer<ListFileMembersCountResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListFileMembersCountResult a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("members".equals(str)) {
            localObject2 = (SharedFileMembers)SharedFileMembers.a.a.deserialize(paramJsonParser);
          } else if ("member_count".equals(str)) {
            localObject1 = (Long)StoneSerializers.uInt32().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new ListFileMembersCountResult((SharedFileMembers)localObject2, ((Long)localObject1).longValue());
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"member_count\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"members\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ListFileMembersCountResult paramListFileMembersCountResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("members");
      SharedFileMembers.a.a.serialize(members, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("member_count");
      StoneSerializers.uInt32().serialize(Long.valueOf(memberCount), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
