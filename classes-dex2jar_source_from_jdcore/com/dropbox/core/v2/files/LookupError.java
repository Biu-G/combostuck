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

public final class LookupError
{
  public static final LookupError NOT_FILE;
  public static final LookupError NOT_FOLDER;
  public static final LookupError NOT_FOUND = new LookupError().a(Tag.NOT_FOUND);
  public static final LookupError OTHER = new LookupError().a(Tag.OTHER);
  public static final LookupError RESTRICTED_CONTENT;
  private Tag a;
  private String b;
  
  static
  {
    NOT_FILE = new LookupError().a(Tag.NOT_FILE);
    NOT_FOLDER = new LookupError().a(Tag.NOT_FOLDER);
    RESTRICTED_CONTENT = new LookupError().a(Tag.RESTRICTED_CONTENT);
  }
  
  private LookupError() {}
  
  private LookupError a(Tag paramTag)
  {
    LookupError localLookupError = new LookupError();
    a = paramTag;
    return localLookupError;
  }
  
  private LookupError a(Tag paramTag, String paramString)
  {
    LookupError localLookupError = new LookupError();
    a = paramTag;
    b = paramString;
    return localLookupError;
  }
  
  public static LookupError malformedPath()
  {
    return malformedPath(null);
  }
  
  public static LookupError malformedPath(String paramString)
  {
    return new LookupError().a(Tag.MALFORMED_PATH, paramString);
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
    if ((paramObject instanceof LookupError))
    {
      paramObject = (LookupError)paramObject;
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
        return true;
      case 2: 
        return true;
      }
      if (b != b)
      {
        if ((b != null) && (b.equals(b))) {
          return true;
        }
        bool = false;
      }
      return bool;
    }
    return false;
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
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isMalformedPath()
  {
    return a == Tag.MALFORMED_PATH;
  }
  
  public boolean isNotFile()
  {
    return a == Tag.NOT_FILE;
  }
  
  public boolean isNotFolder()
  {
    return a == Tag.NOT_FOLDER;
  }
  
  public boolean isNotFound()
  {
    return a == Tag.NOT_FOUND;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isRestrictedContent()
  {
    return a == Tag.RESTRICTED_CONTENT;
  }
  
  public Tag tag()
  {
    return a;
  }
  
  public String toString()
  {
    return Serializer.INSTANCE.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return Serializer.INSTANCE.serialize(this, true);
  }
  
  public static class Serializer
    extends UnionSerializer<LookupError>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public LookupError deserialize(JsonParser paramJsonParser)
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
            localObject = LookupError.malformedPath();
          } else {
            localObject = LookupError.malformedPath((String)localObject);
          }
        }
        else if ("not_found".equals(localObject))
        {
          localObject = LookupError.NOT_FOUND;
        }
        else if ("not_file".equals(localObject))
        {
          localObject = LookupError.NOT_FILE;
        }
        else if ("not_folder".equals(localObject))
        {
          localObject = LookupError.NOT_FOLDER;
        }
        else if ("restricted_content".equals(localObject))
        {
          localObject = LookupError.RESTRICTED_CONTENT;
        }
        else
        {
          localObject = LookupError.OTHER;
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
    
    public void serialize(LookupError paramLookupError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (LookupError.1.a[paramLookupError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 5: 
        paramJsonGenerator.writeString("restricted_content");
        return;
      case 4: 
        paramJsonGenerator.writeString("not_folder");
        return;
      case 3: 
        paramJsonGenerator.writeString("not_file");
        return;
      case 2: 
        paramJsonGenerator.writeString("not_found");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("malformed_path", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("malformed_path");
      StoneSerializers.nullable(StoneSerializers.string()).serialize(LookupError.a(paramLookupError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
  
  public static enum Tag
  {
    static
    {
      NOT_FILE = new Tag("NOT_FILE", 2);
      NOT_FOLDER = new Tag("NOT_FOLDER", 3);
      RESTRICTED_CONTENT = new Tag("RESTRICTED_CONTENT", 4);
    }
    
    private Tag() {}
  }
}
