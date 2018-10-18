package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class GetThumbnailBatchResultEntry
{
  public static final GetThumbnailBatchResultEntry OTHER = new GetThumbnailBatchResultEntry().a(Tag.OTHER);
  private Tag a;
  private GetThumbnailBatchResultData b;
  private ThumbnailError c;
  
  private GetThumbnailBatchResultEntry() {}
  
  private GetThumbnailBatchResultEntry a(Tag paramTag)
  {
    GetThumbnailBatchResultEntry localGetThumbnailBatchResultEntry = new GetThumbnailBatchResultEntry();
    a = paramTag;
    return localGetThumbnailBatchResultEntry;
  }
  
  private GetThumbnailBatchResultEntry a(Tag paramTag, GetThumbnailBatchResultData paramGetThumbnailBatchResultData)
  {
    GetThumbnailBatchResultEntry localGetThumbnailBatchResultEntry = new GetThumbnailBatchResultEntry();
    a = paramTag;
    b = paramGetThumbnailBatchResultData;
    return localGetThumbnailBatchResultEntry;
  }
  
  private GetThumbnailBatchResultEntry a(Tag paramTag, ThumbnailError paramThumbnailError)
  {
    GetThumbnailBatchResultEntry localGetThumbnailBatchResultEntry = new GetThumbnailBatchResultEntry();
    a = paramTag;
    c = paramThumbnailError;
    return localGetThumbnailBatchResultEntry;
  }
  
  public static GetThumbnailBatchResultEntry failure(ThumbnailError paramThumbnailError)
  {
    if (paramThumbnailError != null) {
      return new GetThumbnailBatchResultEntry().a(Tag.FAILURE, paramThumbnailError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static GetThumbnailBatchResultEntry success(GetThumbnailBatchResultData paramGetThumbnailBatchResultData)
  {
    if (paramGetThumbnailBatchResultData != null) {
      return new GetThumbnailBatchResultEntry().a(Tag.SUCCESS, paramGetThumbnailBatchResultData);
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
    if ((paramObject instanceof GetThumbnailBatchResultEntry))
    {
      paramObject = (GetThumbnailBatchResultEntry)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
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
        if (b.equals(b)) {
          return true;
        }
        bool1 = false;
      }
      return bool1;
    }
    return false;
  }
  
  public ThumbnailError getFailureValue()
  {
    if (a == Tag.FAILURE) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.FAILURE, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public GetThumbnailBatchResultData getSuccessValue()
  {
    if (a == Tag.SUCCESS) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.SUCCESS, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public boolean isFailure()
  {
    return a == Tag.FAILURE;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isSuccess()
  {
    return a == Tag.SUCCESS;
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
    extends UnionSerializer<GetThumbnailBatchResultEntry>
  {
    public static final a a = new a();
    
    a() {}
    
    public GetThumbnailBatchResultEntry a(JsonParser paramJsonParser)
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
        if ("success".equals(localObject))
        {
          localObject = GetThumbnailBatchResultEntry.success(GetThumbnailBatchResultData.a.a.a(paramJsonParser, true));
        }
        else if ("failure".equals(localObject))
        {
          expectField("failure", paramJsonParser);
          localObject = GetThumbnailBatchResultEntry.failure(ThumbnailError.a.a.a(paramJsonParser));
        }
        else
        {
          localObject = GetThumbnailBatchResultEntry.OTHER;
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
    
    public void a(GetThumbnailBatchResultEntry paramGetThumbnailBatchResultEntry, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GetThumbnailBatchResultEntry.1.a[paramGetThumbnailBatchResultEntry.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("failure", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("failure");
        ThumbnailError.a.a.a(GetThumbnailBatchResultEntry.b(paramGetThumbnailBatchResultEntry), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("success", paramJsonGenerator);
      GetThumbnailBatchResultData.a.a.a(GetThumbnailBatchResultEntry.a(paramGetThumbnailBatchResultEntry), paramJsonGenerator, true);
      paramJsonGenerator.writeEndObject();
    }
  }
}
