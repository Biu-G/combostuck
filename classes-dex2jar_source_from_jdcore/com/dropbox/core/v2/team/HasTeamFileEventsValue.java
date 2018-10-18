package com.dropbox.core.v2.team;

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

public final class HasTeamFileEventsValue
{
  public static final HasTeamFileEventsValue OTHER = new HasTeamFileEventsValue().a(Tag.OTHER);
  private Tag a;
  private Boolean b;
  
  private HasTeamFileEventsValue() {}
  
  private HasTeamFileEventsValue a(Tag paramTag)
  {
    HasTeamFileEventsValue localHasTeamFileEventsValue = new HasTeamFileEventsValue();
    a = paramTag;
    return localHasTeamFileEventsValue;
  }
  
  private HasTeamFileEventsValue a(Tag paramTag, Boolean paramBoolean)
  {
    HasTeamFileEventsValue localHasTeamFileEventsValue = new HasTeamFileEventsValue();
    a = paramTag;
    b = paramBoolean;
    return localHasTeamFileEventsValue;
  }
  
  public static HasTeamFileEventsValue enabled(boolean paramBoolean)
  {
    return new HasTeamFileEventsValue().a(Tag.ENABLED, Boolean.valueOf(paramBoolean));
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof HasTeamFileEventsValue))
    {
      paramObject = (HasTeamFileEventsValue)paramObject;
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
      return b == b;
    }
    return false;
  }
  
  public boolean getEnabledValue()
  {
    if (a == Tag.ENABLED) {
      return b.booleanValue();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ENABLED, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isEnabled()
  {
    return a == Tag.ENABLED;
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
    extends UnionSerializer<HasTeamFileEventsValue>
  {
    public static final a a = new a();
    
    a() {}
    
    public HasTeamFileEventsValue a(JsonParser paramJsonParser)
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
        if ("enabled".equals(localObject))
        {
          expectField("enabled", paramJsonParser);
          localObject = HasTeamFileEventsValue.enabled(((Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser)).booleanValue());
        }
        else
        {
          localObject = HasTeamFileEventsValue.OTHER;
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
    
    public void a(HasTeamFileEventsValue paramHasTeamFileEventsValue, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (HasTeamFileEventsValue.1.a[paramHasTeamFileEventsValue.tag().ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("enabled", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("enabled");
      StoneSerializers.boolean_().serialize(HasTeamFileEventsValue.a(paramHasTeamFileEventsValue), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
