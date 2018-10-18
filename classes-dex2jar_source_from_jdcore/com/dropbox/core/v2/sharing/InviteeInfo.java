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
import java.util.regex.Pattern;

public final class InviteeInfo
{
  public static final InviteeInfo OTHER = new InviteeInfo().a(Tag.OTHER);
  private Tag a;
  private String b;
  
  private InviteeInfo() {}
  
  private InviteeInfo a(Tag paramTag)
  {
    InviteeInfo localInviteeInfo = new InviteeInfo();
    a = paramTag;
    return localInviteeInfo;
  }
  
  private InviteeInfo a(Tag paramTag, String paramString)
  {
    InviteeInfo localInviteeInfo = new InviteeInfo();
    a = paramTag;
    b = paramString;
    return localInviteeInfo;
  }
  
  public static InviteeInfo email(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() <= 255)
      {
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString)) {
          return new InviteeInfo().a(Tag.EMAIL, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is longer than 255");
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
    if ((paramObject instanceof InviteeInfo))
    {
      paramObject = (InviteeInfo)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
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
  
  public String getEmailValue()
  {
    if (a == Tag.EMAIL) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.EMAIL, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isEmail()
  {
    return a == Tag.EMAIL;
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
    return Serializer.INSTANCE.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return Serializer.INSTANCE.serialize(this, true);
  }
  
  public static class Serializer
    extends UnionSerializer<InviteeInfo>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public InviteeInfo deserialize(JsonParser paramJsonParser)
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
        if ("email".equals(localObject))
        {
          expectField("email", paramJsonParser);
          localObject = InviteeInfo.email((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else
        {
          localObject = InviteeInfo.OTHER;
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
    
    public void serialize(InviteeInfo paramInviteeInfo, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (InviteeInfo.1.a[paramInviteeInfo.tag().ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("email", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("email");
      StoneSerializers.string().serialize(InviteeInfo.a(paramInviteeInfo), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
  
  public static enum Tag
  {
    private Tag() {}
  }
}
