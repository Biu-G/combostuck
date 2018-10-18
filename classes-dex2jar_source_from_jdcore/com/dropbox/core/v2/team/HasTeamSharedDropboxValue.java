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

public final class HasTeamSharedDropboxValue
{
  public static final HasTeamSharedDropboxValue OTHER = new HasTeamSharedDropboxValue().a(Tag.OTHER);
  private Tag a;
  private Boolean b;
  
  private HasTeamSharedDropboxValue() {}
  
  private HasTeamSharedDropboxValue a(Tag paramTag)
  {
    HasTeamSharedDropboxValue localHasTeamSharedDropboxValue = new HasTeamSharedDropboxValue();
    a = paramTag;
    return localHasTeamSharedDropboxValue;
  }
  
  private HasTeamSharedDropboxValue a(Tag paramTag, Boolean paramBoolean)
  {
    HasTeamSharedDropboxValue localHasTeamSharedDropboxValue = new HasTeamSharedDropboxValue();
    a = paramTag;
    b = paramBoolean;
    return localHasTeamSharedDropboxValue;
  }
  
  public static HasTeamSharedDropboxValue hasTeamSharedDropbox(boolean paramBoolean)
  {
    return new HasTeamSharedDropboxValue().a(Tag.HAS_TEAM_SHARED_DROPBOX, Boolean.valueOf(paramBoolean));
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof HasTeamSharedDropboxValue))
    {
      paramObject = (HasTeamSharedDropboxValue)paramObject;
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
  
  public boolean getHasTeamSharedDropboxValue()
  {
    if (a == Tag.HAS_TEAM_SHARED_DROPBOX) {
      return b.booleanValue();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.HAS_TEAM_SHARED_DROPBOX, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isHasTeamSharedDropbox()
  {
    return a == Tag.HAS_TEAM_SHARED_DROPBOX;
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
    extends UnionSerializer<HasTeamSharedDropboxValue>
  {
    public static final a a = new a();
    
    a() {}
    
    public HasTeamSharedDropboxValue a(JsonParser paramJsonParser)
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
        if ("has_team_shared_dropbox".equals(localObject))
        {
          expectField("has_team_shared_dropbox", paramJsonParser);
          localObject = HasTeamSharedDropboxValue.hasTeamSharedDropbox(((Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser)).booleanValue());
        }
        else
        {
          localObject = HasTeamSharedDropboxValue.OTHER;
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
    
    public void a(HasTeamSharedDropboxValue paramHasTeamSharedDropboxValue, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (HasTeamSharedDropboxValue.1.a[paramHasTeamSharedDropboxValue.tag().ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("has_team_shared_dropbox", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("has_team_shared_dropbox");
      StoneSerializers.boolean_().serialize(HasTeamSharedDropboxValue.a(paramHasTeamSharedDropboxValue), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
