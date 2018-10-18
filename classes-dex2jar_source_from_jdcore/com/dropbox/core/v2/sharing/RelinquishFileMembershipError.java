package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class RelinquishFileMembershipError
{
  public static final RelinquishFileMembershipError GROUP_ACCESS = new RelinquishFileMembershipError().a(Tag.GROUP_ACCESS);
  public static final RelinquishFileMembershipError NO_PERMISSION = new RelinquishFileMembershipError().a(Tag.NO_PERMISSION);
  public static final RelinquishFileMembershipError OTHER = new RelinquishFileMembershipError().a(Tag.OTHER);
  private Tag a;
  private SharingFileAccessError b;
  
  private RelinquishFileMembershipError() {}
  
  private RelinquishFileMembershipError a(Tag paramTag)
  {
    RelinquishFileMembershipError localRelinquishFileMembershipError = new RelinquishFileMembershipError();
    a = paramTag;
    return localRelinquishFileMembershipError;
  }
  
  private RelinquishFileMembershipError a(Tag paramTag, SharingFileAccessError paramSharingFileAccessError)
  {
    RelinquishFileMembershipError localRelinquishFileMembershipError = new RelinquishFileMembershipError();
    a = paramTag;
    b = paramSharingFileAccessError;
    return localRelinquishFileMembershipError;
  }
  
  public static RelinquishFileMembershipError accessError(SharingFileAccessError paramSharingFileAccessError)
  {
    if (paramSharingFileAccessError != null) {
      return new RelinquishFileMembershipError().a(Tag.ACCESS_ERROR, paramSharingFileAccessError);
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
    if ((paramObject instanceof RelinquishFileMembershipError))
    {
      paramObject = (RelinquishFileMembershipError)paramObject;
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
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isAccessError()
  {
    return a == Tag.ACCESS_ERROR;
  }
  
  public boolean isGroupAccess()
  {
    return a == Tag.GROUP_ACCESS;
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
    extends UnionSerializer<RelinquishFileMembershipError>
  {
    public static final a a = new a();
    
    a() {}
    
    public RelinquishFileMembershipError a(JsonParser paramJsonParser)
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
          localObject = RelinquishFileMembershipError.accessError(SharingFileAccessError.a.a.a(paramJsonParser));
        }
        else if ("group_access".equals(localObject))
        {
          localObject = RelinquishFileMembershipError.GROUP_ACCESS;
        }
        else if ("no_permission".equals(localObject))
        {
          localObject = RelinquishFileMembershipError.NO_PERMISSION;
        }
        else
        {
          localObject = RelinquishFileMembershipError.OTHER;
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
    
    public void a(RelinquishFileMembershipError paramRelinquishFileMembershipError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (RelinquishFileMembershipError.1.a[paramRelinquishFileMembershipError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeString("no_permission");
        return;
      case 2: 
        paramJsonGenerator.writeString("group_access");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("access_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_error");
      SharingFileAccessError.a.a.a(RelinquishFileMembershipError.a(paramRelinquishFileMembershipError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
