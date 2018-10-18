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
import java.util.regex.Pattern;

public final class UserSelectorArg
{
  private Tag a;
  private String b;
  private String c;
  private String d;
  
  private UserSelectorArg() {}
  
  private UserSelectorArg a(Tag paramTag, String paramString)
  {
    UserSelectorArg localUserSelectorArg = new UserSelectorArg();
    a = paramTag;
    b = paramString;
    return localUserSelectorArg;
  }
  
  private UserSelectorArg b(Tag paramTag, String paramString)
  {
    UserSelectorArg localUserSelectorArg = new UserSelectorArg();
    a = paramTag;
    c = paramString;
    return localUserSelectorArg;
  }
  
  private UserSelectorArg c(Tag paramTag, String paramString)
  {
    UserSelectorArg localUserSelectorArg = new UserSelectorArg();
    a = paramTag;
    d = paramString;
    return localUserSelectorArg;
  }
  
  public static UserSelectorArg email(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() <= 255)
      {
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString)) {
          return new UserSelectorArg().c(Tag.EMAIL, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is longer than 255");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static UserSelectorArg externalId(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() <= 64) {
        return new UserSelectorArg().b(Tag.EXTERNAL_ID, paramString);
      }
      throw new IllegalArgumentException("String is longer than 64");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static UserSelectorArg teamMemberId(String paramString)
  {
    if (paramString != null) {
      return new UserSelectorArg().a(Tag.TEAM_MEMBER_ID, paramString);
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
    if ((paramObject instanceof UserSelectorArg))
    {
      paramObject = (UserSelectorArg)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
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
  
  public String getEmailValue()
  {
    if (a == Tag.EMAIL) {
      return d;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.EMAIL, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getExternalIdValue()
  {
    if (a == Tag.EXTERNAL_ID) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.EXTERNAL_ID, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getTeamMemberIdValue()
  {
    if (a == Tag.TEAM_MEMBER_ID) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.TEAM_MEMBER_ID, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c, d });
  }
  
  public boolean isEmail()
  {
    return a == Tag.EMAIL;
  }
  
  public boolean isExternalId()
  {
    return a == Tag.EXTERNAL_ID;
  }
  
  public boolean isTeamMemberId()
  {
    return a == Tag.TEAM_MEMBER_ID;
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
    static
    {
      EXTERNAL_ID = new Tag("EXTERNAL_ID", 1);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<UserSelectorArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public UserSelectorArg a(JsonParser paramJsonParser)
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
        if ("team_member_id".equals(localObject))
        {
          expectField("team_member_id", paramJsonParser);
          localObject = UserSelectorArg.teamMemberId((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("external_id".equals(localObject))
        {
          expectField("external_id", paramJsonParser);
          localObject = UserSelectorArg.externalId((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else
        {
          if (!"email".equals(localObject)) {
            break label147;
          }
          expectField("email", paramJsonParser);
          localObject = UserSelectorArg.email((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label147:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(UserSelectorArg paramUserSelectorArg, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (UserSelectorArg.1.a[paramUserSelectorArg.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramUserSelectorArg.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("email", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("email");
        StoneSerializers.string().serialize(UserSelectorArg.c(paramUserSelectorArg), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("external_id", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("external_id");
        StoneSerializers.string().serialize(UserSelectorArg.b(paramUserSelectorArg), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("team_member_id", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("team_member_id");
      StoneSerializers.string().serialize(UserSelectorArg.a(paramUserSelectorArg), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
