package com.dropbox.core.v2.files;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class WriteError
{
  public static final WriteError DISALLOWED_NAME;
  public static final WriteError INSUFFICIENT_SPACE;
  public static final WriteError NO_WRITE_PERMISSION = new WriteError().a(Tag.NO_WRITE_PERMISSION);
  public static final WriteError OTHER = new WriteError().a(Tag.OTHER);
  public static final WriteError TEAM_FOLDER;
  public static final WriteError TOO_MANY_WRITE_OPERATIONS;
  private Tag a;
  private String b;
  private WriteConflictError c;
  
  static
  {
    INSUFFICIENT_SPACE = new WriteError().a(Tag.INSUFFICIENT_SPACE);
    DISALLOWED_NAME = new WriteError().a(Tag.DISALLOWED_NAME);
    TEAM_FOLDER = new WriteError().a(Tag.TEAM_FOLDER);
    TOO_MANY_WRITE_OPERATIONS = new WriteError().a(Tag.TOO_MANY_WRITE_OPERATIONS);
  }
  
  private WriteError() {}
  
  private WriteError a(Tag paramTag)
  {
    WriteError localWriteError = new WriteError();
    a = paramTag;
    return localWriteError;
  }
  
  private WriteError a(Tag paramTag, WriteConflictError paramWriteConflictError)
  {
    WriteError localWriteError = new WriteError();
    a = paramTag;
    c = paramWriteConflictError;
    return localWriteError;
  }
  
  private WriteError a(Tag paramTag, String paramString)
  {
    WriteError localWriteError = new WriteError();
    a = paramTag;
    b = paramString;
    return localWriteError;
  }
  
  public static WriteError conflict(WriteConflictError paramWriteConflictError)
  {
    if (paramWriteConflictError != null) {
      return new WriteError().a(Tag.CONFLICT, paramWriteConflictError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static WriteError malformedPath()
  {
    return malformedPath(null);
  }
  
  public static WriteError malformedPath(String paramString)
  {
    return new WriteError().a(Tag.MALFORMED_PATH, paramString);
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
    if ((paramObject instanceof WriteError))
    {
      paramObject = (WriteError)paramObject;
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
        if ((b != null) && (b.equals(b))) {
          return true;
        }
        bool1 = false;
      }
      return bool1;
    }
    return false;
  }
  
  public WriteConflictError getConflictValue()
  {
    if (a == Tag.CONFLICT) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.CONFLICT, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getMalformedPathValue()
  {
    if (a == Tag.MALFORMED_PATH) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.MALFORMED_PATH, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public boolean isConflict()
  {
    return a == Tag.CONFLICT;
  }
  
  public boolean isDisallowedName()
  {
    return a == Tag.DISALLOWED_NAME;
  }
  
  public boolean isInsufficientSpace()
  {
    return a == Tag.INSUFFICIENT_SPACE;
  }
  
  public boolean isMalformedPath()
  {
    return a == Tag.MALFORMED_PATH;
  }
  
  public boolean isNoWritePermission()
  {
    return a == Tag.NO_WRITE_PERMISSION;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isTeamFolder()
  {
    return a == Tag.TEAM_FOLDER;
  }
  
  public boolean isTooManyWriteOperations()
  {
    return a == Tag.TOO_MANY_WRITE_OPERATIONS;
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
      CONFLICT = new Tag("CONFLICT", 1);
      NO_WRITE_PERMISSION = new Tag("NO_WRITE_PERMISSION", 2);
      INSUFFICIENT_SPACE = new Tag("INSUFFICIENT_SPACE", 3);
      DISALLOWED_NAME = new Tag("DISALLOWED_NAME", 4);
      TEAM_FOLDER = new Tag("TEAM_FOLDER", 5);
      TOO_MANY_WRITE_OPERATIONS = new Tag("TOO_MANY_WRITE_OPERATIONS", 6);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<WriteError>
  {
    public static final a a = new a();
    
    a() {}
    
    public WriteError a(JsonParser paramJsonParser)
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
        if ("malformed_path".equals(localObject))
        {
          localObject = null;
          if (paramJsonParser.getCurrentToken() != JsonToken.END_OBJECT)
          {
            expectField("malformed_path", paramJsonParser);
            localObject = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          }
          if (localObject == null) {
            localObject = WriteError.malformedPath();
          } else {
            localObject = WriteError.malformedPath((String)localObject);
          }
        }
        else if ("conflict".equals(localObject))
        {
          expectField("conflict", paramJsonParser);
          localObject = WriteError.conflict(WriteConflictError.a.a.a(paramJsonParser));
        }
        else if ("no_write_permission".equals(localObject))
        {
          localObject = WriteError.NO_WRITE_PERMISSION;
        }
        else if ("insufficient_space".equals(localObject))
        {
          localObject = WriteError.INSUFFICIENT_SPACE;
        }
        else if ("disallowed_name".equals(localObject))
        {
          localObject = WriteError.DISALLOWED_NAME;
        }
        else if ("team_folder".equals(localObject))
        {
          localObject = WriteError.TEAM_FOLDER;
        }
        else if ("too_many_write_operations".equals(localObject))
        {
          localObject = WriteError.TOO_MANY_WRITE_OPERATIONS;
        }
        else
        {
          localObject = WriteError.OTHER;
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
    
    public void a(WriteError paramWriteError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (WriteError.1.a[paramWriteError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 7: 
        paramJsonGenerator.writeString("too_many_write_operations");
        return;
      case 6: 
        paramJsonGenerator.writeString("team_folder");
        return;
      case 5: 
        paramJsonGenerator.writeString("disallowed_name");
        return;
      case 4: 
        paramJsonGenerator.writeString("insufficient_space");
        return;
      case 3: 
        paramJsonGenerator.writeString("no_write_permission");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("conflict", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("conflict");
        WriteConflictError.a.a.a(WriteError.b(paramWriteError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("malformed_path", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("malformed_path");
      StoneSerializers.nullable(StoneSerializers.string()).serialize(WriteError.a(paramWriteError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
