package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class FileMemberActionError
{
  public static final FileMemberActionError INVALID_MEMBER = new FileMemberActionError().a(Tag.INVALID_MEMBER);
  public static final FileMemberActionError NO_PERMISSION = new FileMemberActionError().a(Tag.NO_PERMISSION);
  public static final FileMemberActionError OTHER = new FileMemberActionError().a(Tag.OTHER);
  private Tag a;
  private SharingFileAccessError b;
  private MemberAccessLevelResult c;
  
  private FileMemberActionError() {}
  
  private FileMemberActionError a(Tag paramTag)
  {
    FileMemberActionError localFileMemberActionError = new FileMemberActionError();
    a = paramTag;
    return localFileMemberActionError;
  }
  
  private FileMemberActionError a(Tag paramTag, MemberAccessLevelResult paramMemberAccessLevelResult)
  {
    FileMemberActionError localFileMemberActionError = new FileMemberActionError();
    a = paramTag;
    c = paramMemberAccessLevelResult;
    return localFileMemberActionError;
  }
  
  private FileMemberActionError a(Tag paramTag, SharingFileAccessError paramSharingFileAccessError)
  {
    FileMemberActionError localFileMemberActionError = new FileMemberActionError();
    a = paramTag;
    b = paramSharingFileAccessError;
    return localFileMemberActionError;
  }
  
  public static FileMemberActionError accessError(SharingFileAccessError paramSharingFileAccessError)
  {
    if (paramSharingFileAccessError != null) {
      return new FileMemberActionError().a(Tag.ACCESS_ERROR, paramSharingFileAccessError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static FileMemberActionError noExplicitAccess(MemberAccessLevelResult paramMemberAccessLevelResult)
  {
    if (paramMemberAccessLevelResult != null) {
      return new FileMemberActionError().a(Tag.NO_EXPLICIT_ACCESS, paramMemberAccessLevelResult);
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
    if ((paramObject instanceof FileMemberActionError))
    {
      paramObject = (FileMemberActionError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 5: 
        return true;
      case 4: 
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 3: 
        bool1 = bool2;
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 2: 
        return true;
      }
      return true;
    }
    return false;
  }
  
  public SharingFileAccessError getAccessErrorValue()
  {
    if (a == Tag.ACCESS_ERROR) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ACCESS_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public MemberAccessLevelResult getNoExplicitAccessValue()
  {
    if (a == Tag.NO_EXPLICIT_ACCESS) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag.");
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
  
  public boolean isInvalidMember()
  {
    return a == Tag.INVALID_MEMBER;
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
    extends UnionSerializer<FileMemberActionError>
  {
    public static final a a = new a();
    
    a() {}
    
    public FileMemberActionError a(JsonParser paramJsonParser)
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
        if ("invalid_member".equals(localObject))
        {
          localObject = FileMemberActionError.INVALID_MEMBER;
        }
        else if ("no_permission".equals(localObject))
        {
          localObject = FileMemberActionError.NO_PERMISSION;
        }
        else if ("access_error".equals(localObject))
        {
          expectField("access_error", paramJsonParser);
          localObject = FileMemberActionError.accessError(SharingFileAccessError.a.a.a(paramJsonParser));
        }
        else if ("no_explicit_access".equals(localObject))
        {
          localObject = FileMemberActionError.noExplicitAccess(MemberAccessLevelResult.a.a.a(paramJsonParser, true));
        }
        else
        {
          localObject = FileMemberActionError.OTHER;
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
    
    public void a(FileMemberActionError paramFileMemberActionError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (FileMemberActionError.1.a[paramFileMemberActionError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 4: 
        paramJsonGenerator.writeStartObject();
        writeTag("no_explicit_access", paramJsonGenerator);
        MemberAccessLevelResult.a.a.a(FileMemberActionError.b(paramFileMemberActionError), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("access_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("access_error");
        SharingFileAccessError.a.a.a(FileMemberActionError.a(paramFileMemberActionError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeString("no_permission");
        return;
      }
      paramJsonGenerator.writeString("invalid_member");
    }
  }
}
