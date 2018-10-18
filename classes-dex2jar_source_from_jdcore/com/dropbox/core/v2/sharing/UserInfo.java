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

public class UserInfo
{
  protected final String accountId;
  protected final String displayName;
  protected final String email;
  protected final boolean sameTeam;
  protected final String teamMemberId;
  
  public UserInfo(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    this(paramString1, paramString2, paramString3, paramBoolean, null);
  }
  
  public UserInfo(String paramString1, String paramString2, String paramString3, boolean paramBoolean, String paramString4)
  {
    if (paramString1 != null)
    {
      if (paramString1.length() >= 40)
      {
        if (paramString1.length() <= 40)
        {
          accountId = paramString1;
          if (paramString2 != null)
          {
            email = paramString2;
            if (paramString3 != null)
            {
              displayName = paramString3;
              sameTeam = paramBoolean;
              teamMemberId = paramString4;
              return;
            }
            throw new IllegalArgumentException("Required value for 'displayName' is null");
          }
          throw new IllegalArgumentException("Required value for 'email' is null");
        }
        throw new IllegalArgumentException("String 'accountId' is longer than 40");
      }
      throw new IllegalArgumentException("String 'accountId' is shorter than 40");
    }
    throw new IllegalArgumentException("Required value for 'accountId' is null");
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
      paramObject = (UserInfo)paramObject;
      if (((accountId == accountId) || (accountId.equals(accountId))) && ((email == email) || (email.equals(email))) && ((displayName == displayName) || (displayName.equals(displayName))) && (sameTeam == sameTeam))
      {
        if (teamMemberId == teamMemberId) {
          break label156;
        }
        if ((teamMemberId != null) && (teamMemberId.equals(teamMemberId))) {
          return true;
        }
      }
      bool = false;
      label156:
      return bool;
    }
    return false;
  }
  
  public String getAccountId()
  {
    return accountId;
  }
  
  public String getDisplayName()
  {
    return displayName;
  }
  
  public String getEmail()
  {
    return email;
  }
  
  public boolean getSameTeam()
  {
    return sameTeam;
  }
  
  public String getTeamMemberId()
  {
    return teamMemberId;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { accountId, email, displayName, Boolean.valueOf(sameTeam), teamMemberId });
  }
  
  public String toString()
  {
    return Serializer.INSTANCE.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return Serializer.INSTANCE.serialize(this, true);
  }
  
  public static class Serializer
    extends StructSerializer<UserInfo>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public UserInfo deserialize(JsonParser paramJsonParser, boolean paramBoolean)
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
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("account_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("email".equals(str2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("display_name".equals(str2)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("same_team".equals(str2)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("team_member_id".equals(str2)) {
            localObject3 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
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
              if (localBoolean != null)
              {
                localObject1 = new UserInfo(str1, (String)localObject1, (String)localObject2, localBoolean.booleanValue(), (String)localObject3);
                if (!paramBoolean) {
                  expectEndObject(paramJsonParser);
                }
                return localObject1;
              }
              throw new JsonParseException(paramJsonParser, "Required field \"same_team\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"display_name\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"email\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"account_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void serialize(UserInfo paramUserInfo, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("account_id");
      StoneSerializers.string().serialize(accountId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("email");
      StoneSerializers.string().serialize(email, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("display_name");
      StoneSerializers.string().serialize(displayName, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("same_team");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(sameTeam), paramJsonGenerator);
      if (teamMemberId != null)
      {
        paramJsonGenerator.writeFieldName("team_member_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(teamMemberId, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
