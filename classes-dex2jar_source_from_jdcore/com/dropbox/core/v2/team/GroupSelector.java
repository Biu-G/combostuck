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

public final class GroupSelector
{
  private Tag a;
  private String b;
  private String c;
  
  private GroupSelector() {}
  
  private GroupSelector a(Tag paramTag, String paramString)
  {
    GroupSelector localGroupSelector = new GroupSelector();
    a = paramTag;
    b = paramString;
    return localGroupSelector;
  }
  
  private GroupSelector b(Tag paramTag, String paramString)
  {
    GroupSelector localGroupSelector = new GroupSelector();
    a = paramTag;
    c = paramString;
    return localGroupSelector;
  }
  
  public static GroupSelector groupExternalId(String paramString)
  {
    if (paramString != null) {
      return new GroupSelector().b(Tag.GROUP_EXTERNAL_ID, paramString);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static GroupSelector groupId(String paramString)
  {
    if (paramString != null) {
      return new GroupSelector().a(Tag.GROUP_ID, paramString);
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
    if ((paramObject instanceof GroupSelector))
    {
      paramObject = (GroupSelector)paramObject;
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
        if (b.equals(b)) {
          return true;
        }
        bool1 = false;
      }
      return bool1;
    }
    return false;
  }
  
  public String getGroupExternalIdValue()
  {
    if (a == Tag.GROUP_EXTERNAL_ID) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.GROUP_EXTERNAL_ID, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getGroupIdValue()
  {
    if (a == Tag.GROUP_ID) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.GROUP_ID, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public boolean isGroupExternalId()
  {
    return a == Tag.GROUP_EXTERNAL_ID;
  }
  
  public boolean isGroupId()
  {
    return a == Tag.GROUP_ID;
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
    extends UnionSerializer<GroupSelector>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupSelector a(JsonParser paramJsonParser)
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
        if ("group_id".equals(localObject))
        {
          expectField("group_id", paramJsonParser);
          localObject = GroupSelector.groupId((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else
        {
          if (!"group_external_id".equals(localObject)) {
            break label115;
          }
          expectField("group_external_id", paramJsonParser);
          localObject = GroupSelector.groupExternalId((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label115:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(GroupSelector paramGroupSelector, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GroupSelector.1.a[paramGroupSelector.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramGroupSelector.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("group_external_id", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("group_external_id");
        StoneSerializers.string().serialize(GroupSelector.b(paramGroupSelector), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("group_id", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("group_id");
      StoneSerializers.string().serialize(GroupSelector.a(paramGroupSelector), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
