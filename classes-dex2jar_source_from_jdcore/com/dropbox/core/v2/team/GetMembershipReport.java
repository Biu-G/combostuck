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
import java.util.Iterator;
import java.util.List;

public class GetMembershipReport
  extends BaseDfbReport
{
  protected final List<Long> licenses;
  protected final List<Long> membersJoined;
  protected final List<Long> pendingInvites;
  protected final List<Long> suspendedMembers;
  protected final List<Long> teamSize;
  
  public GetMembershipReport(String paramString, List<Long> paramList1, List<Long> paramList2, List<Long> paramList3, List<Long> paramList4, List<Long> paramList5)
  {
    super(paramString);
    if (paramList1 != null)
    {
      paramString = paramList1.iterator();
      while (paramString.hasNext()) {
        if ((Long)paramString.next() == null) {
          throw new IllegalArgumentException("An item in list 'teamSize' is null");
        }
      }
      teamSize = paramList1;
      if (paramList2 != null)
      {
        paramString = paramList2.iterator();
        while (paramString.hasNext()) {
          if ((Long)paramString.next() == null) {
            throw new IllegalArgumentException("An item in list 'pendingInvites' is null");
          }
        }
        pendingInvites = paramList2;
        if (paramList3 != null)
        {
          paramString = paramList3.iterator();
          while (paramString.hasNext()) {
            if ((Long)paramString.next() == null) {
              throw new IllegalArgumentException("An item in list 'membersJoined' is null");
            }
          }
          membersJoined = paramList3;
          if (paramList4 != null)
          {
            paramString = paramList4.iterator();
            while (paramString.hasNext()) {
              if ((Long)paramString.next() == null) {
                throw new IllegalArgumentException("An item in list 'suspendedMembers' is null");
              }
            }
            suspendedMembers = paramList4;
            if (paramList5 != null)
            {
              paramString = paramList5.iterator();
              while (paramString.hasNext()) {
                if ((Long)paramString.next() == null) {
                  throw new IllegalArgumentException("An item in list 'licenses' is null");
                }
              }
              licenses = paramList5;
              return;
            }
            throw new IllegalArgumentException("Required value for 'licenses' is null");
          }
          throw new IllegalArgumentException("Required value for 'suspendedMembers' is null");
        }
        throw new IllegalArgumentException("Required value for 'membersJoined' is null");
      }
      throw new IllegalArgumentException("Required value for 'pendingInvites' is null");
    }
    throw new IllegalArgumentException("Required value for 'teamSize' is null");
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
      paramObject = (GetMembershipReport)paramObject;
      if (((startDate == startDate) || (startDate.equals(startDate))) && ((teamSize == teamSize) || (teamSize.equals(teamSize))) && ((pendingInvites == pendingInvites) || (pendingInvites.equals(pendingInvites))) && ((membersJoined == membersJoined) || (membersJoined.equals(membersJoined))) && ((suspendedMembers == suspendedMembers) || (suspendedMembers.equals(suspendedMembers))))
      {
        if (licenses == licenses) {
          break label198;
        }
        if (licenses.equals(licenses)) {
          return true;
        }
      }
      bool = false;
      label198:
      return bool;
    }
    return false;
  }
  
  public List<Long> getLicenses()
  {
    return licenses;
  }
  
  public List<Long> getMembersJoined()
  {
    return membersJoined;
  }
  
  public List<Long> getPendingInvites()
  {
    return pendingInvites;
  }
  
  public String getStartDate()
  {
    return startDate;
  }
  
  public List<Long> getSuspendedMembers()
  {
    return suspendedMembers;
  }
  
  public List<Long> getTeamSize()
  {
    return teamSize;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { teamSize, pendingInvites, membersJoined, suspendedMembers, licenses });
    return super.hashCode() * 31 + i;
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
    extends StructSerializer<GetMembershipReport>
  {
    public static final a a = new a();
    
    a() {}
    
    public GetMembershipReport a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
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
        Object localObject5 = localObject4;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("start_date".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("team_size".equals(str2)) {
            localObject1 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("pending_invites".equals(str2)) {
            localObject2 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("members_joined".equals(str2)) {
            localObject3 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("suspended_members".equals(str2)) {
            localObject4 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("licenses".equals(str2)) {
            localObject5 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
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
              if (localObject3 != null)
              {
                if (localObject4 != null)
                {
                  if (localObject5 != null)
                  {
                    localObject1 = new GetMembershipReport(str1, (List)localObject1, (List)localObject2, (List)localObject3, (List)localObject4, (List)localObject5);
                    if (!paramBoolean) {
                      expectEndObject(paramJsonParser);
                    }
                    return localObject1;
                  }
                  throw new JsonParseException(paramJsonParser, "Required field \"licenses\" missing.");
                }
                throw new JsonParseException(paramJsonParser, "Required field \"suspended_members\" missing.");
              }
              throw new JsonParseException(paramJsonParser, "Required field \"members_joined\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"pending_invites\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"team_size\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"start_date\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(GetMembershipReport paramGetMembershipReport, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("start_date");
      StoneSerializers.string().serialize(startDate, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("team_size");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(teamSize, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("pending_invites");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(pendingInvites, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("members_joined");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(membersJoined, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("suspended_members");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(suspendedMembers, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("licenses");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(licenses, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
