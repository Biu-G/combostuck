package com.dropbox.core.v2.sharing;

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

public final class FileMemberActionIndividualResult
{
  private Tag a;
  private AccessLevel b;
  private FileMemberActionError c;
  
  private FileMemberActionIndividualResult() {}
  
  private FileMemberActionIndividualResult a(Tag paramTag, AccessLevel paramAccessLevel)
  {
    FileMemberActionIndividualResult localFileMemberActionIndividualResult = new FileMemberActionIndividualResult();
    a = paramTag;
    b = paramAccessLevel;
    return localFileMemberActionIndividualResult;
  }
  
  private FileMemberActionIndividualResult a(Tag paramTag, FileMemberActionError paramFileMemberActionError)
  {
    FileMemberActionIndividualResult localFileMemberActionIndividualResult = new FileMemberActionIndividualResult();
    a = paramTag;
    c = paramFileMemberActionError;
    return localFileMemberActionIndividualResult;
  }
  
  public static FileMemberActionIndividualResult memberError(FileMemberActionError paramFileMemberActionError)
  {
    if (paramFileMemberActionError != null) {
      return new FileMemberActionIndividualResult().a(Tag.MEMBER_ERROR, paramFileMemberActionError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static FileMemberActionIndividualResult success()
  {
    return success(null);
  }
  
  public static FileMemberActionIndividualResult success(AccessLevel paramAccessLevel)
  {
    return new FileMemberActionIndividualResult().a(Tag.SUCCESS, paramAccessLevel);
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
    if ((paramObject instanceof FileMemberActionIndividualResult))
    {
      paramObject = (FileMemberActionIndividualResult)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
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
  
  public AccessLevel getSuccessValue()
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
    extends UnionSerializer<FileMemberActionIndividualResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public FileMemberActionIndividualResult a(JsonParser paramJsonParser)
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
        if ("success".equals(localObject))
        {
          localObject = null;
          if (paramJsonParser.getCurrentToken() != JsonToken.END_OBJECT)
          {
            expectField("success", paramJsonParser);
            localObject = (AccessLevel)StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(paramJsonParser);
          }
          if (localObject == null) {
            localObject = FileMemberActionIndividualResult.success();
          } else {
            localObject = FileMemberActionIndividualResult.success((AccessLevel)localObject);
          }
        }
        else
        {
          if (!"member_error".equals(localObject)) {
            break label140;
          }
          expectField("member_error", paramJsonParser);
          localObject = FileMemberActionIndividualResult.memberError(FileMemberActionError.a.a.a(paramJsonParser));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label140:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(FileMemberActionIndividualResult paramFileMemberActionIndividualResult, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (FileMemberActionIndividualResult.1.a[paramFileMemberActionIndividualResult.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramFileMemberActionIndividualResult.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("member_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("member_error");
        FileMemberActionError.a.a.a(FileMemberActionIndividualResult.b(paramFileMemberActionIndividualResult), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("success", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("success");
      StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize(FileMemberActionIndividualResult.a(paramFileMemberActionIndividualResult), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
