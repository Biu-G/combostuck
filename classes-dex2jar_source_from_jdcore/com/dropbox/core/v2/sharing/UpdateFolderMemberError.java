package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class UpdateFolderMemberError
{
  public static final UpdateFolderMemberError INSUFFICIENT_PLAN = new UpdateFolderMemberError().a(Tag.INSUFFICIENT_PLAN);
  public static final UpdateFolderMemberError NO_PERMISSION = new UpdateFolderMemberError().a(Tag.NO_PERMISSION);
  public static final UpdateFolderMemberError OTHER = new UpdateFolderMemberError().a(Tag.OTHER);
  private Tag a;
  private SharedFolderAccessError b;
  private SharedFolderMemberError c;
  private AddFolderMemberError d;
  
  private UpdateFolderMemberError() {}
  
  private UpdateFolderMemberError a(Tag paramTag)
  {
    UpdateFolderMemberError localUpdateFolderMemberError = new UpdateFolderMemberError();
    a = paramTag;
    return localUpdateFolderMemberError;
  }
  
  private UpdateFolderMemberError a(Tag paramTag, AddFolderMemberError paramAddFolderMemberError)
  {
    UpdateFolderMemberError localUpdateFolderMemberError = new UpdateFolderMemberError();
    a = paramTag;
    d = paramAddFolderMemberError;
    return localUpdateFolderMemberError;
  }
  
  private UpdateFolderMemberError a(Tag paramTag, SharedFolderAccessError paramSharedFolderAccessError)
  {
    UpdateFolderMemberError localUpdateFolderMemberError = new UpdateFolderMemberError();
    a = paramTag;
    b = paramSharedFolderAccessError;
    return localUpdateFolderMemberError;
  }
  
  private UpdateFolderMemberError a(Tag paramTag, SharedFolderMemberError paramSharedFolderMemberError)
  {
    UpdateFolderMemberError localUpdateFolderMemberError = new UpdateFolderMemberError();
    a = paramTag;
    c = paramSharedFolderMemberError;
    return localUpdateFolderMemberError;
  }
  
  public static UpdateFolderMemberError accessError(SharedFolderAccessError paramSharedFolderAccessError)
  {
    if (paramSharedFolderAccessError != null) {
      return new UpdateFolderMemberError().a(Tag.ACCESS_ERROR, paramSharedFolderAccessError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static UpdateFolderMemberError memberError(SharedFolderMemberError paramSharedFolderMemberError)
  {
    if (paramSharedFolderMemberError != null) {
      return new UpdateFolderMemberError().a(Tag.MEMBER_ERROR, paramSharedFolderMemberError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static UpdateFolderMemberError noExplicitAccess(AddFolderMemberError paramAddFolderMemberError)
  {
    if (paramAddFolderMemberError != null) {
      return new UpdateFolderMemberError().a(Tag.NO_EXPLICIT_ACCESS, paramAddFolderMemberError);
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
    if ((paramObject instanceof UpdateFolderMemberError))
    {
      paramObject = (UpdateFolderMemberError)paramObject;
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
  
  public AddFolderMemberError getNoExplicitAccessValue()
  {
    if (a == Tag.NO_EXPLICIT_ACCESS) {
      return d;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag.");
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
  
  public boolean isInsufficientPlan()
  {
    return a == Tag.INSUFFICIENT_PLAN;
  }
  
  public boolean isMemberError()
  {
    return a == Tag.MEMBER_ERROR;
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
    extends UnionSerializer<UpdateFolderMemberError>
  {
    public static final a a = new a();
    
    a() {}
    
    public UpdateFolderMemberError a(JsonParser paramJsonParser)
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
          localObject = UpdateFolderMemberError.accessError(SharedFolderAccessError.a.a.a(paramJsonParser));
        }
        else if ("member_error".equals(localObject))
        {
          expectField("member_error", paramJsonParser);
          localObject = UpdateFolderMemberError.memberError(SharedFolderMemberError.a.a.a(paramJsonParser));
        }
        else if ("no_explicit_access".equals(localObject))
        {
          expectField("no_explicit_access", paramJsonParser);
          localObject = UpdateFolderMemberError.noExplicitAccess(AddFolderMemberError.a.a.a(paramJsonParser));
        }
        else if ("insufficient_plan".equals(localObject))
        {
          localObject = UpdateFolderMemberError.INSUFFICIENT_PLAN;
        }
        else if ("no_permission".equals(localObject))
        {
          localObject = UpdateFolderMemberError.NO_PERMISSION;
        }
        else
        {
          localObject = UpdateFolderMemberError.OTHER;
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
    
    public void a(UpdateFolderMemberError paramUpdateFolderMemberError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (UpdateFolderMemberError.1.a[paramUpdateFolderMemberError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 5: 
        paramJsonGenerator.writeString("no_permission");
        return;
      case 4: 
        paramJsonGenerator.writeString("insufficient_plan");
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("no_explicit_access", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("no_explicit_access");
        AddFolderMemberError.a.a.a(UpdateFolderMemberError.c(paramUpdateFolderMemberError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("member_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("member_error");
        SharedFolderMemberError.a.a.a(UpdateFolderMemberError.b(paramUpdateFolderMemberError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("access_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_error");
      SharedFolderAccessError.a.a.a(UpdateFolderMemberError.a(paramUpdateFolderMemberError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
