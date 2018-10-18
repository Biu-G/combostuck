package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class UnshareFolderError
{
  public static final UnshareFolderError NO_PERMISSION;
  public static final UnshareFolderError OTHER = new UnshareFolderError().a(Tag.OTHER);
  public static final UnshareFolderError TEAM_FOLDER = new UnshareFolderError().a(Tag.TEAM_FOLDER);
  public static final UnshareFolderError TOO_MANY_FILES;
  private Tag a;
  private SharedFolderAccessError b;
  
  static
  {
    NO_PERMISSION = new UnshareFolderError().a(Tag.NO_PERMISSION);
    TOO_MANY_FILES = new UnshareFolderError().a(Tag.TOO_MANY_FILES);
  }
  
  private UnshareFolderError() {}
  
  private UnshareFolderError a(Tag paramTag)
  {
    UnshareFolderError localUnshareFolderError = new UnshareFolderError();
    a = paramTag;
    return localUnshareFolderError;
  }
  
  private UnshareFolderError a(Tag paramTag, SharedFolderAccessError paramSharedFolderAccessError)
  {
    UnshareFolderError localUnshareFolderError = new UnshareFolderError();
    a = paramTag;
    b = paramSharedFolderAccessError;
    return localUnshareFolderError;
  }
  
  public static UnshareFolderError accessError(SharedFolderAccessError paramSharedFolderAccessError)
  {
    if (paramSharedFolderAccessError != null) {
      return new UnshareFolderError().a(Tag.ACCESS_ERROR, paramSharedFolderAccessError);
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
    if ((paramObject instanceof UnshareFolderError))
    {
      paramObject = (UnshareFolderError)paramObject;
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
      NO_PERMISSION = new Tag("NO_PERMISSION", 2);
      TOO_MANY_FILES = new Tag("TOO_MANY_FILES", 3);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<UnshareFolderError>
  {
    public static final a a = new a();
    
    a() {}
    
    public UnshareFolderError a(JsonParser paramJsonParser)
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
          localObject = UnshareFolderError.accessError(SharedFolderAccessError.a.a.a(paramJsonParser));
        }
        else if ("team_folder".equals(localObject))
        {
          localObject = UnshareFolderError.TEAM_FOLDER;
        }
        else if ("no_permission".equals(localObject))
        {
          localObject = UnshareFolderError.NO_PERMISSION;
        }
        else if ("too_many_files".equals(localObject))
        {
          localObject = UnshareFolderError.TOO_MANY_FILES;
        }
        else
        {
          localObject = UnshareFolderError.OTHER;
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
    
    public void a(UnshareFolderError paramUnshareFolderError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (UnshareFolderError.1.a[paramUnshareFolderError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 4: 
        paramJsonGenerator.writeString("too_many_files");
        return;
      case 3: 
        paramJsonGenerator.writeString("no_permission");
        return;
      case 2: 
        paramJsonGenerator.writeString("team_folder");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("access_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_error");
      SharedFolderAccessError.a.a.a(UnshareFolderError.a(paramUnshareFolderError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
