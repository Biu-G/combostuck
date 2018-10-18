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

public final class MemberAddResult
{
  private Tag a;
  private TeamMemberInfo b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private String k;
  private String l;
  
  private MemberAddResult() {}
  
  private MemberAddResult a(Tag paramTag, TeamMemberInfo paramTeamMemberInfo)
  {
    MemberAddResult localMemberAddResult = new MemberAddResult();
    a = paramTag;
    b = paramTeamMemberInfo;
    return localMemberAddResult;
  }
  
  private MemberAddResult a(Tag paramTag, String paramString)
  {
    MemberAddResult localMemberAddResult = new MemberAddResult();
    a = paramTag;
    c = paramString;
    return localMemberAddResult;
  }
  
  private MemberAddResult b(Tag paramTag, String paramString)
  {
    MemberAddResult localMemberAddResult = new MemberAddResult();
    a = paramTag;
    d = paramString;
    return localMemberAddResult;
  }
  
  private MemberAddResult c(Tag paramTag, String paramString)
  {
    MemberAddResult localMemberAddResult = new MemberAddResult();
    a = paramTag;
    e = paramString;
    return localMemberAddResult;
  }
  
  private MemberAddResult d(Tag paramTag, String paramString)
  {
    MemberAddResult localMemberAddResult = new MemberAddResult();
    a = paramTag;
    f = paramString;
    return localMemberAddResult;
  }
  
