package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class RelinquishFolderMembershipError
{
  public static final RelinquishFolderMembershipError FOLDER_OWNER = new RelinquishFolderMembershipError().a(Tag.FOLDER_OWNER);
  public static final RelinquishFolderMembershipError GROUP_ACCESS;
  public static final RelinquishFolderMembershipError MOUNTED = new RelinquishFolderMembershipError().a(Tag.MOUNTED);
  public static final RelinquishFolderMembershipError NO_EXPLICIT_ACCESS = new RelinquishFolderMembershipError().a(Tag.NO_EXPLICIT_ACCESS);
  public static final RelinquishFolderMembershipError NO_PERMISSION;
  public static final RelinquishFolderMembershipError OTHER = new RelinquishFolderMembershipError().a(Tag.OTHER);
  public static final RelinquishFolderMembershipError TEAM_FOLDER;
  private Tag a;
  private SharedFolderAccessError b;
  
  static
  {
    GROUP_ACCESS = new RelinquishFolderMembershipError().a(Tag.GROUP_ACCESS);
    TEAM_FOLDER = new RelinquishFolderMembershipError().a(Tag.TEAM_FOLDER);
    NO_PERMISSION = new RelinquishFolderMembershipError().a(Tag.NO_PERMISSION);
  }
  
  private RelinquishFolderMembershipError() {}
  
  private RelinquishFolderMembershipError a(Tag paramTag)
  {
    RelinquishFolderMembershipError localRelinquishFolderMembershipError = new RelinquishFolderMembershipError();
    a = paramTag;
    return localRelinquishFolderMembershipError;
  }
  
  private RelinquishFolderMembershipError a(Tag paramTag, SharedFolderAccessError paramSharedFolderAccessError)
  {
    RelinquishFolderMembershipError localRelinquishFolderMembershipError = new RelinquishFolderMembershipError();
    a = paramTag;
    b = paramSharedFolderAccessError;
    return localRelinquishFolderMembershipError;
  }
  
  public static RelinquishFolderMembershipError accessError(SharedFolderAccessError paramSharedFolderAccessError)
  {
    if (paramSharedFolderAccessError != null) {
      return new RelinquishFolderMembershipError().a(Tag.ACCESS_ERROR, paramSharedFolderAccessError);
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
    if ((paramObject instanceof RelinquishFolderMembershipError))
    {
      paramObject = (RelinquishFolderMembershipError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
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
  
  public boolean isFolderOwner()
  {
    return a == Tag.FOLDER_OWNER;
  }
  
  public boolean isGroupAccess()
  {
    return a == Tag.GROUP_ACCESS;
  }
  
  public boolean isMounted()
  {
    return a == Tag.MOUNTED;
  }
  
  public boolean isNoExplicitAccess()
  {
    return a == Tag.NO_EXPLICIT_ACCESS;
  }
  
  public boolean isNoPermission()
  {
    return a == Tag.NO_PERMISSION;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isTeamFolder()
  {
    return a == Tag.TEAM_FOLDER;
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
      GROUP_ACCESS = new Tag("GROUP_ACCESS", 3);
      TEAM_FOLDER = new Tag("TEAM_FOLDER", 4);
      NO_PERMISSION = new Tag("NO_PERMISSION", 5);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<RelinquishFolderMembershipError>
  {
    public static final a a = new a();
    
    a() {}
    
    public RelinquishFolderMembershipError a(JsonParser paramJsonParser)
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
          localObject = RelinquishFolderMembershipError.accessError(SharedFolderAccessError.a.a.a(paramJsonParser));
        }
        else if ("folder_owner".equals(localObject))
        {
          localObject = RelinquishFolderMembershipError.FOLDER_OWNER;
        }
        else if ("mounted".equals(localObject))
        {
          localObject = RelinquishFolderMembershipError.MOUNTED;
        }
        else if ("group_access".equals(localObject))
        {
          localObject = RelinquishFolderMembershipError.GROUP_ACCESS;
        }
        else if ("team_folder".equals(localObject))
        {
          localObject = RelinquishFolderMembershipError.TEAM_FOLDER;
        }
        else if ("no_permission".equals(localObject))
        {
          localObject = RelinquishFolderMembershipError.NO_PERMISSION;
        }
        else if ("no_explicit_access".equals(localObject))
        {
          localObject = RelinquishFolderMembershipError.NO_EXPLICIT_ACCESS;
        }
        else
        {
          localObject = RelinquishFolderMembershipError.OTHER;
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
    
    public void a(RelinquishFolderMembershipError paramRelinquishFolderMembershipError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (RelinquishFolderMembershipError.1.a[paramRelinquishFolderMembershipError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 7: 
        paramJsonGenerator.writeString("no_explicit_access");
        return;
      case 6: 
        paramJsonGenerator.writeString("no_permission");
        return;
      case 5: 
        paramJsonGenerator.writeString("team_folder");
        return;
      case 4: 
        paramJsonGenerator.writeString("group_access");
        return;
      case 3: 
        paramJsonGenerator.writeString("mounted");
        return;
      case 2: 
        paramJsonGenerator.writeString("folder_owner");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("access_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_error");
      SharedFolderAccessError.a.a.a(RelinquishFolderMembershipError.a(paramRelinquishFolderMembershipError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
