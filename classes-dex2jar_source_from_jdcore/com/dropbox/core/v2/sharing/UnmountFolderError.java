package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class UnmountFolderError
{
  public static final UnmountFolderError NOT_UNMOUNTABLE = new UnmountFolderError().a(Tag.NOT_UNMOUNTABLE);
  public static final UnmountFolderError NO_PERMISSION = new UnmountFolderError().a(Tag.NO_PERMISSION);
  public static final UnmountFolderError OTHER = new UnmountFolderError().a(Tag.OTHER);
  private Tag a;
  private SharedFolderAccessError b;
  
  private UnmountFolderError() {}
  
  private UnmountFolderError a(Tag paramTag)
  {
    UnmountFolderError localUnmountFolderError = new UnmountFolderError();
    a = paramTag;
    return localUnmountFolderError;
  }
  
  private UnmountFolderError a(Tag paramTag, SharedFolderAccessError paramSharedFolderAccessError)
  {
    UnmountFolderError localUnmountFolderError = new UnmountFolderError();
    a = paramTag;
    b = paramSharedFolderAccessError;
    return localUnmountFolderError;
  }
  
  public static UnmountFolderError accessError(SharedFolderAccessError paramSharedFolderAccessError)
  {
    if (paramSharedFolderAccessError != null) {
      return new UnmountFolderError().a(Tag.ACCESS_ERROR, paramSharedFolderAccessError);
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
    if ((paramObject instanceof UnmountFolderError))
    {
      paramObject = (UnmountFolderError)paramObject;
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
  
  public boolean isNoPermission()
  {
    return a == Tag.NO_PERMISSION;
  }
  
  public boolean isNotUnmountable()
  {
    return a == Tag.NOT_UNMOUNTABLE;
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
    extends UnionSerializer<UnmountFolderError>
  {
    public static final a a = new a();
    
    a() {}
    
    public UnmountFolderError a(JsonParser paramJsonParser)
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
          localObject = UnmountFolderError.accessError(SharedFolderAccessError.a.a.a(paramJsonParser));
        }
        else if ("no_permission".equals(localObject))
        {
          localObject = UnmountFolderError.NO_PERMISSION;
        }
        else if ("not_unmountable".equals(localObject))
        {
          localObject = UnmountFolderError.NOT_UNMOUNTABLE;
        }
        else
        {
          localObject = UnmountFolderError.OTHER;
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
    
    public void a(UnmountFolderError paramUnmountFolderError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (UnmountFolderError.1.a[paramUnmountFolderError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeString("not_unmountable");
        return;
      case 2: 
        paramJsonGenerator.writeString("no_permission");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("access_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_error");
      SharedFolderAccessError.a.a.a(UnmountFolderError.a(paramUnmountFolderError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
