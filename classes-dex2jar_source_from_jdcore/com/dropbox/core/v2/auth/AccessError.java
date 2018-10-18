package com.dropbox.core.v2.auth;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class AccessError
{
  public static final AccessError OTHER = new AccessError().a(Tag.OTHER);
  private Tag a;
  private InvalidAccountTypeError b;
  private PaperAccessError c;
  
  private AccessError() {}
  
  private AccessError a(Tag paramTag)
  {
    AccessError localAccessError = new AccessError();
    a = paramTag;
    return localAccessError;
  }
  
  private AccessError a(Tag paramTag, InvalidAccountTypeError paramInvalidAccountTypeError)
  {
    AccessError localAccessError = new AccessError();
    a = paramTag;
    b = paramInvalidAccountTypeError;
    return localAccessError;
  }
  
  private AccessError a(Tag paramTag, PaperAccessError paramPaperAccessError)
  {
    AccessError localAccessError = new AccessError();
    a = paramTag;
    c = paramPaperAccessError;
    return localAccessError;
  }
  
  public static AccessError invalidAccountType(InvalidAccountTypeError paramInvalidAccountTypeError)
  {
    if (paramInvalidAccountTypeError != null) {
      return new AccessError().a(Tag.INVALID_ACCOUNT_TYPE, paramInvalidAccountTypeError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static AccessError paperAccessDenied(PaperAccessError paramPaperAccessError)
  {
    if (paramPaperAccessError != null) {
      return new AccessError().a(Tag.PAPER_ACCESS_DENIED, paramPaperAccessError);
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
    if ((paramObject instanceof AccessError))
    {
      paramObject = (AccessError)paramObject;
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
  
  public InvalidAccountTypeError getInvalidAccountTypeValue()
  {
    if (a == Tag.INVALID_ACCOUNT_TYPE) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.INVALID_ACCOUNT_TYPE, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public PaperAccessError getPaperAccessDeniedValue()
  {
    if (a == Tag.PAPER_ACCESS_DENIED) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.PAPER_ACCESS_DENIED, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public boolean isInvalidAccountType()
  {
    return a == Tag.INVALID_ACCOUNT_TYPE;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isPaperAccessDenied()
  {
    return a == Tag.PAPER_ACCESS_DENIED;
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
    extends UnionSerializer<AccessError>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public AccessError deserialize(JsonParser paramJsonParser)
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
        if ("invalid_account_type".equals(localObject))
        {
          expectField("invalid_account_type", paramJsonParser);
          localObject = AccessError.invalidAccountType(InvalidAccountTypeError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else if ("paper_access_denied".equals(localObject))
        {
          expectField("paper_access_denied", paramJsonParser);
          localObject = AccessError.paperAccessDenied(PaperAccessError.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else
        {
          localObject = AccessError.OTHER;
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
    
    public void serialize(AccessError paramAccessError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (AccessError.1.a[paramAccessError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("paper_access_denied", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("paper_access_denied");
        PaperAccessError.Serializer.INSTANCE.serialize(AccessError.b(paramAccessError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("invalid_account_type", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("invalid_account_type");
      InvalidAccountTypeError.Serializer.INSTANCE.serialize(AccessError.a(paramAccessError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
  
  public static enum Tag
  {
    private Tag() {}
  }
}
