package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
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

public class MemberProfile
{
  protected final String accountId;
  protected final String email;
  protected final boolean emailVerified;
  protected final String externalId;
  protected final Boolean isDirectoryRestricted;
  protected final Date joinedOn;
  protected final TeamMembershipType membershipType;
  protected final Name name;
  protected final String persistentId;
  protected final TeamMemberStatus status;
  protected final String teamMemberId;
  
  public MemberProfile(String paramString1, String paramString2, boolean paramBoolean, TeamMemberStatus paramTeamMemberStatus, Name paramName, TeamMembershipType paramTeamMembershipType)
  {
    this(paramString1, paramString2, paramBoolean, paramTeamMemberStatus, paramName, paramTeamMembershipType, null, null, null, null, null);
  }
  
  public MemberProfile(String paramString1, String paramString2, boolean paramBoolean, TeamMemberStatus paramTeamMemberStatus, Name paramName, TeamMembershipType paramTeamMembershipType, String paramString3, String paramString4, Date paramDate, String paramString5, Boolean paramBoolean1)
  {
    if (paramString1 != null)
    {
      teamMemberId = paramString1;
      externalId = paramString3;
      if (paramString4 != null) {
        if (paramString4.length() >= 40)
        {
          if (paramString4.length() > 40) {
            throw new IllegalArgumentException("String 'accountId' is longer than 40");
          }
        }
        else {
          throw new IllegalArgumentException("String 'accountId' is shorter than 40");
        }
      }
      accountId = paramString4;
      if (paramString2 != null)
      {
        email = paramString2;
        emailVerified = paramBoolean;
        if (paramTeamMemberStatus != null)
        {
          status = paramTeamMemberStatus;
          if (paramName != null)
          {
            name = paramName;
            if (paramTeamMembershipType != null)
            {
              membershipType = paramTeamMembershipType;
              joinedOn = LangUtil.truncateMillis(paramDate);
              persistentId = paramString5;
              isDirectoryRestricted = paramBoolean1;
              return;
            }
            throw new IllegalArgumentException("Required value for 'membershipType' is null");
          }
          throw new IllegalArgumentException("Required value for 'name' is null");
        }
        throw new IllegalArgumentException("Required value for 'status' is null");
      }
      throw new IllegalArgumentException("Required value for 'email' is null");
    }
    throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
  }
  
