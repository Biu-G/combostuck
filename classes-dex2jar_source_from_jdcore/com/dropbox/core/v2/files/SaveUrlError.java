package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class SaveUrlError
{
  public static final SaveUrlError DOWNLOAD_FAILED = new SaveUrlError().a(Tag.DOWNLOAD_FAILED);
  public static final SaveUrlError INVALID_URL = new SaveUrlError().a(Tag.INVALID_URL);
  public static final SaveUrlError NOT_FOUND = new SaveUrlError().a(Tag.NOT_FOUND);
  public static final SaveUrlError OTHER = new SaveUrlError().a(Tag.OTHER);
  private Tag a;
  private WriteError b;
  
  private SaveUrlError() {}
  
  private SaveUrlError a(Tag paramTag)
  {
    SaveUrlError localSaveUrlError = new SaveUrlError();
    a = paramTag;
    return localSaveUrlError;
  }
  
  private SaveUrlError a(Tag paramTag, WriteError paramWriteError)
  {
    SaveUrlError localSaveUrlError = new SaveUrlError();
    a = paramTag;
    b = paramWriteError;
    return localSaveUrlError;
  }
  
  public static SaveUrlError path(WriteError paramWriteError)
  {
    if (paramWriteError != null) {
      return new SaveUrlError().a(Tag.PATH, paramWriteError);
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
    if ((paramObject instanceof SaveUrlError))
    {
      paramObject = (SaveUrlError)paramObject;
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
  
  public WriteError getPathValue()
  {
    if (a == Tag.PATH) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.PATH, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isDownloadFailed()
  {
    return a == Tag.DOWNLOAD_FAILED;
  }
  
  public boolean isInvalidUrl()
  {
    return a == Tag.INVALID_URL;
  }
  
  public boolean isNotFound()
  {
    return a == Tag.NOT_FOUND;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isPath()
  {
    return a == Tag.PATH;
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
    extends UnionSerializer<SaveUrlError>
  {
    public static final a a = new a();
    
    a() {}
    
    public SaveUrlError a(JsonParser paramJsonParser)
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
        if ("path".equals(localObject))
        {
          expectField("path", paramJsonParser);
          localObject = SaveUrlError.path(WriteError.a.a.a(paramJsonParser));
        }
        else if ("download_failed".equals(localObject))
        {
          localObject = SaveUrlError.DOWNLOAD_FAILED;
        }
        else if ("invalid_url".equals(localObject))
        {
          localObject = SaveUrlError.INVALID_URL;
        }
        else if ("not_found".equals(localObject))
        {
          localObject = SaveUrlError.NOT_FOUND;
        }
        else
        {
          localObject = SaveUrlError.OTHER;
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
    
    public void a(SaveUrlError paramSaveUrlError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SaveUrlError.1.a[paramSaveUrlError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 4: 
        paramJsonGenerator.writeString("not_found");
        return;
      case 3: 
        paramJsonGenerator.writeString("invalid_url");
        return;
      case 2: 
        paramJsonGenerator.writeString("download_failed");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("path", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path");
      WriteError.a.a.a(SaveUrlError.a(paramSaveUrlError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
