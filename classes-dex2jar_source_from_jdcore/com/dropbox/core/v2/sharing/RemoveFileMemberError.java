package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class RemoveFileMemberError
{
  public static final RemoveFileMemberError OTHER = new RemoveFileMemberError().a(Tag.OTHER);
  private Tag a;
  private SharingUserError b;
  private SharingFileAccessError c;
  private MemberAccessLevelResult d;
  
  private RemoveFileMemberError() {}
  
  private RemoveFileMemberError a(Tag paramTag)
  {
    RemoveFileMemberError localRemoveFileMemberError = new RemoveFileMemberError();
    a = paramTag;
    return localRemoveFileMemberError;
  }
  
  private RemoveFileMemberError a(Tag paramTag, MemberAccessLevelResult paramMemberAccessLevelResult)
  {
    RemoveFileMemberError localRemoveFileMemberError = new RemoveFileMemberError();
    a = paramTag;
    d = paramMemberAccessLevelResult;
    return localRemoveFileMemberError;
  }
  
  private RemoveFileMemberError a(Tag paramTag, SharingFileAccessError paramSharingFileAccessError)
  {
    RemoveFileMemberError localRemoveFileMemberError = new RemoveFileMemberError();
    a = paramTag;
    c = paramSharingFileAccessError;
    return localRemoveFileMemberError;
  }
  
  private RemoveFileMemberError a(Tag paramTag, SharingUserError paramSharingUserError)
  {
    RemoveFileMemberError localRemoveFileMemberError = new RemoveFileMemberError();
    a = paramTag;
    b = paramSharingUserError;
    return localRemoveFileMemberError;
  }
  
  public static RemoveFileMemberError accessError(SharingFileAccessError paramSharingFileAccessError)
  {
    if (paramSharingFileAccessError != null) {
      return new RemoveFileMemberError().a(Tag.ACCESS_ERROR, paramSharingFileAccessError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static RemoveFileMemberError noExplicitAccess(MemberAccessLevelResult paramMemberAccessLevelResult)
  {
    if (paramMemberAccessLevelResult != null) {
      return new RemoveFileMemberError().a(Tag.NO_EXPLICIT_ACCESS, paramMemberAccessLevelResult);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static RemoveFileMemberError userError(SharingUserError paramSharingUserError)
  {
    if (paramSharingUserError != null) {
      return new RemoveFileMemberError().a(Tag.USER_ERROR, paramSharingUserError);
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
    if ((paramObject instanceof RemoveFileMemberError))
    {
      paramObject = (RemoveFileMemberError)paramObject;
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
  
  public SharingFileAccessError getAccessErrorValue()
  {
    if (a == Tag.ACCESS_ERROR) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ACCESS_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public MemberAccessLevelResult getNoExplicitAccessValue()
  {
    if (a == Tag.NO_EXPLICIT_ACCESS) {
      return d;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public SharingUserError getUserErrorValue()
  {
    if (a == Tag.USER_ERROR) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.USER_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c, d });
  }
  
  public boolean isAccessError()
  {
    return a == Tag.ACCESS_ERROR;
  }
  
  public boolean isNoExplicitAccess()
  {
    return a == Tag.NO_EXPLICIT_ACCESS;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isUserError()
  {
    return a == Tag.USER_ERROR;
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
    extends UnionSerializer<RemoveFileMemberError>
  {
    public static final a a = new a();
    
    a() {}
    
    public RemoveFileMemberError a(JsonParser paramJsonParser)
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
        if ("user_error".equals(localObject))
        {
          expectField("user_error", paramJsonParser);
          localObject = RemoveFileMemberError.userError(SharingUserError.a.a.a(paramJsonParser));
        }
        else if ("access_error".equals(localObject))
        {
          expectField("access_error", paramJsonParser);
          localObject = RemoveFileMemberError.accessError(SharingFileAccessError.a.a.a(paramJsonParser));
        }
        else if ("no_explicit_access".equals(localObject))
        {
          localObject = RemoveFileMemberError.noExplicitAccess(MemberAccessLevelResult.a.a.a(paramJsonParser, true));
        }
        else
        {
          localObject = RemoveFileMemberError.OTHER;
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
    
    public void a(RemoveFileMemberError paramRemoveFileMemberError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (RemoveFileMemberError.1.a[paramRemoveFileMemberError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("no_explicit_access", paramJsonGenerator);
        MemberAccessLevelResult.a.a.a(RemoveFileMemberError.c(paramRemoveFileMemberError), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("access_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("access_error");
        SharingFileAccessError.a.a.a(RemoveFileMemberError.b(paramRemoveFileMemberError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("user_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("user_error");
      SharingUserError.a.a.a(RemoveFileMemberError.a(paramRemoveFileMemberError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
