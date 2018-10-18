package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class RelocationError
{
  public static final RelocationError CANT_COPY_SHARED_FOLDER = new RelocationError().a(Tag.CANT_COPY_SHARED_FOLDER);
  public static final RelocationError CANT_MOVE_FOLDER_INTO_ITSELF;
  public static final RelocationError CANT_NEST_SHARED_FOLDER = new RelocationError().a(Tag.CANT_NEST_SHARED_FOLDER);
  public static final RelocationError CANT_TRANSFER_OWNERSHIP = new RelocationError().a(Tag.CANT_TRANSFER_OWNERSHIP);
  public static final RelocationError DUPLICATED_OR_NESTED_PATHS;
  public static final RelocationError INSUFFICIENT_QUOTA = new RelocationError().a(Tag.INSUFFICIENT_QUOTA);
  public static final RelocationError OTHER = new RelocationError().a(Tag.OTHER);
  public static final RelocationError TOO_MANY_FILES;
  private Tag a;
  private LookupError b;
  private WriteError c;
  private WriteError d;
  
  static
  {
    CANT_MOVE_FOLDER_INTO_ITSELF = new RelocationError().a(Tag.CANT_MOVE_FOLDER_INTO_ITSELF);
    TOO_MANY_FILES = new RelocationError().a(Tag.TOO_MANY_FILES);
    DUPLICATED_OR_NESTED_PATHS = new RelocationError().a(Tag.DUPLICATED_OR_NESTED_PATHS);
  }
  
  private RelocationError() {}
  
  private RelocationError a(Tag paramTag)
  {
    RelocationError localRelocationError = new RelocationError();
    a = paramTag;
    return localRelocationError;
  }
  
  private RelocationError a(Tag paramTag, LookupError paramLookupError)
  {
    RelocationError localRelocationError = new RelocationError();
    a = paramTag;
    b = paramLookupError;
    return localRelocationError;
  }
  
  private RelocationError a(Tag paramTag, WriteError paramWriteError)
  {
    RelocationError localRelocationError = new RelocationError();
    a = paramTag;
    c = paramWriteError;
    return localRelocationError;
  }
  
  private RelocationError b(Tag paramTag, WriteError paramWriteError)
  {
    RelocationError localRelocationError = new RelocationError();
    a = paramTag;
    d = paramWriteError;
    return localRelocationError;
  }
  
  public static RelocationError fromLookup(LookupError paramLookupError)
  {
    if (paramLookupError != null) {
      return new RelocationError().a(Tag.FROM_LOOKUP, paramLookupError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static RelocationError fromWrite(WriteError paramWriteError)
  {
    if (paramWriteError != null) {
      return new RelocationError().a(Tag.FROM_WRITE, paramWriteError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static RelocationError to(WriteError paramWriteError)
  {
    if (paramWriteError != null) {
      return new RelocationError().b(Tag.TO, paramWriteError);
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
    if ((paramObject instanceof RelocationError))
    {
      paramObject = (RelocationError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 11: 
        return true;
      case 10: 
        return true;
      case 9: 
        return true;
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
  
  public LookupError getFromLookupValue()
  {
    if (a == Tag.FROM_LOOKUP) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.FROM_LOOKUP, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public WriteError getFromWriteValue()
  {
    if (a == Tag.FROM_WRITE) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.FROM_WRITE, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public WriteError getToValue()
  {
    if (a == Tag.TO) {
      return d;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.TO, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c, d });
  }
  
  public boolean isCantCopySharedFolder()
  {
    return a == Tag.CANT_COPY_SHARED_FOLDER;
  }
  
  public boolean isCantMoveFolderIntoItself()
  {
    return a == Tag.CANT_MOVE_FOLDER_INTO_ITSELF;
  }
  
  public boolean isCantNestSharedFolder()
  {
    return a == Tag.CANT_NEST_SHARED_FOLDER;
  }
  
  public boolean isCantTransferOwnership()
  {
    return a == Tag.CANT_TRANSFER_OWNERSHIP;
  }
  
  public boolean isDuplicatedOrNestedPaths()
  {
    return a == Tag.DUPLICATED_OR_NESTED_PATHS;
  }
  
  public boolean isFromLookup()
  {
    return a == Tag.FROM_LOOKUP;
  }
  
  public boolean isFromWrite()
  {
    return a == Tag.FROM_WRITE;
  }
  
  public boolean isInsufficientQuota()
  {
    return a == Tag.INSUFFICIENT_QUOTA;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isTo()
  {
    return a == Tag.TO;
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
      CANT_COPY_SHARED_FOLDER = new Tag("CANT_COPY_SHARED_FOLDER", 3);
      CANT_NEST_SHARED_FOLDER = new Tag("CANT_NEST_SHARED_FOLDER", 4);
      CANT_MOVE_FOLDER_INTO_ITSELF = new Tag("CANT_MOVE_FOLDER_INTO_ITSELF", 5);
      TOO_MANY_FILES = new Tag("TOO_MANY_FILES", 6);
      DUPLICATED_OR_NESTED_PATHS = new Tag("DUPLICATED_OR_NESTED_PATHS", 7);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<RelocationError>
  {
    public static final a a = new a();
    
    a() {}
    
    public RelocationError a(JsonParser paramJsonParser)
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
        if ("from_lookup".equals(localObject))
        {
          expectField("from_lookup", paramJsonParser);
          localObject = RelocationError.fromLookup(LookupError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else if ("from_write".equals(localObject))
        {
          expectField("from_write", paramJsonParser);
          localObject = RelocationError.fromWrite(WriteError.a.a.a(paramJsonParser));
        }
        else if ("to".equals(localObject))
        {
          expectField("to", paramJsonParser);
          localObject = RelocationError.to(WriteError.a.a.a(paramJsonParser));
        }
        else if ("cant_copy_shared_folder".equals(localObject))
        {
          localObject = RelocationError.CANT_COPY_SHARED_FOLDER;
        }
        else if ("cant_nest_shared_folder".equals(localObject))
        {
          localObject = RelocationError.CANT_NEST_SHARED_FOLDER;
        }
        else if ("cant_move_folder_into_itself".equals(localObject))
        {
          localObject = RelocationError.CANT_MOVE_FOLDER_INTO_ITSELF;
        }
        else if ("too_many_files".equals(localObject))
        {
          localObject = RelocationError.TOO_MANY_FILES;
        }
        else if ("duplicated_or_nested_paths".equals(localObject))
        {
          localObject = RelocationError.DUPLICATED_OR_NESTED_PATHS;
        }
        else if ("cant_transfer_ownership".equals(localObject))
        {
          localObject = RelocationError.CANT_TRANSFER_OWNERSHIP;
        }
        else if ("insufficient_quota".equals(localObject))
        {
          localObject = RelocationError.INSUFFICIENT_QUOTA;
        }
        else
        {
          localObject = RelocationError.OTHER;
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
    
    public void a(RelocationError paramRelocationError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (RelocationError.1.a[paramRelocationError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 10: 
        paramJsonGenerator.writeString("insufficient_quota");
        return;
      case 9: 
        paramJsonGenerator.writeString("cant_transfer_ownership");
        return;
      case 8: 
        paramJsonGenerator.writeString("duplicated_or_nested_paths");
        return;
      case 7: 
        paramJsonGenerator.writeString("too_many_files");
        return;
      case 6: 
        paramJsonGenerator.writeString("cant_move_folder_into_itself");
        return;
      case 5: 
        paramJsonGenerator.writeString("cant_nest_shared_folder");
        return;
      case 4: 
        paramJsonGenerator.writeString("cant_copy_shared_folder");
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("to", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("to");
        WriteError.a.a.a(RelocationError.c(paramRelocationError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("from_write", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("from_write");
        WriteError.a.a.a(RelocationError.b(paramRelocationError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("from_lookup", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("from_lookup");
      LookupError.Serializer.INSTANCE.serialize(RelocationError.a(paramRelocationError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
