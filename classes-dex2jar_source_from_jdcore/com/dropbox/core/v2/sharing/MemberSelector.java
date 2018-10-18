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

public final class MemberSelector
{
  public static final MemberSelector OTHER = new MemberSelector().a(Tag.OTHER);
  private Tag a;
  private String b;
  private String c;
  
  private MemberSelector() {}
  
  private MemberSelector a(Tag paramTag)
  {
    MemberSelector localMemberSelector = new MemberSelector();
    a = paramTag;
    return localMemberSelector;
  }
  
  private MemberSelector a(Tag paramTag, String paramString)
  {
    MemberSelector localMemberSelector = new MemberSelector();
    a = paramTag;
    b = paramString;
    return localMemberSelector;
  }
  
  private MemberSelector b(Tag paramTag, String paramString)
  {
    MemberSelector localMemberSelector = new MemberSelector();
    a = paramTag;
    c = paramString;
    return localMemberSelector;
  }
  
  public static MemberSelector dropboxId(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1) {
        return new MemberSelector().a(Tag.DROPBOX_ID, paramString);
      }
      throw new IllegalArgumentException("String is shorter than 1");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static MemberSelector email(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() <= 255)
      {
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString)) {
          return new MemberSelector().b(Tag.EMAIL, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is longer than 255");
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
    if ((paramObject instanceof MemberSelector))
    {
      paramObject = (MemberSelector)paramObject;
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
  
  public String getDropboxIdValue()
  {
    if (a == Tag.DROPBOX_ID) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.DROPBOX_ID, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getEmailValue()
  {
    if (a == Tag.EMAIL) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.EMAIL, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public boolean isDropboxId()
  {
    return a == Tag.DROPBOX_ID;
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
    extends UnionSerializer<MemberSelector>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public MemberSelector deserialize(JsonParser paramJsonParser)
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
        if ("dropbox_id".equals(localObject))
        {
          expectField("dropbox_id", paramJsonParser);
          localObject = MemberSelector.dropboxId((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("email".equals(localObject))
        {
          expectField("email", paramJsonParser);
          localObject = MemberSelector.email((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else
        {
          localObject = MemberSelector.OTHER;
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
    
    public void serialize(MemberSelector paramMemberSelector, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (MemberSelector.1.a[paramMemberSelector.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("email", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("email");
        StoneSerializers.string().serialize(MemberSelector.b(paramMemberSelector), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("dropbox_id", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("dropbox_id");
      StoneSerializers.string().serialize(MemberSelector.a(paramMemberSelector), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
  
  public static enum Tag
  {
    private Tag() {}
  }
}
