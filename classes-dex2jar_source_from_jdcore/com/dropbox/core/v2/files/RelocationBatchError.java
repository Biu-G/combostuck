package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class RelocationBatchError
{
  public static final RelocationBatchError CANT_COPY_SHARED_FOLDER = new RelocationBatchError().a(Tag.CANT_COPY_SHARED_FOLDER);
  public static final RelocationBatchError CANT_MOVE_FOLDER_INTO_ITSELF;
  public static final RelocationBatchError CANT_NEST_SHARED_FOLDER = new RelocationBatchError().a(Tag.CANT_NEST_SHARED_FOLDER);
  public static final RelocationBatchError CANT_TRANSFER_OWNERSHIP = new RelocationBatchError().a(Tag.CANT_TRANSFER_OWNERSHIP);
  public static final RelocationBatchError DUPLICATED_OR_NESTED_PATHS;
  public static final RelocationBatchError INSUFFICIENT_QUOTA = new RelocationBatchError().a(Tag.INSUFFICIENT_QUOTA);
  public static final RelocationBatchError OTHER = new RelocationBatchError().a(Tag.OTHER);
  public static final RelocationBatchError TOO_MANY_FILES;
  public static final RelocationBatchError TOO_MANY_WRITE_OPERATIONS = new RelocationBatchError().a(Tag.TOO_MANY_WRITE_OPERATIONS);
  private Tag a;
  private LookupError b;
  private WriteError c;
  private WriteError d;
  
  static
  {
    CANT_MOVE_FOLDER_INTO_ITSELF = new RelocationBatchError().a(Tag.CANT_MOVE_FOLDER_INTO_ITSELF);
    TOO_MANY_FILES = new RelocationBatchError().a(Tag.TOO_MANY_FILES);
    DUPLICATED_OR_NESTED_PATHS = new RelocationBatchError().a(Tag.DUPLICATED_OR_NESTED_PATHS);
  }
  
  private RelocationBatchError() {}
  
  private RelocationBatchError a(Tag paramTag)
  {
    RelocationBatchError localRelocationBatchError = new RelocationBatchError();
    a = paramTag;
    return localRelocationBatchError;
  }
  
  private RelocationBatchError a(Tag paramTag, LookupError paramLookupError)
  {
    RelocationBatchError localRelocationBatchError = new RelocationBatchError();
    a = paramTag;
    b = paramLookupError;
    return localRelocationBatchError;
  }
  
  private RelocationBatchError a(Tag paramTag, WriteError paramWriteError)
  {
    RelocationBatchError localRelocationBatchError = new RelocationBatchError();
    a = paramTag;
    c = paramWriteError;
    return localRelocationBatchError;
  }
  
  private RelocationBatchError b(Tag paramTag, WriteError paramWriteError)
  {
    RelocationBatchError localRelocationBatchError = new RelocationBatchError();
    a = paramTag;
    d = paramWriteError;
    return localRelocationBatchError;
  }
  
  public static RelocationBatchError fromLookup(LookupError paramLookupError)
  {
    if (paramLookupError != null) {
      return new RelocationBatchError().a(Tag.FROM_LOOKUP, paramLookupError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static RelocationBatchError fromWrite(WriteError paramWriteError)
  {
    if (paramWriteError != null) {
      return new RelocationBatchError().a(Tag.FROM_WRITE, paramWriteError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static RelocationBatchError to(WriteError paramWriteError)
  {
    if (paramWriteError != null) {
      return new RelocationBatchError().b(Tag.TO, paramWriteError);
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
    if ((paramObject instanceof RelocationBatchError))
    {
      paramObject = (RelocationBatchError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 12: 
        return true;
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
    int i = Arrays.hashCode(new Object[] { a, b, c, d });
    return super.hashCode() * 31 + i;
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
      CANT_COPY_SHARED_FOLDER = new Tag("CANT_COPY_SHARED_FOLDER", 3);
      CANT_NEST_SHARED_FOLDER = new Tag("CANT_NEST_SHARED_FOLDER", 4);
      CANT_MOVE_FOLDER_INTO_ITSELF = new Tag("CANT_MOVE_FOLDER_INTO_ITSELF", 5);
      TOO_MANY_FILES = new Tag("TOO_MANY_FILES", 6);
      DUPLICATED_OR_NESTED_PATHS = new Tag("DUPLICATED_OR_NESTED_PATHS", 7);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<RelocationBatchError>
  {
    public static final a a = new a();
    
    a() {}
    
    public RelocationBatchError a(JsonParser paramJsonParser)
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
          localObject = RelocationBatchError.fromLookup(LookupError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else if ("from_write".equals(localObject))
        {
          expectField("from_write", paramJsonParser);
          localObject = RelocationBatchError.fromWrite(WriteError.a.a.a(paramJsonParser));
        }
        else if ("to".equals(localObject))
        {
          expectField("to", paramJsonParser);
          localObject = RelocationBatchError.to(WriteError.a.a.a(paramJsonParser));
        }
        else if ("cant_copy_shared_folder".equals(localObject))
        {
          localObject = RelocationBatchError.CANT_COPY_SHARED_FOLDER;
        }
        else if ("cant_nest_shared_folder".equals(localObject))
        {
          localObject = RelocationBatchError.CANT_NEST_SHARED_FOLDER;
        }
        else if ("cant_move_folder_into_itself".equals(localObject))
        {
          localObject = RelocationBatchError.CANT_MOVE_FOLDER_INTO_ITSELF;
        }
        else if ("too_many_files".equals(localObject))
        {
          localObject = RelocationBatchError.TOO_MANY_FILES;
        }
        else if ("duplicated_or_nested_paths".equals(localObject))
        {
          localObject = RelocationBatchError.DUPLICATED_OR_NESTED_PATHS;
        }
        else if ("cant_transfer_ownership".equals(localObject))
        {
          localObject = RelocationBatchError.CANT_TRANSFER_OWNERSHIP;
        }
        else if ("insufficient_quota".equals(localObject))
        {
          localObject = RelocationBatchError.INSUFFICIENT_QUOTA;
        }
        else if ("other".equals(localObject))
        {
          localObject = RelocationBatchError.OTHER;
        }
        else
        {
          if (!"too_many_write_operations".equals(localObject)) {
            break label282;
          }
          localObject = RelocationBatchError.TOO_MANY_WRITE_OPERATIONS;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label282:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(RelocationBatchError paramRelocationBatchError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (RelocationBatchError.1.a[paramRelocationBatchError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramRelocationBatchError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 12: 
        paramJsonGenerator.writeString("too_many_write_operations");
        return;
      case 11: 
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
        WriteError.a.a.a(RelocationBatchError.c(paramRelocationBatchError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("from_write", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("from_write");
        WriteError.a.a.a(RelocationBatchError.b(paramRelocationBatchError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("from_lookup", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("from_lookup");
      LookupError.Serializer.INSTANCE.serialize(RelocationBatchError.a(paramRelocationBatchError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
