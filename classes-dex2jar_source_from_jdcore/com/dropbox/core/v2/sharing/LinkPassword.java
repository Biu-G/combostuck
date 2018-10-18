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

public final class LinkPassword
{
  public static final LinkPassword OTHER = new LinkPassword().a(Tag.OTHER);
  public static final LinkPassword REMOVE_PASSWORD = new LinkPassword().a(Tag.REMOVE_PASSWORD);
  private Tag a;
  private String b;
  
  private LinkPassword() {}
  
  private LinkPassword a(Tag paramTag)
  {
    LinkPassword localLinkPassword = new LinkPassword();
    a = paramTag;
    return localLinkPassword;
  }
  
  private LinkPassword a(Tag paramTag, String paramString)
  {
    LinkPassword localLinkPassword = new LinkPassword();
    a = paramTag;
    b = paramString;
    return localLinkPassword;
  }
  
  public static LinkPassword setPassword(String paramString)
  {
    if (paramString != null) {
      return new LinkPassword().a(Tag.SET_PASSWORD, paramString);
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
    if ((paramObject instanceof LinkPassword))
    {
      paramObject = (LinkPassword)paramObject;
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
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool = false;
        }
        return bool;
      }
      return true;
    }
    return false;
  }
  
  public String getSetPasswordValue()
  {
    if (a == Tag.SET_PASSWORD) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.SET_PASSWORD, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isRemovePassword()
  {
    return a == Tag.REMOVE_PASSWORD;
  }
  
  public boolean isSetPassword()
  {
    return a == Tag.SET_PASSWORD;
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
    extends UnionSerializer<LinkPassword>
  {
    public static final a a = new a();
    
    a() {}
    
    public LinkPassword a(JsonParser paramJsonParser)
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
        if ("remove_password".equals(localObject))
        {
          localObject = LinkPassword.REMOVE_PASSWORD;
        }
        else if ("set_password".equals(localObject))
        {
          expectField("set_password", paramJsonParser);
          localObject = LinkPassword.setPassword((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else
        {
          localObject = LinkPassword.OTHER;
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
    
    public void a(LinkPassword paramLinkPassword, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (LinkPassword.1.a[paramLinkPassword.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("set_password", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("set_password");
        StoneSerializers.string().serialize(LinkPassword.a(paramLinkPassword), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeString("remove_password");
    }
  }
}
