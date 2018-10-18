package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class UpdateFolderPolicyError
{
  public static final UpdateFolderPolicyError DISALLOWED_SHARED_LINK_POLICY;
  public static final UpdateFolderPolicyError NOT_ON_TEAM = new UpdateFolderPolicyError().a(Tag.NOT_ON_TEAM);
  public static final UpdateFolderPolicyError NO_PERMISSION;
  public static final UpdateFolderPolicyError OTHER = new UpdateFolderPolicyError().a(Tag.OTHER);
  public static final UpdateFolderPolicyError TEAM_FOLDER;
  public static final UpdateFolderPolicyError TEAM_POLICY_DISALLOWS_MEMBER_POLICY = new UpdateFolderPolicyError().a(Tag.TEAM_POLICY_DISALLOWS_MEMBER_POLICY);
  private Tag a;
  private SharedFolderAccessError b;
  
  static
  {
    DISALLOWED_SHARED_LINK_POLICY = new UpdateFolderPolicyError().a(Tag.DISALLOWED_SHARED_LINK_POLICY);
    NO_PERMISSION = new UpdateFolderPolicyError().a(Tag.NO_PERMISSION);
    TEAM_FOLDER = new UpdateFolderPolicyError().a(Tag.TEAM_FOLDER);
  }
  
  private UpdateFolderPolicyError() {}
  
  private UpdateFolderPolicyError a(Tag paramTag)
  {
    UpdateFolderPolicyError localUpdateFolderPolicyError = new UpdateFolderPolicyError();
    a = paramTag;
    return localUpdateFolderPolicyError;
  }
  
  private UpdateFolderPolicyError a(Tag paramTag, SharedFolderAccessError paramSharedFolderAccessError)
  {
    UpdateFolderPolicyError localUpdateFolderPolicyError = new UpdateFolderPolicyError();
    a = paramTag;
    b = paramSharedFolderAccessError;
    return localUpdateFolderPolicyError;
  }
  
  public static UpdateFolderPolicyError accessError(SharedFolderAccessError paramSharedFolderAccessError)
  {
    if (paramSharedFolderAccessError != null) {
      return new UpdateFolderPolicyError().a(Tag.ACCESS_ERROR, paramSharedFolderAccessError);
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
    if ((paramObject instanceof UpdateFolderPolicyError))
    {
      paramObject = (UpdateFolderPolicyError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
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
      if (b != b)
      {
        if (b.equals(b)) {
          return true;
        }
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  public SharedFolderAccessError getAccessErrorValue()
  {
    if (a == Tag.ACCESS_ERROR) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ACCESS_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isAccessError()
  {
    return a == Tag.ACCESS_ERROR;
  }
  
  public boolean isDisallowedSharedLinkPolicy()
  {
    return a == Tag.DISALLOWED_SHARED_LINK_POLICY;
  }
  
  public boolean isNoPermission()
  {
    return a == Tag.NO_PERMISSION;
  }
  
  public boolean isNotOnTeam()
  {
    return a == Tag.NOT_ON_TEAM;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isTeamFolder()
  {
    return a == Tag.TEAM_FOLDER;
  }
  
  public boolean isTeamPolicyDisallowsMemberPolicy()
  {
    return a == Tag.TEAM_POLICY_DISALLOWS_MEMBER_POLICY;
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
      DISALLOWED_SHARED_LINK_POLICY = new Tag("DISALLOWED_SHARED_LINK_POLICY", 3);
      NO_PERMISSION = new Tag("NO_PERMISSION", 4);
      TEAM_FOLDER = new Tag("TEAM_FOLDER", 5);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<UpdateFolderPolicyError>
  {
    public static final a a = new a();
    
    a() {}
    
    public UpdateFolderPolicyError a(JsonParser paramJsonParser)
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
        if ("access_error".equals(localObject))
        {
          expectField("access_error", paramJsonParser);
          localObject = UpdateFolderPolicyError.accessError(SharedFolderAccessError.a.a.a(paramJsonParser));
        }
        else if ("not_on_team".equals(localObject))
        {
          localObject = UpdateFolderPolicyError.NOT_ON_TEAM;
        }
        else if ("team_policy_disallows_member_policy".equals(localObject))
        {
          localObject = UpdateFolderPolicyError.TEAM_POLICY_DISALLOWS_MEMBER_POLICY;
        }
        else if ("disallowed_shared_link_policy".equals(localObject))
        {
          localObject = UpdateFolderPolicyError.DISALLOWED_SHARED_LINK_POLICY;
        }
        else if ("no_permission".equals(localObject))
        {
          localObject = UpdateFolderPolicyError.NO_PERMISSION;
        }
        else if ("team_folder".equals(localObject))
        {
          localObject = UpdateFolderPolicyError.TEAM_FOLDER;
        }
        else
        {
          localObject = UpdateFolderPolicyError.OTHER;
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
    
    public void a(UpdateFolderPolicyError paramUpdateFolderPolicyError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (UpdateFolderPolicyError.1.a[paramUpdateFolderPolicyError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 6: 
        paramJsonGenerator.writeString("team_folder");
        return;
      case 5: 
        paramJsonGenerator.writeString("no_permission");
        return;
      case 4: 
        paramJsonGenerator.writeString("disallowed_shared_link_policy");
        return;
      case 3: 
        paramJsonGenerator.writeString("team_policy_disallows_member_policy");
        return;
      case 2: 
        paramJsonGenerator.writeString("not_on_team");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("access_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_error");
      SharedFolderAccessError.a.a.a(UpdateFolderPolicyError.a(paramUpdateFolderPolicyError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
