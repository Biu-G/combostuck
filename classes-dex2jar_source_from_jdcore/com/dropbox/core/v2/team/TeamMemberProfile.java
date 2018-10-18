package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.users.Name;
import com.dropbox.core.v2.users.Name.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public class TeamMemberProfile
  extends MemberProfile
{
  protected final List<String> groups;
  protected final String memberFolderId;
  
  public TeamMemberProfile(String paramString1, String paramString2, boolean paramBoolean, TeamMemberStatus paramTeamMemberStatus, Name paramName, TeamMembershipType paramTeamMembershipType, List<String> paramList, String paramString3)
  {
    this(paramString1, paramString2, paramBoolean, paramTeamMemberStatus, paramName, paramTeamMembershipType, paramList, paramString3, null, null, null, null, null);
  }
  
  public TeamMemberProfile(String paramString1, String paramString2, boolean paramBoolean, TeamMemberStatus paramTeamMemberStatus, Name paramName, TeamMembershipType paramTeamMembershipType, List<String> paramList, String paramString3, String paramString4, String paramString5, Date paramDate, String paramString6, Boolean paramBoolean1)
  {
    super(paramString1, paramString2, paramBoolean, paramTeamMemberStatus, paramName, paramTeamMembershipType, paramString4, paramString5, paramDate, paramString6, paramBoolean1);
    if (paramList != null)
    {
      paramString1 = paramList.iterator();
      while (paramString1.hasNext()) {
        if ((String)paramString1.next() == null) {
          throw new IllegalArgumentException("An item in list 'groups' is null");
        }
      }
      groups = paramList;
      if (paramString3 != null)
      {
        if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString3))
        {
          memberFolderId = paramString3;
          return;
        }
        throw new IllegalArgumentException("String 'memberFolderId' does not match pattern");
      }
      throw new IllegalArgumentException("Required value for 'memberFolderId' is null");
    }
    throw new IllegalArgumentException("Required value for 'groups' is null");
  }
  
  public static Builder newBuilder(String paramString1, String paramString2, boolean paramBoolean, TeamMemberStatus paramTeamMemberStatus, Name paramName, TeamMembershipType paramTeamMembershipType, List<String> paramList, String paramString3)
  {
    return new Builder(paramString1, paramString2, paramBoolean, paramTeamMemberStatus, paramName, paramTeamMembershipType, paramList, paramString3);
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
      paramObject = (TeamMemberProfile)paramObject;
      if (((teamMemberId == teamMemberId) || (teamMemberId.equals(teamMemberId))) && ((email == email) || (email.equals(email))) && (emailVerified == emailVerified) && ((status == status) || (status.equals(status))) && ((name == name) || (name.equals(name))) && ((membershipType == membershipType) || (membershipType.equals(membershipType))) && ((groups == groups) || (groups.equals(groups))) && ((memberFolderId == memberFolderId) || (memberFolderId.equals(memberFolderId))) && ((externalId == externalId) || ((externalId != null) && (externalId.equals(externalId)))) && ((accountId == accountId) || ((accountId != null) && (accountId.equals(accountId)))) && ((joinedOn == joinedOn) || ((joinedOn != null) && (joinedOn.equals(joinedOn)))) && ((persistentId == persistentId) || ((persistentId != null) && (persistentId.equals(persistentId)))))
      {
        if (isDirectoryRestricted == isDirectoryRestricted) {
          break label386;
        }
        if ((isDirectoryRestricted != null) && (isDirectoryRestricted.equals(isDirectoryRestricted))) {
          return true;
        }
      }
      bool = false;
      label386:
      return bool;
    }
    return false;
  }
  
  public String getAccountId()
  {
    return accountId;
  }
  
  public String getEmail()
  {
    return email;
  }
  
  public boolean getEmailVerified()
  {
    return emailVerified;
  }
  
  public String getExternalId()
  {
    return externalId;
  }
  
  public List<String> getGroups()
  {
    return groups;
  }
  
  public Boolean getIsDirectoryRestricted()
  {
    return isDirectoryRestricted;
  }
  
  public Date getJoinedOn()
  {
    return joinedOn;
  }
  
  public String getMemberFolderId()
  {
    return memberFolderId;
  }
  
  public TeamMembershipType getMembershipType()
  {
    return membershipType;
  }
  
  public Name getName()
  {
    return name;
  }
  
  public String getPersistentId()
  {
    return persistentId;
  }
  
  public TeamMemberStatus getStatus()
  {
    return status;
  }
  
  public String getTeamMemberId()
  {
    return teamMemberId;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { groups, memberFolderId });
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
  
  public static class Builder
    extends MemberProfile.Builder
  {
    protected final List<String> groups;
    protected final String memberFolderId;
    
    protected Builder(String paramString1, String paramString2, boolean paramBoolean, TeamMemberStatus paramTeamMemberStatus, Name paramName, TeamMembershipType paramTeamMembershipType, List<String> paramList, String paramString3)
    {
      super(paramString2, paramBoolean, paramTeamMemberStatus, paramName, paramTeamMembershipType);
      if (paramList != null)
      {
        paramString1 = paramList.iterator();
        while (paramString1.hasNext()) {
          if ((String)paramString1.next() == null) {
            throw new IllegalArgumentException("An item in list 'groups' is null");
          }
        }
        groups = paramList;
        if (paramString3 != null)
        {
          if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString3))
          {
            memberFolderId = paramString3;
            return;
          }
          throw new IllegalArgumentException("String 'memberFolderId' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'memberFolderId' is null");
      }
      throw new IllegalArgumentException("Required value for 'groups' is null");
    }
    
    public TeamMemberProfile build()
    {
      return new TeamMemberProfile(teamMemberId, email, emailVerified, status, name, membershipType, groups, memberFolderId, externalId, accountId, joinedOn, persistentId, isDirectoryRestricted);
    }
    
    public Builder withAccountId(String paramString)
    {
      super.withAccountId(paramString);
      return this;
    }
    
    public Builder withExternalId(String paramString)
    {
      super.withExternalId(paramString);
      return this;
    }
    
    public Builder withIsDirectoryRestricted(Boolean paramBoolean)
    {
      super.withIsDirectoryRestricted(paramBoolean);
      return this;
    }
    
    public Builder withJoinedOn(Date paramDate)
    {
      super.withJoinedOn(paramDate);
      return this;
    }
    
    public Builder withPersistentId(String paramString)
    {
      super.withPersistentId(paramString);
      return this;
    }
  }
  
  static class a
    extends StructSerializer<TeamMemberProfile>
  {
    public static final a a = new a();
    
    a() {}
    
    public TeamMemberProfile a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Boolean localBoolean = null;
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
        Object localObject6 = localObject5;
        Object localObject7 = localObject6;
        Object localObject8 = localObject7;
        Object localObject9 = localObject8;
        Object localObject10 = localObject9;
        Object localObject11 = localObject10;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("team_member_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("email".equals(str2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("email_verified".equals(str2)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("status".equals(str2)) {
            localObject2 = TeamMemberStatus.a.a.a(paramJsonParser);
          } else if ("name".equals(str2)) {
            localObject3 = (Name)Name.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("membership_type".equals(str2)) {
            localObject4 = TeamMembershipType.a.a.a(paramJsonParser);
          } else if ("groups".equals(str2)) {
            localObject5 = (List)StoneSerializers.list(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("member_folder_id".equals(str2)) {
            localObject6 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("external_id".equals(str2)) {
            localObject7 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("account_id".equals(str2)) {
            localObject8 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("joined_on".equals(str2)) {
            localObject9 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else if ("persistent_id".equals(str2)) {
            localObject10 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("is_directory_restricted".equals(str2)) {
            localObject11 = (Boolean)StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject1 != null)
          {
            if (localBoolean != null)
            {
              if (localObject2 != null)
              {
                if (localObject3 != null)
                {
                  if (localObject4 != null)
                  {
                    if (localObject5 != null)
                    {
                      if (localObject6 != null)
                      {
                        localObject1 = new TeamMemberProfile(str1, (String)localObject1, localBoolean.booleanValue(), (TeamMemberStatus)localObject2, (Name)localObject3, (TeamMembershipType)localObject4, (List)localObject5, (String)localObject6, (String)localObject7, (String)localObject8, (Date)localObject9, (String)localObject10, (Boolean)localObject11);
                        if (!paramBoolean) {
                          expectEndObject(paramJsonParser);
                        }
                        return localObject1;
                      }
                      throw new JsonParseException(paramJsonParser, "Required field \"member_folder_id\" missing.");
                    }
                    throw new JsonParseException(paramJsonParser, "Required field \"groups\" missing.");
                  }
                  throw new JsonParseException(paramJsonParser, "Required field \"membership_type\" missing.");
                }
                throw new JsonParseException(paramJsonParser, "Required field \"name\" missing.");
              }
              throw new JsonParseException(paramJsonParser, "Required field \"status\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"email_verified\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"email\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"team_member_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(TeamMemberProfile paramTeamMemberProfile, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("team_member_id");
      StoneSerializers.string().serialize(teamMemberId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("email");
      StoneSerializers.string().serialize(email, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("email_verified");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(emailVerified), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("status");
      TeamMemberStatus.a.a.a(status, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("name");
      Name.Serializer.INSTANCE.serialize(name, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("membership_type");
      TeamMembershipType.a.a.a(membershipType, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("groups");
      StoneSerializers.list(StoneSerializers.string()).serialize(groups, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("member_folder_id");
      StoneSerializers.string().serialize(memberFolderId, paramJsonGenerator);
      if (externalId != null)
      {
        paramJsonGenerator.writeFieldName("external_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(externalId, paramJsonGenerator);
      }
      if (accountId != null)
      {
        paramJsonGenerator.writeFieldName("account_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(accountId, paramJsonGenerator);
      }
      if (joinedOn != null)
      {
        paramJsonGenerator.writeFieldName("joined_on");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(joinedOn, paramJsonGenerator);
      }
      if (persistentId != null)
      {
        paramJsonGenerator.writeFieldName("persistent_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(persistentId, paramJsonGenerator);
      }
      if (isDirectoryRestricted != null)
      {
        paramJsonGenerator.writeFieldName("is_directory_restricted");
        StoneSerializers.nullable(StoneSerializers.boolean_()).serialize(isDirectoryRestricted, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
