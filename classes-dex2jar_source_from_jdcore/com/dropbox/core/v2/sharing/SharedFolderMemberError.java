package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class SharedFolderMemberError
{
  public static final SharedFolderMemberError INVALID_DROPBOX_ID = new SharedFolderMemberError().a(Tag.INVALID_DROPBOX_ID);
  public static final SharedFolderMemberError NOT_A_MEMBER = new SharedFolderMemberError().a(Tag.NOT_A_MEMBER);
  public static final SharedFolderMemberError OTHER = new SharedFolderMemberError().a(Tag.OTHER);
  private Tag a;
  private MemberAccessLevelResult b;
  
  private SharedFolderMemberError() {}
  
  private SharedFolderMemberError a(Tag paramTag)
  {
    SharedFolderMemberError localSharedFolderMemberError = new SharedFolderMemberError();
    a = paramTag;
    return localSharedFolderMemberError;
  }
  
  private SharedFolderMemberError a(Tag paramTag, MemberAccessLevelResult paramMemberAccessLevelResult)
  {
    SharedFolderMemberError localSharedFolderMemberError = new SharedFolderMemberError();
    a = paramTag;
    b = paramMemberAccessLevelResult;
    return localSharedFolderMemberError;
  }
  
  public static SharedFolderMemberError noExplicitAccess(MemberAccessLevelResult paramMemberAccessLevelResult)
  {
    if (paramMemberAccessLevelResult != null) {
      return new SharedFolderMemberError().a(Tag.NO_EXPLICIT_ACCESS, paramMemberAccessLevelResult);
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
    if ((paramObject instanceof SharedFolderMemberError))
    {
      paramObject = (SharedFolderMemberError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 4: 
        return true;
      case 3: 
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool = false;
        }
        return bool;
      case 2: 
        return true;
      }
      return true;
    }
    return false;
  }
  
  public MemberAccessLevelResult getNoExplicitAccessValue()
  {
    if (a == Tag.NO_EXPLICIT_ACCESS) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isInvalidDropboxId()
  {
    return a == Tag.INVALID_DROPBOX_ID;
  }
  
  public boolean isNoExplicitAccess()
  {
    return a == Tag.NO_EXPLICIT_ACCESS;
  }
  
  public boolean isNotAMember()
  {
    return a == Tag.NOT_A_MEMBER;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
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
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<SharedFolderMemberError>
  {
    public static final a a = new a();
    
    a() {}
    
    public SharedFolderMemberError a(JsonParser paramJsonParser)
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
        if ("invalid_dropbox_id".equals(localObject)) {
          localObject = SharedFolderMemberError.INVALID_DROPBOX_ID;
        } else if ("not_a_member".equals(localObject)) {
          localObject = SharedFolderMemberError.NOT_A_MEMBER;
        } else if ("no_explicit_access".equals(localObject)) {
          localObject = SharedFolderMemberError.noExplicitAccess(MemberAccessLevelResult.a.a.a(paramJsonParser, true));
        } else {
          localObject = SharedFolderMemberError.OTHER;
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
    
    public void a(SharedFolderMemberError paramSharedFolderMemberError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SharedFolderMemberError.1.a[paramSharedFolderMemberError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("no_explicit_access", paramJsonGenerator);
        MemberAccessLevelResult.a.a.a(SharedFolderMemberError.a(paramSharedFolderMemberError), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeString("not_a_member");
        return;
      }
      paramJsonGenerator.writeString("invalid_dropbox_id");
    }
  }
}
