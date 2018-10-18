package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class SaveUrlJobStatus
{
  public static final SaveUrlJobStatus IN_PROGRESS = new SaveUrlJobStatus().a(Tag.IN_PROGRESS);
  private Tag a;
  private FileMetadata b;
  private SaveUrlError c;
  
  private SaveUrlJobStatus() {}
  
  private SaveUrlJobStatus a(Tag paramTag)
  {
    SaveUrlJobStatus localSaveUrlJobStatus = new SaveUrlJobStatus();
    a = paramTag;
    return localSaveUrlJobStatus;
  }
  
  private SaveUrlJobStatus a(Tag paramTag, FileMetadata paramFileMetadata)
  {
    SaveUrlJobStatus localSaveUrlJobStatus = new SaveUrlJobStatus();
    a = paramTag;
    b = paramFileMetadata;
    return localSaveUrlJobStatus;
  }
  
  private SaveUrlJobStatus a(Tag paramTag, SaveUrlError paramSaveUrlError)
  {
    SaveUrlJobStatus localSaveUrlJobStatus = new SaveUrlJobStatus();
    a = paramTag;
    c = paramSaveUrlError;
    return localSaveUrlJobStatus;
  }
  
  public static SaveUrlJobStatus complete(FileMetadata paramFileMetadata)
  {
    if (paramFileMetadata != null) {
      return new SaveUrlJobStatus().a(Tag.COMPLETE, paramFileMetadata);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static SaveUrlJobStatus failed(SaveUrlError paramSaveUrlError)
  {
    if (paramSaveUrlError != null) {
      return new SaveUrlJobStatus().a(Tag.FAILED, paramSaveUrlError);
    }
    throw new IllegalArgumentException("Value is null");
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
    if ((paramObject instanceof SaveUrlJobStatus))
    {
      paramObject = (SaveUrlJobStatus)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 3: 
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 2: 
        bool1 = bool2;
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      }
      return true;
    }
    return false;
  }
  
  public FileMetadata getCompleteValue()
  {
    if (a == Tag.COMPLETE) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.COMPLETE, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public SaveUrlError getFailedValue()
  {
    if (a == Tag.FAILED) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.FAILED, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, b, c });
    return super.hashCode() * 31 + i;
  }
  
  public boolean isComplete()
  {
    return a == Tag.COMPLETE;
  }
  
  public boolean isFailed()
  {
    return a == Tag.FAILED;
  }
  
  public boolean isInProgress()
  {
    return a == Tag.IN_PROGRESS;
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
    extends UnionSerializer<SaveUrlJobStatus>
  {
    public static final a a = new a();
    
    a() {}
    
    public SaveUrlJobStatus a(JsonParser paramJsonParser)
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
        if ("in_progress".equals(localObject))
        {
          localObject = SaveUrlJobStatus.IN_PROGRESS;
        }
        else if ("complete".equals(localObject))
        {
          localObject = SaveUrlJobStatus.complete(FileMetadata.a.a.a(paramJsonParser, true));
        }
        else
        {
          if (!"failed".equals(localObject)) {
            break label120;
          }
          expectField("failed", paramJsonParser);
          localObject = SaveUrlJobStatus.failed(SaveUrlError.a.a.a(paramJsonParser));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label120:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(SaveUrlJobStatus paramSaveUrlJobStatus, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SaveUrlJobStatus.1.a[paramSaveUrlJobStatus.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramSaveUrlJobStatus.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("failed", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("failed");
        SaveUrlError.a.a.a(SaveUrlJobStatus.b(paramSaveUrlJobStatus), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("complete", paramJsonGenerator);
        FileMetadata.a.a.a(SaveUrlJobStatus.a(paramSaveUrlJobStatus), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeString("in_progress");
    }
  }
}
