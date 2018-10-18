package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class ShareFolderError
{
  public static final ShareFolderError DISALLOWED_SHARED_LINK_POLICY;
  public static final ShareFolderError EMAIL_UNVERIFIED = new ShareFolderError().a(Tag.EMAIL_UNVERIFIED);
  public static final ShareFolderError NO_PERMISSION = new ShareFolderError().a(Tag.NO_PERMISSION);
  public static final ShareFolderError OTHER;
  public static final ShareFolderError TEAM_POLICY_DISALLOWS_MEMBER_POLICY = new ShareFolderError().a(Tag.TEAM_POLICY_DISALLOWS_MEMBER_POLICY);
  private Tag a;
  private SharePathError b;
  
  static
  {
    DISALLOWED_SHARED_LINK_POLICY = new ShareFolderError().a(Tag.DISALLOWED_SHARED_LINK_POLICY);
    OTHER = new ShareFolderError().a(Tag.OTHER);
  }
  
  private ShareFolderError() {}
  
  private ShareFolderError a(Tag paramTag)
  {
    ShareFolderError localShareFolderError = new ShareFolderError();
    a = paramTag;
    return localShareFolderError;
  }
  
  private ShareFolderError a(Tag paramTag, SharePathError paramSharePathError)
  {
    ShareFolderError localShareFolderError = new ShareFolderError();
    a = paramTag;
    b = paramSharePathError;
    return localShareFolderError;
  }
  
  public static ShareFolderError badPath(SharePathError paramSharePathError)
  {
    if (paramSharePathError != null) {
      return new ShareFolderError().a(Tag.BAD_PATH, paramSharePathError);
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
    if ((paramObject instanceof ShareFolderError))
    {
      paramObject = (ShareFolderError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 6: 
        return true;
      case 5: 
        return true;
      case 4: 
        return true;
      case 3: 
        return true;
      case 2: 
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool = false;
        }
        return bool;
      }
      return true;
    }
    return false;
  }
  
  public SharePathError getBadPathValue()
  {
    if (a == Tag.BAD_PATH) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.BAD_PATH, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, b });
    return super.hashCode() * 31 + i;
  }
  
  public boolean isBadPath()
  {
    return a == Tag.BAD_PATH;
  }
  
  public boolean isDisallowedSharedLinkPolicy()
  {
    return a == Tag.DISALLOWED_SHARED_LINK_POLICY;
  }
  
  public boolean isEmailUnverified()
  {
    return a == Tag.EMAIL_UNVERIFIED;
  }
  
  public boolean isNoPermission()
  {
    return a == Tag.NO_PERMISSION;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
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
      BAD_PATH = new Tag("BAD_PATH", 1);
      TEAM_POLICY_DISALLOWS_MEMBER_POLICY = new Tag("TEAM_POLICY_DISALLOWS_MEMBER_POLICY", 2);
      DISALLOWED_SHARED_LINK_POLICY = new Tag("DISALLOWED_SHARED_LINK_POLICY", 3);
      OTHER = new Tag("OTHER", 4);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<ShareFolderError>
  {
    public static final a a = new a();
    
    a() {}
    
    public ShareFolderError a(JsonParser paramJsonParser)
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
        if ("email_unverified".equals(localObject))
        {
          localObject = ShareFolderError.EMAIL_UNVERIFIED;
        }
        else if ("bad_path".equals(localObject))
        {
          expectField("bad_path", paramJsonParser);
          localObject = ShareFolderError.badPath(SharePathError.a.a.a(paramJsonParser));
        }
        else if ("team_policy_disallows_member_policy".equals(localObject))
        {
          localObject = ShareFolderError.TEAM_POLICY_DISALLOWS_MEMBER_POLICY;
        }
        else if ("disallowed_shared_link_policy".equals(localObject))
        {
          localObject = ShareFolderError.DISALLOWED_SHARED_LINK_POLICY;
        }
        else if ("other".equals(localObject))
        {
          localObject = ShareFolderError.OTHER;
        }
        else
        {
          if (!"no_permission".equals(localObject)) {
            break label160;
          }
          localObject = ShareFolderError.NO_PERMISSION;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label160:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(ShareFolderError paramShareFolderError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ShareFolderError.1.a[paramShareFolderError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramShareFolderError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 6: 
        paramJsonGenerator.writeString("no_permission");
        return;
      case 5: 
        paramJsonGenerator.writeString("other");
        return;
      case 4: 
        paramJsonGenerator.writeString("disallowed_shared_link_policy");
        return;
      case 3: 
        paramJsonGenerator.writeString("team_policy_disallows_member_policy");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("bad_path", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("bad_path");
        SharePathError.a.a.a(ShareFolderError.a(paramShareFolderError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeString("email_unverified");
    }
  }
}
