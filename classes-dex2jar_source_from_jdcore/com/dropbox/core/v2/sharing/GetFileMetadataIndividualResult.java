package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class GetFileMetadataIndividualResult
{
  public static final GetFileMetadataIndividualResult OTHER = new GetFileMetadataIndividualResult().a(Tag.OTHER);
  private Tag a;
  private SharedFileMetadata b;
  private SharingFileAccessError c;
  
  private GetFileMetadataIndividualResult() {}
  
  private GetFileMetadataIndividualResult a(Tag paramTag)
  {
    GetFileMetadataIndividualResult localGetFileMetadataIndividualResult = new GetFileMetadataIndividualResult();
    a = paramTag;
    return localGetFileMetadataIndividualResult;
  }
  
  private GetFileMetadataIndividualResult a(Tag paramTag, SharedFileMetadata paramSharedFileMetadata)
  {
    GetFileMetadataIndividualResult localGetFileMetadataIndividualResult = new GetFileMetadataIndividualResult();
    a = paramTag;
    b = paramSharedFileMetadata;
    return localGetFileMetadataIndividualResult;
  }
  
  private GetFileMetadataIndividualResult a(Tag paramTag, SharingFileAccessError paramSharingFileAccessError)
  {
    GetFileMetadataIndividualResult localGetFileMetadataIndividualResult = new GetFileMetadataIndividualResult();
    a = paramTag;
    c = paramSharingFileAccessError;
    return localGetFileMetadataIndividualResult;
  }
  
  public static GetFileMetadataIndividualResult accessError(SharingFileAccessError paramSharingFileAccessError)
  {
    if (paramSharingFileAccessError != null) {
      return new GetFileMetadataIndividualResult().a(Tag.ACCESS_ERROR, paramSharingFileAccessError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static GetFileMetadataIndividualResult metadata(SharedFileMetadata paramSharedFileMetadata)
  {
    if (paramSharedFileMetadata != null) {
      return new GetFileMetadataIndividualResult().a(Tag.METADATA, paramSharedFileMetadata);
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
    if ((paramObject instanceof GetFileMetadataIndividualResult))
    {
      paramObject = (GetFileMetadataIndividualResult)paramObject;
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
  
  public SharingFileAccessError getAccessErrorValue()
  {
    if (a == Tag.ACCESS_ERROR) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ACCESS_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public SharedFileMetadata getMetadataValue()
  {
    if (a == Tag.METADATA) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.METADATA, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public boolean isAccessError()
  {
    return a == Tag.ACCESS_ERROR;
  }
  
  public boolean isMetadata()
  {
    return a == Tag.METADATA;
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
    extends UnionSerializer<GetFileMetadataIndividualResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public GetFileMetadataIndividualResult a(JsonParser paramJsonParser)
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
        if ("metadata".equals(localObject))
        {
          localObject = GetFileMetadataIndividualResult.metadata(SharedFileMetadata.a.a.a(paramJsonParser, true));
        }
        else if ("access_error".equals(localObject))
        {
          expectField("access_error", paramJsonParser);
          localObject = GetFileMetadataIndividualResult.accessError(SharingFileAccessError.a.a.a(paramJsonParser));
        }
        else
        {
          localObject = GetFileMetadataIndividualResult.OTHER;
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
    
    public void a(GetFileMetadataIndividualResult paramGetFileMetadataIndividualResult, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GetFileMetadataIndividualResult.1.a[paramGetFileMetadataIndividualResult.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("access_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("access_error");
        SharingFileAccessError.a.a.a(GetFileMetadataIndividualResult.b(paramGetFileMetadataIndividualResult), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("metadata", paramJsonGenerator);
      SharedFileMetadata.a.a.a(GetFileMetadataIndividualResult.a(paramGetFileMetadataIndividualResult), paramJsonGenerator, true);
      paramJsonGenerator.writeEndObject();
    }
  }
}
