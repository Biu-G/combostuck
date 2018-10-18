package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class RemoveMemberJobStatus
{
  public static final RemoveMemberJobStatus IN_PROGRESS = new RemoveMemberJobStatus().a(Tag.IN_PROGRESS);
  private Tag a;
  private MemberAccessLevelResult b;
  private RemoveFolderMemberError c;
  
  private RemoveMemberJobStatus() {}
  
  private RemoveMemberJobStatus a(Tag paramTag)
  {
    RemoveMemberJobStatus localRemoveMemberJobStatus = new RemoveMemberJobStatus();
    a = paramTag;
    return localRemoveMemberJobStatus;
  }
  
  private RemoveMemberJobStatus a(Tag paramTag, MemberAccessLevelResult paramMemberAccessLevelResult)
  {
    RemoveMemberJobStatus localRemoveMemberJobStatus = new RemoveMemberJobStatus();
    a = paramTag;
    b = paramMemberAccessLevelResult;
    return localRemoveMemberJobStatus;
  }
  
  private RemoveMemberJobStatus a(Tag paramTag, RemoveFolderMemberError paramRemoveFolderMemberError)
  {
    RemoveMemberJobStatus localRemoveMemberJobStatus = new RemoveMemberJobStatus();
    a = paramTag;
    c = paramRemoveFolderMemberError;
    return localRemoveMemberJobStatus;
  }
  
  public static RemoveMemberJobStatus complete(MemberAccessLevelResult paramMemberAccessLevelResult)
  {
    if (paramMemberAccessLevelResult != null) {
      return new RemoveMemberJobStatus().a(Tag.COMPLETE, paramMemberAccessLevelResult);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static RemoveMemberJobStatus failed(RemoveFolderMemberError paramRemoveFolderMemberError)
  {
    if (paramRemoveFolderMemberError != null) {
      return new RemoveMemberJobStatus().a(Tag.FAILED, paramRemoveFolderMemberError);
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
    if ((paramObject instanceof RemoveMemberJobStatus))
    {
      paramObject = (RemoveMemberJobStatus)paramObject;
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
  
  public MemberAccessLevelResult getCompleteValue()
  {
    if (a == Tag.COMPLETE) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.COMPLETE, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public RemoveFolderMemberError getFailedValue()
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
    extends UnionSerializer<RemoveMemberJobStatus>
  {
    public static final a a = new a();
    
    a() {}
    
    public RemoveMemberJobStatus a(JsonParser paramJsonParser)
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
          localObject = RemoveMemberJobStatus.IN_PROGRESS;
        }
        else if ("complete".equals(localObject))
        {
          localObject = RemoveMemberJobStatus.complete(MemberAccessLevelResult.a.a.a(paramJsonParser, true));
        }
        else
        {
          if (!"failed".equals(localObject)) {
            break label120;
          }
          expectField("failed", paramJsonParser);
          localObject = RemoveMemberJobStatus.failed(RemoveFolderMemberError.a.a.a(paramJsonParser));
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
    
    public void a(RemoveMemberJobStatus paramRemoveMemberJobStatus, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (RemoveMemberJobStatus.1.a[paramRemoveMemberJobStatus.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramRemoveMemberJobStatus.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("failed", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("failed");
        RemoveFolderMemberError.a.a.a(RemoveMemberJobStatus.b(paramRemoveMemberJobStatus), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("complete", paramJsonGenerator);
        MemberAccessLevelResult.a.a.a(RemoveMemberJobStatus.a(paramRemoveMemberJobStatus), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeString("in_progress");
    }
  }
}
