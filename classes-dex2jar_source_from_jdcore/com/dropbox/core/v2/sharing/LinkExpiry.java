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
import java.util.Date;

public final class LinkExpiry
{
  public static final LinkExpiry OTHER = new LinkExpiry().a(Tag.OTHER);
  public static final LinkExpiry REMOVE_EXPIRY = new LinkExpiry().a(Tag.REMOVE_EXPIRY);
  private Tag a;
  private Date b;
  
  private LinkExpiry() {}
  
  private LinkExpiry a(Tag paramTag)
  {
    LinkExpiry localLinkExpiry = new LinkExpiry();
    a = paramTag;
    return localLinkExpiry;
  }
  
  private LinkExpiry a(Tag paramTag, Date paramDate)
  {
    LinkExpiry localLinkExpiry = new LinkExpiry();
    a = paramTag;
    b = paramDate;
    return localLinkExpiry;
  }
  
  public static LinkExpiry setExpiry(Date paramDate)
  {
    if (paramDate != null) {
      return new LinkExpiry().a(Tag.SET_EXPIRY, paramDate);
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
    if ((paramObject instanceof LinkExpiry))
    {
      paramObject = (LinkExpiry)paramObject;
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
  
  public Date getSetExpiryValue()
  {
    if (a == Tag.SET_EXPIRY) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.SET_EXPIRY, but was Tag.");
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
  
  public boolean isRemoveExpiry()
  {
    return a == Tag.REMOVE_EXPIRY;
  }
  
  public boolean isSetExpiry()
  {
    return a == Tag.SET_EXPIRY;
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
    extends UnionSerializer<LinkExpiry>
  {
    public static final a a = new a();
    
    a() {}
    
    public LinkExpiry a(JsonParser paramJsonParser)
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
        if ("remove_expiry".equals(localObject))
        {
          localObject = LinkExpiry.REMOVE_EXPIRY;
        }
        else if ("set_expiry".equals(localObject))
        {
          expectField("set_expiry", paramJsonParser);
          localObject = LinkExpiry.setExpiry((Date)StoneSerializers.timestamp().deserialize(paramJsonParser));
        }
        else
        {
          localObject = LinkExpiry.OTHER;
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
    
    public void a(LinkExpiry paramLinkExpiry, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (LinkExpiry.1.a[paramLinkExpiry.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("set_expiry", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("set_expiry");
        StoneSerializers.timestamp().serialize(LinkExpiry.a(paramLinkExpiry), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeString("remove_expiry");
    }
  }
}