  public static Builder newBuilder(String paramString1, String paramString2, boolean paramBoolean, TeamMemberStatus paramTeamMemberStatus, Name paramName, TeamMembershipType paramTeamMembershipType)
  {
    return new Builder(paramString1, paramString2, paramBoolean, paramTeamMemberStatus, paramName, paramTeamMembershipType);
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
      paramObject = (MemberProfile)paramObject;
      if (((teamMemberId == teamMemberId) || (teamMemberId.equals(teamMemberId))) && ((email == email) || (email.equals(email))) && (emailVerified == emailVerified) && ((status == status) || (status.equals(status))) && ((name == name) || (name.equals(name))) && ((membershipType == membershipType) || (membershipType.equals(membershipType))) && ((externalId == externalId) || ((externalId != null) && (externalId.equals(externalId)))) && ((accountId == accountId) || ((accountId != null) && (accountId.equals(accountId)))) && ((joinedOn == joinedOn) || ((joinedOn != null) && (joinedOn.equals(joinedOn)))) && ((persistentId == persistentId) || ((persistentId != null) && (persistentId.equals(persistentId)))))
      {
        if (isDirectoryRestricted == isDirectoryRestricted) {
          break label334;
        }
        if ((isDirectoryRestricted != null) && (isDirectoryRestricted.equals(isDirectoryRestricted))) {
          return true;
        }
      }
      bool = false;
      label334:
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
  
  public Boolean getIsDirectoryRestricted()
  {
    return isDirectoryRestricted;
  }
  
  public Date getJoinedOn()
  {
    return joinedOn;
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
    return Arrays.hashCode(new Object[] { teamMemberId, externalId, accountId, email, Boolean.valueOf(emailVerified), status, name, membershipType, joinedOn, persistentId, isDirectoryRestricted });
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
  {
    protected String accountId;
    protected final String email;
    protected final boolean emailVerified;
    protected String externalId;
    protected Boolean isDirectoryRestricted;
    protected Date joinedOn;
    protected final TeamMembershipType membershipType;
    protected final Name name;
    protected String persistentId;
    protected final TeamMemberStatus status;
    protected final String teamMemberId;
    
    protected Builder(String paramString1, String paramString2, boolean paramBoolean, TeamMemberStatus paramTeamMemberStatus, Name paramName, TeamMembershipType paramTeamMembershipType)
    {
      if (paramString1 != null)
      {
        teamMemberId = paramString1;
        if (paramString2 != null)
        {
          email = paramString2;
          emailVerified = paramBoolean;
          if (paramTeamMemberStatus != null)
          {
            status = paramTeamMemberStatus;
            if (paramName != null)
            {
              name = paramName;
              if (paramTeamMembershipType != null)
              {
                membershipType = paramTeamMembershipType;
                externalId = null;
                accountId = null;
                joinedOn = null;
                persistentId = null;
                isDirectoryRestricted = null;
                return;
              }
              throw new IllegalArgumentException("Required value for 'membershipType' is null");
            }
            throw new IllegalArgumentException("Required value for 'name' is null");
          }
          throw new IllegalArgumentException("Required value for 'status' is null");
        }
        throw new IllegalArgumentException("Required value for 'email' is null");
      }
      throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
    }
    
    public MemberProfile build()
    {
      return new MemberProfile(teamMemberId, email, emailVerified, status, name, membershipType, externalId, accountId, joinedOn, persistentId, isDirectoryRestricted);
    }
    
    public Builder withAccountId(String paramString)
    {
      if (paramString != null) {
        if (paramString.length() >= 40)
        {
          if (paramString.length() > 40) {
            throw new IllegalArgumentException("String 'accountId' is longer than 40");
          }
        }
        else {
          throw new IllegalArgumentException("String 'accountId' is shorter than 40");
        }
      }
      accountId = paramString;
      return this;
    }
    
    public Builder withExternalId(String paramString)
    {
      externalId = paramString;
      return this;
    }
    
    public Builder withIsDirectoryRestricted(Boolean paramBoolean)
    {
      isDirectoryRestricted = paramBoolean;
      return this;
    }
    
    public Builder withJoinedOn(Date paramDate)
    {
      joinedOn = LangUtil.truncateMillis(paramDate);
      return this;
    }
    
    public Builder withPersistentId(String paramString)
    {
      persistentId = paramString;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<MemberProfile>
  {
    public static final a a = new a();
    
    a() {}
    
    public MemberProfile a(JsonParser paramJsonParser, boolean paramBoolean)
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
          } else if ("external_id".equals(str2)) {
            localObject5 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("account_id".equals(str2)) {
            localObject6 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("joined_on".equals(str2)) {
            localObject7 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else if ("persistent_id".equals(str2)) {
            localObject8 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("is_directory_restricted".equals(str2)) {
            localObject9 = (Boolean)StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(paramJsonParser);
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
                    localObject1 = new MemberProfile(str1, (String)localObject1, localBoolean.booleanValue(), (TeamMemberStatus)localObject2, (Name)localObject3, (TeamMembershipType)localObject4, (String)localObject5, (String)localObject6, (Date)localObject7, (String)localObject8, (Boolean)localObject9);
                    if (!paramBoolean) {
                      expectEndObject(paramJsonParser);
                    }
                    return localObject1;
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
    
    public void a(MemberProfile paramMemberProfile, JsonGenerator paramJsonGenerator, boolean paramBoolean)
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
