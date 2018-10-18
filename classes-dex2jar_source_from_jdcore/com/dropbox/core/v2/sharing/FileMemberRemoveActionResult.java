package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class FileMemberRemoveActionResult
{
  public static final FileMemberRemoveActionResult OTHER = new FileMemberRemoveActionResult().a(Tag.OTHER);
  private Tag a;
  private MemberAccessLevelResult b;
  private FileMemberActionError c;
  
  private FileMemberRemoveActionResult() {}
  
  private FileMemberRemoveActionResult a(Tag paramTag)
  {
    FileMemberRemoveActionResult localFileMemberRemoveActionResult = new FileMemberRemoveActionResult();
    a = paramTag;
    return localFileMemberRemoveActionResult;
  }
  
  private FileMemberRemoveActionResult a(Tag paramTag, FileMemberActionError paramFileMemberActionError)
  {
    FileMemberRemoveActionResult localFileMemberRemoveActionResult = new FileMemberRemoveActionResult();
    a = paramTag;
    c = paramFileMemberActionError;
    return localFileMemberRemoveActionResult;
  }
  
  private FileMemberRemoveActionResult a(Tag paramTag, MemberAccessLevelResult paramMemberAccessLevelResult)
  {
    FileMemberRemoveActionResult localFileMemberRemoveActionResult = new FileMemberRemoveActionResult();
    a = paramTag;
    b = paramMemberAccessLevelResult;
    return localFileMemberRemoveActionResult;
  }
  
  public static FileMemberRemoveActionResult memberError(FileMemberActionError paramFileMemberActionError)
  {
    if (paramFileMemberActionError != null) {
      return new FileMemberRemoveActionResult().a(Tag.MEMBER_ERROR, paramFileMemberActionError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static FileMemberRemoveActionResult success(MemberAccessLevelResult paramMemberAccessLevelResult)
  {
    if (paramMemberAccessLevelResult != null) {
      return new FileMemberRemoveActionResult().a(Tag.SUCCESS, paramMemberAccessLevelResult);
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
    if ((paramObject instanceof FileMemberRemoveActionResult))
    {
      paramObject = (FileMemberRemoveActionResult)paramObject;
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
  
  public FileMemberActionError getMemberErrorValue()
  {
    if (a == Tag.MEMBER_ERROR) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.MEMBER_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public MemberAccessLevelResult getSuccessValue()
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
  
  public boolean isMemberError()
  {
    return a == Tag.MEMBER_ERROR;
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
    extends UnionSerializer<FileMemberRemoveActionResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public FileMemberRemoveActionResult a(JsonParser paramJsonParser)
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
          localObject = FileMemberRemoveActionResult.success(MemberAccessLevelResult.a.a.a(paramJsonParser, true));
        }
        else if ("member_error".equals(localObject))
        {
          expectField("member_error", paramJsonParser);
          localObject = FileMemberRemoveActionResult.memberError(FileMemberActionError.a.a.a(paramJsonParser));
        }
        else
        {
          localObject = FileMemberRemoveActionResult.OTHER;
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
    
    public void a(FileMemberRemoveActionResult paramFileMemberRemoveActionResult, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (FileMemberRemoveActionResult.1.a[paramFileMemberRemoveActionResult.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("member_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("member_error");
        FileMemberActionError.a.a.a(FileMemberRemoveActionResult.b(paramFileMemberRemoveActionResult), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("success", paramJsonGenerator);
      MemberAccessLevelResult.a.a.a(FileMemberRemoveActionResult.a(paramFileMemberRemoveActionResult), paramJsonGenerator, true);
      paramJsonGenerator.writeEndObject();
    }
  }
}
