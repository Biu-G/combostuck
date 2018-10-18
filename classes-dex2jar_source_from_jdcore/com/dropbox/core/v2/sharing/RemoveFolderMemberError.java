package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class RemoveFolderMemberError
{
  public static final RemoveFolderMemberError FOLDER_OWNER = new RemoveFolderMemberError().a(Tag.FOLDER_OWNER);
  public static final RemoveFolderMemberError GROUP_ACCESS = new RemoveFolderMemberError().a(Tag.GROUP_ACCESS);
  public static final RemoveFolderMemberError NO_PERMISSION;
  public static final RemoveFolderMemberError OTHER = new RemoveFolderMemberError().a(Tag.OTHER);
  public static final RemoveFolderMemberError TEAM_FOLDER = new RemoveFolderMemberError().a(Tag.TEAM_FOLDER);
  public static final RemoveFolderMemberError TOO_MANY_FILES;
  private Tag a;
  private SharedFolderAccessError b;
  private SharedFolderMemberError c;
  
  static
  {
    NO_PERMISSION = new RemoveFolderMemberError().a(Tag.NO_PERMISSION);
    TOO_MANY_FILES = new RemoveFolderMemberError().a(Tag.TOO_MANY_FILES);
  }
  
  private RemoveFolderMemberError() {}
  
  private RemoveFolderMemberError a(Tag paramTag)
  {
    RemoveFolderMemberError localRemoveFolderMemberError = new RemoveFolderMemberError();
    a = paramTag;
    return localRemoveFolderMemberError;
  }
  
  private RemoveFolderMemberError a(Tag paramTag, SharedFolderAccessError paramSharedFolderAccessError)
  {
    RemoveFolderMemberError localRemoveFolderMemberError = new RemoveFolderMemberError();
    a = paramTag;
    b = paramSharedFolderAccessError;
    return localRemoveFolderMemberError;
  }
  
  private RemoveFolderMemberError a(Tag paramTag, SharedFolderMemberError paramSharedFolderMemberError)
  {
    RemoveFolderMemberError localRemoveFolderMemberError = new RemoveFolderMemberError();
    a = paramTag;
    c = paramSharedFolderMemberError;
    return localRemoveFolderMemberError;
  }
  
  public static RemoveFolderMemberError accessError(SharedFolderAccessError paramSharedFolderAccessError)
  {
    if (paramSharedFolderAccessError != null) {
      return new RemoveFolderMemberError().a(Tag.ACCESS_ERROR, paramSharedFolderAccessError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static RemoveFolderMemberError memberError(SharedFolderMemberError paramSharedFolderMemberError)
  {
    if (paramSharedFolderMemberError != null) {
      return new RemoveFolderMemberError().a(Tag.MEMBER_ERROR, paramSharedFolderMemberError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof RemoveFolderMemberError))
    {
      paramObject = (RemoveFolderMemberError)paramObject;
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
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      }
      bool1 = bool2;
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
  
  public SharedFolderMemberError getMemberErrorValue()
  {
    if (a == Tag.MEMBER_ERROR) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.MEMBER_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
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
  
  public boolean isMemberError()
  {
    return a == Tag.MEMBER_ERROR;
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
  
  public boolean isTooManyFiles()
  {
    return a == Tag.TOO_MANY_FILES;
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
      FOLDER_OWNER = new Tag("FOLDER_OWNER", 2);
      GROUP_ACCESS = new Tag("GROUP_ACCESS", 3);
      TEAM_FOLDER = new Tag("TEAM_FOLDER", 4);
      NO_PERMISSION = new Tag("NO_PERMISSION", 5);
      TOO_MANY_FILES = new Tag("TOO_MANY_FILES", 6);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<RemoveFolderMemberError>
  {
    public static final a a = new a();
    
    a() {}
    
    public RemoveFolderMemberError a(JsonParser paramJsonParser)
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
          localObject = RemoveFolderMemberError.accessError(SharedFolderAccessError.a.a.a(paramJsonParser));
        }
        else if ("member_error".equals(localObject))
        {
          expectField("member_error", paramJsonParser);
          localObject = RemoveFolderMemberError.memberError(SharedFolderMemberError.a.a.a(paramJsonParser));
        }
        else if ("folder_owner".equals(localObject))
        {
          localObject = RemoveFolderMemberError.FOLDER_OWNER;
        }
        else if ("group_access".equals(localObject))
        {
          localObject = RemoveFolderMemberError.GROUP_ACCESS;
        }
        else if ("team_folder".equals(localObject))
        {
          localObject = RemoveFolderMemberError.TEAM_FOLDER;
        }
        else if ("no_permission".equals(localObject))
        {
          localObject = RemoveFolderMemberError.NO_PERMISSION;
        }
        else if ("too_many_files".equals(localObject))
        {
          localObject = RemoveFolderMemberError.TOO_MANY_FILES;
        }
        else
        {
          localObject = RemoveFolderMemberError.OTHER;
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
    
    public void a(RemoveFolderMemberError paramRemoveFolderMemberError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (RemoveFolderMemberError.1.a[paramRemoveFolderMemberError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 7: 
        paramJsonGenerator.writeString("too_many_files");
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
        paramJsonGenerator.writeString("folder_owner");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("member_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("member_error");
        SharedFolderMemberError.a.a.a(RemoveFolderMemberError.b(paramRemoveFolderMemberError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("access_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_error");
      SharedFolderAccessError.a.a.a(RemoveFolderMemberError.a(paramRemoveFolderMemberError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
