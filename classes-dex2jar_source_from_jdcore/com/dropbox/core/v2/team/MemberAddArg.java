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
import java.util.regex.Pattern;

public class MemberAddArg
{
  protected final Boolean isDirectoryRestricted;
  protected final String memberEmail;
  protected final String memberExternalId;
  protected final String memberGivenName;
  protected final String memberPersistentId;
  protected final String memberSurname;
  protected final AdminTier role;
  protected final boolean sendWelcomeEmail;
  
  public MemberAddArg(String paramString)
  {
    this(paramString, null, null, null, null, true, AdminTier.MEMBER_ONLY, null);
  }
  
  public MemberAddArg(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean, AdminTier paramAdminTier, Boolean paramBoolean1)
  {
    if (paramString1 != null)
    {
      if (paramString1.length() <= 255)
      {
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString1))
        {
          memberEmail = paramString1;
          if (paramString2 != null) {
            if (paramString2.length() <= 100)
            {
              if (!Pattern.matches("[^/:?*<>\"|]*", paramString2)) {
                throw new IllegalArgumentException("String 'memberGivenName' does not match pattern");
              }
            }
            else {
              throw new IllegalArgumentException("String 'memberGivenName' is longer than 100");
            }
          }
          memberGivenName = paramString2;
          if (paramString3 != null) {
            if (paramString3.length() <= 100)
            {
              if (!Pattern.matches("[^/:?*<>\"|]*", paramString3)) {
                throw new IllegalArgumentException("String 'memberSurname' does not match pattern");
              }
            }
            else {
              throw new IllegalArgumentException("String 'memberSurname' is longer than 100");
            }
          }
          memberSurname = paramString3;
          if ((paramString4 != null) && (paramString4.length() > 64)) {
            throw new IllegalArgumentException("String 'memberExternalId' is longer than 64");
          }
          memberExternalId = paramString4;
          memberPersistentId = paramString5;
          sendWelcomeEmail = paramBoolean;
          if (paramAdminTier != null)
          {
            role = paramAdminTier;
            isDirectoryRestricted = paramBoolean1;
            return;
          }
          throw new IllegalArgumentException("Required value for 'role' is null");
        }
        throw new IllegalArgumentException("String 'memberEmail' does not match pattern");
      }
      throw new IllegalArgumentException("String 'memberEmail' is longer than 255");
    }
    throw new IllegalArgumentException("Required value for 'memberEmail' is null");
  }
  
  public static Builder newBuilder(String paramString)
  {
    return new Builder(paramString);
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
      paramObject = (MemberAddArg)paramObject;
      if (((memberEmail == memberEmail) || (memberEmail.equals(memberEmail))) && ((memberGivenName == memberGivenName) || ((memberGivenName != null) && (memberGivenName.equals(memberGivenName)))) && ((memberSurname == memberSurname) || ((memberSurname != null) && (memberSurname.equals(memberSurname)))) && ((memberExternalId == memberExternalId) || ((memberExternalId != null) && (memberExternalId.equals(memberExternalId)))) && ((memberPersistentId == memberPersistentId) || ((memberPersistentId != null) && (memberPersistentId.equals(memberPersistentId)))) && (sendWelcomeEmail == sendWelcomeEmail) && ((role == role) || (role.equals(role))))
      {
        if (isDirectoryRestricted == isDirectoryRestricted) {
          break label259;
        }
        if ((isDirectoryRestricted != null) && (isDirectoryRestricted.equals(isDirectoryRestricted))) {
          return true;
        }
      }
      bool = false;
      label259:
      return bool;
    }
    return false;
  }
  
  public Boolean getIsDirectoryRestricted()
  {
    return isDirectoryRestricted;
  }
  
  public String getMemberEmail()
  {
    return memberEmail;
  }
  
  public String getMemberExternalId()
  {
    return memberExternalId;
  }
  
  public String getMemberGivenName()
  {
    return memberGivenName;
  }
  
  public String getMemberPersistentId()
  {
    return memberPersistentId;
  }
  
  public String getMemberSurname()
  {
    return memberSurname;
  }
  
  public AdminTier getRole()
  {
    return role;
  }
  
  public boolean getSendWelcomeEmail()
  {
    return sendWelcomeEmail;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { memberEmail, memberGivenName, memberSurname, memberExternalId, memberPersistentId, Boolean.valueOf(sendWelcomeEmail), role, isDirectoryRestricted });
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
    protected Boolean isDirectoryRestricted;
    protected final String memberEmail;
    protected String memberExternalId;
    protected String memberGivenName;
    protected String memberPersistentId;
    protected String memberSurname;
    protected AdminTier role;
    protected boolean sendWelcomeEmail;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        if (paramString.length() <= 255)
        {
          if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString))
          {
            memberEmail = paramString;
            memberGivenName = null;
            memberSurname = null;
            memberExternalId = null;
            memberPersistentId = null;
            sendWelcomeEmail = true;
            role = AdminTier.MEMBER_ONLY;
            isDirectoryRestricted = null;
            return;
          }
          throw new IllegalArgumentException("String 'memberEmail' does not match pattern");
        }
        throw new IllegalArgumentException("String 'memberEmail' is longer than 255");
      }
      throw new IllegalArgumentException("Required value for 'memberEmail' is null");
    }
    
    public MemberAddArg build()
    {
      return new MemberAddArg(memberEmail, memberGivenName, memberSurname, memberExternalId, memberPersistentId, sendWelcomeEmail, role, isDirectoryRestricted);
    }
    
    public Builder withIsDirectoryRestricted(Boolean paramBoolean)
    {
      isDirectoryRestricted = paramBoolean;
      return this;
    }
    
    public Builder withMemberExternalId(String paramString)
    {
      if ((paramString != null) && (paramString.length() > 64)) {
        throw new IllegalArgumentException("String 'memberExternalId' is longer than 64");
      }
      memberExternalId = paramString;
      return this;
    }
    
    public Builder withMemberGivenName(String paramString)
    {
      if (paramString != null) {
        if (paramString.length() <= 100)
        {
          if (!Pattern.matches("[^/:?*<>\"|]*", paramString)) {
            throw new IllegalArgumentException("String 'memberGivenName' does not match pattern");
          }
        }
        else {
          throw new IllegalArgumentException("String 'memberGivenName' is longer than 100");
        }
      }
      memberGivenName = paramString;
      return this;
    }
    
    public Builder withMemberPersistentId(String paramString)
    {
      memberPersistentId = paramString;
      return this;
    }
    
    public Builder withMemberSurname(String paramString)
    {
      if (paramString != null) {
        if (paramString.length() <= 100)
        {
          if (!Pattern.matches("[^/:?*<>\"|]*", paramString)) {
            throw new IllegalArgumentException("String 'memberSurname' does not match pattern");
          }
        }
        else {
          throw new IllegalArgumentException("String 'memberSurname' is longer than 100");
        }
      }
      memberSurname = paramString;
      return this;
    }
    
    public Builder withRole(AdminTier paramAdminTier)
    {
      if (paramAdminTier != null)
      {
        role = paramAdminTier;
        return this;
      }
      role = AdminTier.MEMBER_ONLY;
      return this;
    }
    
    public Builder withSendWelcomeEmail(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        sendWelcomeEmail = paramBoolean.booleanValue();
        return this;
      }
      sendWelcomeEmail = true;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<MemberAddArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public MemberAddArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
        Boolean localBoolean = Boolean.valueOf(true);
        AdminTier localAdminTier = AdminTier.MEMBER_ONLY;
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
          if ("member_email".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("member_given_name".equals(str2)) {
            localObject1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("member_surname".equals(str2)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("member_external_id".equals(str2)) {
            localObject3 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("member_persistent_id".equals(str2)) {
            localObject4 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("send_welcome_email".equals(str2)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("role".equals(str2)) {
            localAdminTier = AdminTier.a.a.a(paramJsonParser);
          } else if ("is_directory_restricted".equals(str2)) {
            localObject5 = (Boolean)StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new MemberAddArg(str1, (String)localObject1, (String)localObject2, (String)localObject3, (String)localObject4, localBoolean.booleanValue(), localAdminTier, (Boolean)localObject5);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"member_email\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(MemberAddArg paramMemberAddArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("member_email");
      StoneSerializers.string().serialize(memberEmail, paramJsonGenerator);
      if (memberGivenName != null)
      {
        paramJsonGenerator.writeFieldName("member_given_name");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(memberGivenName, paramJsonGenerator);
      }
      if (memberSurname != null)
      {
        paramJsonGenerator.writeFieldName("member_surname");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(memberSurname, paramJsonGenerator);
      }
      if (memberExternalId != null)
      {
        paramJsonGenerator.writeFieldName("member_external_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(memberExternalId, paramJsonGenerator);
      }
      if (memberPersistentId != null)
      {
        paramJsonGenerator.writeFieldName("member_persistent_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(memberPersistentId, paramJsonGenerator);
      }
      paramJsonGenerator.writeFieldName("send_welcome_email");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(sendWelcomeEmail), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("role");
      AdminTier.a.a.a(role, paramJsonGenerator);
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