  public static MemberAddResult duplicateExternalMemberId(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() <= 255)
      {
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString)) {
          return new MemberAddResult().g(Tag.DUPLICATE_EXTERNAL_MEMBER_ID, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is longer than 255");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static MemberAddResult duplicateMemberPersistentId(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() <= 255)
      {
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString)) {
          return new MemberAddResult().h(Tag.DUPLICATE_MEMBER_PERSISTENT_ID, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is longer than 255");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  private MemberAddResult e(Tag paramTag, String paramString)
  {
    MemberAddResult localMemberAddResult = new MemberAddResult();
    a = paramTag;
    g = paramString;
    return localMemberAddResult;
  }
  
  private MemberAddResult f(Tag paramTag, String paramString)
  {
    MemberAddResult localMemberAddResult = new MemberAddResult();
    a = paramTag;
    h = paramString;
    return localMemberAddResult;
  }
  
  public static MemberAddResult freeTeamMemberLimitReached(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() <= 255)
      {
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString)) {
          return new MemberAddResult().b(Tag.FREE_TEAM_MEMBER_LIMIT_REACHED, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is longer than 255");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  private MemberAddResult g(Tag paramTag, String paramString)
  {
    MemberAddResult localMemberAddResult = new MemberAddResult();
    a = paramTag;
    i = paramString;
    return localMemberAddResult;
  }
  
  private MemberAddResult h(Tag paramTag, String paramString)
  {
    MemberAddResult localMemberAddResult = new MemberAddResult();
    a = paramTag;
    j = paramString;
    return localMemberAddResult;
  }
  
  private MemberAddResult i(Tag paramTag, String paramString)
  {
    MemberAddResult localMemberAddResult = new MemberAddResult();
    a = paramTag;
    k = paramString;
    return localMemberAddResult;
  }
  
  private MemberAddResult j(Tag paramTag, String paramString)
  {
    MemberAddResult localMemberAddResult = new MemberAddResult();
    a = paramTag;
    l = paramString;
    return localMemberAddResult;
  }
  
  public static MemberAddResult persistentIdDisabled(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() <= 255)
      {
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString)) {
          return new MemberAddResult().i(Tag.PERSISTENT_ID_DISABLED, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is longer than 255");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static MemberAddResult success(TeamMemberInfo paramTeamMemberInfo)
  {
    if (paramTeamMemberInfo != null) {
      return new MemberAddResult().a(Tag.SUCCESS, paramTeamMemberInfo);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static MemberAddResult teamLicenseLimit(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() <= 255)
      {
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString)) {
          return new MemberAddResult().a(Tag.TEAM_LICENSE_LIMIT, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is longer than 255");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static MemberAddResult userAlreadyOnTeam(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() <= 255)
      {
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString)) {
          return new MemberAddResult().c(Tag.USER_ALREADY_ON_TEAM, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is longer than 255");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static MemberAddResult userAlreadyPaired(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() <= 255)
      {
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString)) {
          return new MemberAddResult().e(Tag.USER_ALREADY_PAIRED, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is longer than 255");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static MemberAddResult userCreationFailed(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() <= 255)
      {
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString)) {
          return new MemberAddResult().j(Tag.USER_CREATION_FAILED, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is longer than 255");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static MemberAddResult userMigrationFailed(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() <= 255)
      {
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString)) {
          return new MemberAddResult().f(Tag.USER_MIGRATION_FAILED, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is longer than 255");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static MemberAddResult userOnAnotherTeam(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() <= 255)
      {
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString)) {
          return new MemberAddResult().d(Tag.USER_ON_ANOTHER_TEAM, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is longer than 255");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool4 = true;
    boolean bool5 = true;
    boolean bool6 = true;
    boolean bool7 = true;
    boolean bool8 = true;
    boolean bool9 = true;
    boolean bool10 = true;
    boolean bool11 = true;
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof MemberAddResult))
    {
      paramObject = (MemberAddResult)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 11: 
        if (l != l)
        {
          if (l.equals(l)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 10: 
        bool1 = bool2;
        if (k != k)
        {
          if (k.equals(k)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 9: 
        bool1 = bool3;
        if (j != j)
        {
          if (j.equals(j)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 8: 
        bool1 = bool4;
        if (i != i)
        {
          if (i.equals(i)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 7: 
        bool1 = bool5;
        if (h != h)
        {
          if (h.equals(h)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 6: 
        bool1 = bool6;
        if (g != g)
        {
          if (g.equals(g)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 5: 
        bool1 = bool7;
        if (f != f)
        {
          if (f.equals(f)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 4: 
        bool1 = bool8;
        if (e != e)
        {
          if (e.equals(e)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 3: 
        bool1 = bool9;
        if (d != d)
        {
          if (d.equals(d)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 2: 
        bool1 = bool10;
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      }
      bool1 = bool11;
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
  
  public String getDuplicateExternalMemberIdValue()
  {
    if (a == Tag.DUPLICATE_EXTERNAL_MEMBER_ID) {
      return i;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.DUPLICATE_EXTERNAL_MEMBER_ID, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getDuplicateMemberPersistentIdValue()
  {
    if (a == Tag.DUPLICATE_MEMBER_PERSISTENT_ID) {
      return j;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.DUPLICATE_MEMBER_PERSISTENT_ID, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getFreeTeamMemberLimitReachedValue()
  {
    if (a == Tag.FREE_TEAM_MEMBER_LIMIT_REACHED) {
      return d;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.FREE_TEAM_MEMBER_LIMIT_REACHED, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getPersistentIdDisabledValue()
  {
    if (a == Tag.PERSISTENT_ID_DISABLED) {
      return k;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.PERSISTENT_ID_DISABLED, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public TeamMemberInfo getSuccessValue()
  {
    if (a == Tag.SUCCESS) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.SUCCESS, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getTeamLicenseLimitValue()
  {
    if (a == Tag.TEAM_LICENSE_LIMIT) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.TEAM_LICENSE_LIMIT, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getUserAlreadyOnTeamValue()
  {
    if (a == Tag.USER_ALREADY_ON_TEAM) {
      return e;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.USER_ALREADY_ON_TEAM, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getUserAlreadyPairedValue()
  {
    if (a == Tag.USER_ALREADY_PAIRED) {
      return g;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.USER_ALREADY_PAIRED, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getUserCreationFailedValue()
  {
    if (a == Tag.USER_CREATION_FAILED) {
      return l;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.USER_CREATION_FAILED, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getUserMigrationFailedValue()
  {
    if (a == Tag.USER_MIGRATION_FAILED) {
      return h;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.USER_MIGRATION_FAILED, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getUserOnAnotherTeamValue()
  {
    if (a == Tag.USER_ON_ANOTHER_TEAM) {
      return f;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.USER_ON_ANOTHER_TEAM, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c, d, e, f, g, h, i, j, k, l });
  }
  
  public boolean isDuplicateExternalMemberId()
  {
    return a == Tag.DUPLICATE_EXTERNAL_MEMBER_ID;
  }
  
  public boolean isDuplicateMemberPersistentId()
  {
    return a == Tag.DUPLICATE_MEMBER_PERSISTENT_ID;
  }
  
  public boolean isFreeTeamMemberLimitReached()
  {
    return a == Tag.FREE_TEAM_MEMBER_LIMIT_REACHED;
  }
  
  public boolean isPersistentIdDisabled()
  {
    return a == Tag.PERSISTENT_ID_DISABLED;
  }
  
  public boolean isSuccess()
  {
    return a == Tag.SUCCESS;
  }
  
  public boolean isTeamLicenseLimit()
  {
    return a == Tag.TEAM_LICENSE_LIMIT;
  }
  
  public boolean isUserAlreadyOnTeam()
  {
    return a == Tag.USER_ALREADY_ON_TEAM;
  }
  
  public boolean isUserAlreadyPaired()
  {
    return a == Tag.USER_ALREADY_PAIRED;
  }
  
  public boolean isUserCreationFailed()
  {
    return a == Tag.USER_CREATION_FAILED;
  }
  
  public boolean isUserMigrationFailed()
  {
    return a == Tag.USER_MIGRATION_FAILED;
  }
  
  public boolean isUserOnAnotherTeam()
  {
    return a == Tag.USER_ON_ANOTHER_TEAM;
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
      FREE_TEAM_MEMBER_LIMIT_REACHED = new Tag("FREE_TEAM_MEMBER_LIMIT_REACHED", 2);
      USER_ALREADY_ON_TEAM = new Tag("USER_ALREADY_ON_TEAM", 3);
      USER_ON_ANOTHER_TEAM = new Tag("USER_ON_ANOTHER_TEAM", 4);
      USER_ALREADY_PAIRED = new Tag("USER_ALREADY_PAIRED", 5);
      USER_MIGRATION_FAILED = new Tag("USER_MIGRATION_FAILED", 6);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<MemberAddResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public MemberAddResult a(JsonParser paramJsonParser)
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
        if ("success".equals(localObject))
        {
          localObject = MemberAddResult.success(TeamMemberInfo.a.a.a(paramJsonParser, true));
        }
        else if ("team_license_limit".equals(localObject))
        {
          expectField("team_license_limit", paramJsonParser);
          localObject = MemberAddResult.teamLicenseLimit((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("free_team_member_limit_reached".equals(localObject))
        {
          expectField("free_team_member_limit_reached", paramJsonParser);
          localObject = MemberAddResult.freeTeamMemberLimitReached((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("user_already_on_team".equals(localObject))
        {
          expectField("user_already_on_team", paramJsonParser);
          localObject = MemberAddResult.userAlreadyOnTeam((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("user_on_another_team".equals(localObject))
        {
          expectField("user_on_another_team", paramJsonParser);
          localObject = MemberAddResult.userOnAnotherTeam((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("user_already_paired".equals(localObject))
        {
          expectField("user_already_paired", paramJsonParser);
          localObject = MemberAddResult.userAlreadyPaired((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("user_migration_failed".equals(localObject))
        {
          expectField("user_migration_failed", paramJsonParser);
          localObject = MemberAddResult.userMigrationFailed((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("duplicate_external_member_id".equals(localObject))
        {
          expectField("duplicate_external_member_id", paramJsonParser);
          localObject = MemberAddResult.duplicateExternalMemberId((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("duplicate_member_persistent_id".equals(localObject))
        {
          expectField("duplicate_member_persistent_id", paramJsonParser);
          localObject = MemberAddResult.duplicateMemberPersistentId((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("persistent_id_disabled".equals(localObject))
        {
          expectField("persistent_id_disabled", paramJsonParser);
          localObject = MemberAddResult.persistentIdDisabled((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else
        {
          if (!"user_creation_failed".equals(localObject)) {
            break label395;
          }
          expectField("user_creation_failed", paramJsonParser);
          localObject = MemberAddResult.userCreationFailed((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label395:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(MemberAddResult paramMemberAddResult, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (MemberAddResult.1.a[paramMemberAddResult.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramMemberAddResult.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 11: 
        paramJsonGenerator.writeStartObject();
        writeTag("user_creation_failed", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("user_creation_failed");
        StoneSerializers.string().serialize(MemberAddResult.k(paramMemberAddResult), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 10: 
        paramJsonGenerator.writeStartObject();
        writeTag("persistent_id_disabled", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("persistent_id_disabled");
        StoneSerializers.string().serialize(MemberAddResult.j(paramMemberAddResult), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 9: 
        paramJsonGenerator.writeStartObject();
        writeTag("duplicate_member_persistent_id", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("duplicate_member_persistent_id");
        StoneSerializers.string().serialize(MemberAddResult.i(paramMemberAddResult), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 8: 
        paramJsonGenerator.writeStartObject();
        writeTag("duplicate_external_member_id", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("duplicate_external_member_id");
        StoneSerializers.string().serialize(MemberAddResult.h(paramMemberAddResult), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 7: 
        paramJsonGenerator.writeStartObject();
        writeTag("user_migration_failed", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("user_migration_failed");
        StoneSerializers.string().serialize(MemberAddResult.g(paramMemberAddResult), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 6: 
        paramJsonGenerator.writeStartObject();
        writeTag("user_already_paired", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("user_already_paired");
        StoneSerializers.string().serialize(MemberAddResult.f(paramMemberAddResult), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 5: 
        paramJsonGenerator.writeStartObject();
        writeTag("user_on_another_team", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("user_on_another_team");
        StoneSerializers.string().serialize(MemberAddResult.e(paramMemberAddResult), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 4: 
        paramJsonGenerator.writeStartObject();
        writeTag("user_already_on_team", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("user_already_on_team");
        StoneSerializers.string().serialize(MemberAddResult.d(paramMemberAddResult), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("free_team_member_limit_reached", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("free_team_member_limit_reached");
        StoneSerializers.string().serialize(MemberAddResult.c(paramMemberAddResult), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("team_license_limit", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("team_license_limit");
        StoneSerializers.string().serialize(MemberAddResult.b(paramMemberAddResult), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("success", paramJsonGenerator);
      TeamMemberInfo.a.a.a(MemberAddResult.a(paramMemberAddResult), paramJsonGenerator, true);
      paramJsonGenerator.writeEndObject();
    }
  }
}
