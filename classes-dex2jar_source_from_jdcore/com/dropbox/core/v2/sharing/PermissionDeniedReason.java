package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class PermissionDeniedReason
{
  public static final PermissionDeniedReason FOLDER_IS_INSIDE_SHARED_FOLDER;
  public static final PermissionDeniedReason FOLDER_IS_LIMITED_TEAM_FOLDER;
  public static final PermissionDeniedReason OTHER = new PermissionDeniedReason().a(Tag.OTHER);
  public static final PermissionDeniedReason OWNER_NOT_ON_TEAM;
  public static final PermissionDeniedReason PERMISSION_DENIED;
  public static final PermissionDeniedReason RESTRICTED_BY_PARENT_FOLDER;
  public static final PermissionDeniedReason RESTRICTED_BY_TEAM;
  public static final PermissionDeniedReason TARGET_IS_INDIRECT_MEMBER;
  public static final PermissionDeniedReason TARGET_IS_OWNER;
  public static final PermissionDeniedReason TARGET_IS_SELF;
  public static final PermissionDeniedReason TARGET_NOT_ACTIVE;
  public static final PermissionDeniedReason USER_ACCOUNT_TYPE;
  public static final PermissionDeniedReason USER_NOT_ALLOWED_BY_OWNER;
  public static final PermissionDeniedReason USER_NOT_ON_TEAM;
  public static final PermissionDeniedReason USER_NOT_SAME_TEAM_AS_OWNER = new PermissionDeniedReason().a(Tag.USER_NOT_SAME_TEAM_AS_OWNER);
  private Tag a;
  private InsufficientPlan b;
  
  static
  {
    USER_NOT_ALLOWED_BY_OWNER = new PermissionDeniedReason().a(Tag.USER_NOT_ALLOWED_BY_OWNER);
    TARGET_IS_INDIRECT_MEMBER = new PermissionDeniedReason().a(Tag.TARGET_IS_INDIRECT_MEMBER);
    TARGET_IS_OWNER = new PermissionDeniedReason().a(Tag.TARGET_IS_OWNER);
    TARGET_IS_SELF = new PermissionDeniedReason().a(Tag.TARGET_IS_SELF);
    TARGET_NOT_ACTIVE = new PermissionDeniedReason().a(Tag.TARGET_NOT_ACTIVE);
    FOLDER_IS_LIMITED_TEAM_FOLDER = new PermissionDeniedReason().a(Tag.FOLDER_IS_LIMITED_TEAM_FOLDER);
    OWNER_NOT_ON_TEAM = new PermissionDeniedReason().a(Tag.OWNER_NOT_ON_TEAM);
    PERMISSION_DENIED = new PermissionDeniedReason().a(Tag.PERMISSION_DENIED);
    RESTRICTED_BY_TEAM = new PermissionDeniedReason().a(Tag.RESTRICTED_BY_TEAM);
    USER_ACCOUNT_TYPE = new PermissionDeniedReason().a(Tag.USER_ACCOUNT_TYPE);
    USER_NOT_ON_TEAM = new PermissionDeniedReason().a(Tag.USER_NOT_ON_TEAM);
    FOLDER_IS_INSIDE_SHARED_FOLDER = new PermissionDeniedReason().a(Tag.FOLDER_IS_INSIDE_SHARED_FOLDER);
    RESTRICTED_BY_PARENT_FOLDER = new PermissionDeniedReason().a(Tag.RESTRICTED_BY_PARENT_FOLDER);
  }
  
  private PermissionDeniedReason() {}
  
  private PermissionDeniedReason a(Tag paramTag)
  {
    PermissionDeniedReason localPermissionDeniedReason = new PermissionDeniedReason();
    a = paramTag;
    return localPermissionDeniedReason;
  }
  
  private PermissionDeniedReason a(Tag paramTag, InsufficientPlan paramInsufficientPlan)
  {
    PermissionDeniedReason localPermissionDeniedReason = new PermissionDeniedReason();
    a = paramTag;
    b = paramInsufficientPlan;
    return localPermissionDeniedReason;
  }
  
  public static PermissionDeniedReason insufficientPlan(InsufficientPlan paramInsufficientPlan)
  {
    if (paramInsufficientPlan != null) {
      return new PermissionDeniedReason().a(Tag.INSUFFICIENT_PLAN, paramInsufficientPlan);
    }
    throw new IllegalArgumentException("Value is null");
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
    if ((paramObject instanceof PermissionDeniedReason))
    {
      paramObject = (PermissionDeniedReason)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 16: 
        return true;
      case 15: 
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool = false;
        }
        return bool;
      case 14: 
        return true;
      case 13: 
        return true;
      case 12: 
        return true;
      case 11: 
        return true;
      case 10: 
        return true;
      case 9: 
        return true;
      case 8: 
        return true;
      case 7: 
        return true;
      case 6: 
        return true;
      case 5: 
        return true;
      case 4: 
        return true;
      case 3: 
        return true;
      case 2: 
        return true;
      }
      return true;
    }
    return false;
  }
  
  public InsufficientPlan getInsufficientPlanValue()
  {
    if (a == Tag.INSUFFICIENT_PLAN) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.INSUFFICIENT_PLAN, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isFolderIsInsideSharedFolder()
  {
    return a == Tag.FOLDER_IS_INSIDE_SHARED_FOLDER;
  }
  
  public boolean isFolderIsLimitedTeamFolder()
  {
    return a == Tag.FOLDER_IS_LIMITED_TEAM_FOLDER;
  }
  
  public boolean isInsufficientPlan()
  {
    return a == Tag.INSUFFICIENT_PLAN;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isOwnerNotOnTeam()
  {
    return a == Tag.OWNER_NOT_ON_TEAM;
  }
  
  public boolean isPermissionDenied()
  {
    return a == Tag.PERMISSION_DENIED;
  }
  
  public boolean isRestrictedByParentFolder()
  {
    return a == Tag.RESTRICTED_BY_PARENT_FOLDER;
  }
  
  public boolean isRestrictedByTeam()
  {
    return a == Tag.RESTRICTED_BY_TEAM;
  }
  
  public boolean isTargetIsIndirectMember()
  {
    return a == Tag.TARGET_IS_INDIRECT_MEMBER;
  }
  
  public boolean isTargetIsOwner()
  {
    return a == Tag.TARGET_IS_OWNER;
  }
  
  public boolean isTargetIsSelf()
  {
    return a == Tag.TARGET_IS_SELF;
  }
  
  public boolean isTargetNotActive()
  {
    return a == Tag.TARGET_NOT_ACTIVE;
  }
  
  public boolean isUserAccountType()
  {
    return a == Tag.USER_ACCOUNT_TYPE;
  }
  
  public boolean isUserNotAllowedByOwner()
  {
    return a == Tag.USER_NOT_ALLOWED_BY_OWNER;
  }
  
  public boolean isUserNotOnTeam()
  {
    return a == Tag.USER_NOT_ON_TEAM;
  }
  
  public boolean isUserNotSameTeamAsOwner()
  {
    return a == Tag.USER_NOT_SAME_TEAM_AS_OWNER;
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
      USER_NOT_ALLOWED_BY_OWNER = new Tag("USER_NOT_ALLOWED_BY_OWNER", 1);
      TARGET_IS_INDIRECT_MEMBER = new Tag("TARGET_IS_INDIRECT_MEMBER", 2);
      TARGET_IS_OWNER = new Tag("TARGET_IS_OWNER", 3);
      TARGET_IS_SELF = new Tag("TARGET_IS_SELF", 4);
      TARGET_NOT_ACTIVE = new Tag("TARGET_NOT_ACTIVE", 5);
      FOLDER_IS_LIMITED_TEAM_FOLDER = new Tag("FOLDER_IS_LIMITED_TEAM_FOLDER", 6);
      OWNER_NOT_ON_TEAM = new Tag("OWNER_NOT_ON_TEAM", 7);
      PERMISSION_DENIED = new Tag("PERMISSION_DENIED", 8);
      RESTRICTED_BY_TEAM = new Tag("RESTRICTED_BY_TEAM", 9);
      USER_ACCOUNT_TYPE = new Tag("USER_ACCOUNT_TYPE", 10);
      USER_NOT_ON_TEAM = new Tag("USER_NOT_ON_TEAM", 11);
      FOLDER_IS_INSIDE_SHARED_FOLDER = new Tag("FOLDER_IS_INSIDE_SHARED_FOLDER", 12);
      RESTRICTED_BY_PARENT_FOLDER = new Tag("RESTRICTED_BY_PARENT_FOLDER", 13);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<PermissionDeniedReason>
  {
    public static final a a = new a();
    
    a() {}
    
    public PermissionDeniedReason a(JsonParser paramJsonParser)
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
        if ("user_not_same_team_as_owner".equals(localObject)) {
          localObject = PermissionDeniedReason.USER_NOT_SAME_TEAM_AS_OWNER;
        } else if ("user_not_allowed_by_owner".equals(localObject)) {
          localObject = PermissionDeniedReason.USER_NOT_ALLOWED_BY_OWNER;
        } else if ("target_is_indirect_member".equals(localObject)) {
          localObject = PermissionDeniedReason.TARGET_IS_INDIRECT_MEMBER;
        } else if ("target_is_owner".equals(localObject)) {
          localObject = PermissionDeniedReason.TARGET_IS_OWNER;
        } else if ("target_is_self".equals(localObject)) {
          localObject = PermissionDeniedReason.TARGET_IS_SELF;
        } else if ("target_not_active".equals(localObject)) {
          localObject = PermissionDeniedReason.TARGET_NOT_ACTIVE;
        } else if ("folder_is_limited_team_folder".equals(localObject)) {
          localObject = PermissionDeniedReason.FOLDER_IS_LIMITED_TEAM_FOLDER;
        } else if ("owner_not_on_team".equals(localObject)) {
          localObject = PermissionDeniedReason.OWNER_NOT_ON_TEAM;
        } else if ("permission_denied".equals(localObject)) {
          localObject = PermissionDeniedReason.PERMISSION_DENIED;
        } else if ("restricted_by_team".equals(localObject)) {
          localObject = PermissionDeniedReason.RESTRICTED_BY_TEAM;
        } else if ("user_account_type".equals(localObject)) {
          localObject = PermissionDeniedReason.USER_ACCOUNT_TYPE;
        } else if ("user_not_on_team".equals(localObject)) {
          localObject = PermissionDeniedReason.USER_NOT_ON_TEAM;
        } else if ("folder_is_inside_shared_folder".equals(localObject)) {
          localObject = PermissionDeniedReason.FOLDER_IS_INSIDE_SHARED_FOLDER;
        } else if ("restricted_by_parent_folder".equals(localObject)) {
          localObject = PermissionDeniedReason.RESTRICTED_BY_PARENT_FOLDER;
        } else if ("insufficient_plan".equals(localObject)) {
          localObject = PermissionDeniedReason.insufficientPlan(InsufficientPlan.a.a.a(paramJsonParser, true));
        } else {
          localObject = PermissionDeniedReason.OTHER;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(PermissionDeniedReason paramPermissionDeniedReason, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (PermissionDeniedReason.1.a[paramPermissionDeniedReason.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 15: 
        paramJsonGenerator.writeStartObject();
        writeTag("insufficient_plan", paramJsonGenerator);
        InsufficientPlan.a.a.a(PermissionDeniedReason.a(paramPermissionDeniedReason), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      case 14: 
        paramJsonGenerator.writeString("restricted_by_parent_folder");
        return;
      case 13: 
        paramJsonGenerator.writeString("folder_is_inside_shared_folder");
        return;
      case 12: 
        paramJsonGenerator.writeString("user_not_on_team");
        return;
      case 11: 
        paramJsonGenerator.writeString("user_account_type");
        return;
      case 10: 
        paramJsonGenerator.writeString("restricted_by_team");
        return;
      case 9: 
        paramJsonGenerator.writeString("permission_denied");
        return;
      case 8: 
        paramJsonGenerator.writeString("owner_not_on_team");
        return;
      case 7: 
        paramJsonGenerator.writeString("folder_is_limited_team_folder");
        return;
      case 6: 
        paramJsonGenerator.writeString("target_not_active");
        return;
      case 5: 
        paramJsonGenerator.writeString("target_is_self");
        return;
      case 4: 
        paramJsonGenerator.writeString("target_is_owner");
        return;
      case 3: 
        paramJsonGenerator.writeString("target_is_indirect_member");
        return;
      case 2: 
        paramJsonGenerator.writeString("user_not_allowed_by_owner");
        return;
      }
      paramJsonGenerator.writeString("user_not_same_team_as_owner");
    }
  }
}
