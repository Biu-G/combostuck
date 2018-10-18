package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class CustomQuotaResult
{
  public static final CustomQuotaResult OTHER = new CustomQuotaResult().a(Tag.OTHER);
  private Tag a;
  private UserCustomQuotaResult b;
  private UserSelectorArg c;
  
  private CustomQuotaResult() {}
  
  private CustomQuotaResult a(Tag paramTag)
  {
    CustomQuotaResult localCustomQuotaResult = new CustomQuotaResult();
    a = paramTag;
    return localCustomQuotaResult;
  }
  
  private CustomQuotaResult a(Tag paramTag, UserCustomQuotaResult paramUserCustomQuotaResult)
  {
    CustomQuotaResult localCustomQuotaResult = new CustomQuotaResult();
    a = paramTag;
    b = paramUserCustomQuotaResult;
    return localCustomQuotaResult;
  }
  
  private CustomQuotaResult a(Tag paramTag, UserSelectorArg paramUserSelectorArg)
  {
    CustomQuotaResult localCustomQuotaResult = new CustomQuotaResult();
    a = paramTag;
    c = paramUserSelectorArg;
    return localCustomQuotaResult;
  }
  
  public static CustomQuotaResult invalidUser(UserSelectorArg paramUserSelectorArg)
  {
    if (paramUserSelectorArg != null) {
      return new CustomQuotaResult().a(Tag.INVALID_USER, paramUserSelectorArg);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static CustomQuotaResult success(UserCustomQuotaResult paramUserCustomQuotaResult)
  {
    if (paramUserCustomQuotaResult != null) {
      return new CustomQuotaResult().a(Tag.SUCCESS, paramUserCustomQuotaResult);
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
    if ((paramObject instanceof CustomQuotaResult))
    {
      paramObject = (CustomQuotaResult)paramObject;
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
  
  public UserSelectorArg getInvalidUserValue()
  {
    if (a == Tag.INVALID_USER) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.INVALID_USER, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public UserCustomQuotaResult getSuccessValue()
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
  
  public boolean isInvalidUser()
  {
    return a == Tag.INVALID_USER;
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
    extends UnionSerializer<CustomQuotaResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public CustomQuotaResult a(JsonParser paramJsonParser)
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
          localObject = CustomQuotaResult.success(UserCustomQuotaResult.a.a.a(paramJsonParser, true));
        }
        else if ("invalid_user".equals(localObject))
        {
          expectField("invalid_user", paramJsonParser);
          localObject = CustomQuotaResult.invalidUser(UserSelectorArg.a.a.a(paramJsonParser));
        }
        else
        {
          localObject = CustomQuotaResult.OTHER;
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
    
    public void a(CustomQuotaResult paramCustomQuotaResult, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (CustomQuotaResult.1.a[paramCustomQuotaResult.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("invalid_user", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("invalid_user");
        UserSelectorArg.a.a.a(CustomQuotaResult.b(paramCustomQuotaResult), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("success", paramJsonGenerator);
      UserCustomQuotaResult.a.a.a(CustomQuotaResult.a(paramCustomQuotaResult), paramJsonGenerator, true);
      paramJsonGenerator.writeEndObject();
    }
  }
}
