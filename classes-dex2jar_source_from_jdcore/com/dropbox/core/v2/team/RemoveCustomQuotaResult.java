package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class RemoveCustomQuotaResult
{
  public static final RemoveCustomQuotaResult OTHER = new RemoveCustomQuotaResult().a(Tag.OTHER);
  private Tag a;
  private UserSelectorArg b;
  private UserSelectorArg c;
  
  private RemoveCustomQuotaResult() {}
  
  private RemoveCustomQuotaResult a(Tag paramTag)
  {
    RemoveCustomQuotaResult localRemoveCustomQuotaResult = new RemoveCustomQuotaResult();
    a = paramTag;
    return localRemoveCustomQuotaResult;
  }
  
  private RemoveCustomQuotaResult a(Tag paramTag, UserSelectorArg paramUserSelectorArg)
  {
    RemoveCustomQuotaResult localRemoveCustomQuotaResult = new RemoveCustomQuotaResult();
    a = paramTag;
    b = paramUserSelectorArg;
    return localRemoveCustomQuotaResult;
  }
  
  private RemoveCustomQuotaResult b(Tag paramTag, UserSelectorArg paramUserSelectorArg)
  {
    RemoveCustomQuotaResult localRemoveCustomQuotaResult = new RemoveCustomQuotaResult();
    a = paramTag;
    c = paramUserSelectorArg;
    return localRemoveCustomQuotaResult;
  }
  
  public static RemoveCustomQuotaResult invalidUser(UserSelectorArg paramUserSelectorArg)
  {
    if (paramUserSelectorArg != null) {
      return new RemoveCustomQuotaResult().b(Tag.INVALID_USER, paramUserSelectorArg);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static RemoveCustomQuotaResult success(UserSelectorArg paramUserSelectorArg)
  {
    if (paramUserSelectorArg != null) {
      return new RemoveCustomQuotaResult().a(Tag.SUCCESS, paramUserSelectorArg);
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
    if ((paramObject instanceof RemoveCustomQuotaResult))
    {
      paramObject = (RemoveCustomQuotaResult)paramObject;
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
  
  public UserSelectorArg getSuccessValue()
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
    extends UnionSerializer<RemoveCustomQuotaResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public RemoveCustomQuotaResult a(JsonParser paramJsonParser)
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
          expectField("success", paramJsonParser);
          localObject = RemoveCustomQuotaResult.success(UserSelectorArg.a.a.a(paramJsonParser));
        }
        else if ("invalid_user".equals(localObject))
        {
          expectField("invalid_user", paramJsonParser);
          localObject = RemoveCustomQuotaResult.invalidUser(UserSelectorArg.a.a.a(paramJsonParser));
        }
        else
        {
          localObject = RemoveCustomQuotaResult.OTHER;
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
    
    public void a(RemoveCustomQuotaResult paramRemoveCustomQuotaResult, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (RemoveCustomQuotaResult.1.a[paramRemoveCustomQuotaResult.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("invalid_user", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("invalid_user");
        UserSelectorArg.a.a.a(RemoveCustomQuotaResult.b(paramRemoveCustomQuotaResult), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("success", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("success");
      UserSelectorArg.a.a.a(RemoveCustomQuotaResult.a(paramRemoveCustomQuotaResult), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
