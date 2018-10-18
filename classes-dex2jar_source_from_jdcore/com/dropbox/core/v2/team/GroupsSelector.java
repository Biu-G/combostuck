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
import java.util.Iterator;
import java.util.List;

public final class GroupsSelector
{
  private Tag a;
  private List<String> b;
  private List<String> c;
  
  private GroupsSelector() {}
  
  private GroupsSelector a(Tag paramTag, List<String> paramList)
  {
    GroupsSelector localGroupsSelector = new GroupsSelector();
    a = paramTag;
    b = paramList;
    return localGroupsSelector;
  }
  
  private GroupsSelector b(Tag paramTag, List<String> paramList)
  {
    GroupsSelector localGroupsSelector = new GroupsSelector();
    a = paramTag;
    c = paramList;
    return localGroupsSelector;
  }
  
  public static GroupsSelector groupExternalIds(List<String> paramList)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((String)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list is null");
        }
      }
      return new GroupsSelector().b(Tag.GROUP_EXTERNAL_IDS, paramList);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static GroupsSelector groupIds(List<String> paramList)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((String)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list is null");
        }
      }
      return new GroupsSelector().a(Tag.GROUP_IDS, paramList);
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
    if ((paramObject instanceof GroupsSelector))
    {
      paramObject = (GroupsSelector)paramObject;
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
  
  public List<String> getGroupExternalIdsValue()
  {
    if (a == Tag.GROUP_EXTERNAL_IDS) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.GROUP_EXTERNAL_IDS, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public List<String> getGroupIdsValue()
  {
    if (a == Tag.GROUP_IDS) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.GROUP_IDS, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public boolean isGroupExternalIds()
  {
    return a == Tag.GROUP_EXTERNAL_IDS;
  }
  
  public boolean isGroupIds()
  {
    return a == Tag.GROUP_IDS;
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
    extends UnionSerializer<GroupsSelector>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupsSelector a(JsonParser paramJsonParser)
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
        if ("group_ids".equals(localObject))
        {
          expectField("group_ids", paramJsonParser);
          localObject = GroupsSelector.groupIds((List)StoneSerializers.list(StoneSerializers.string()).deserialize(paramJsonParser));
        }
        else
        {
          if (!"group_external_ids".equals(localObject)) {
            break label121;
          }
          expectField("group_external_ids", paramJsonParser);
          localObject = GroupsSelector.groupExternalIds((List)StoneSerializers.list(StoneSerializers.string()).deserialize(paramJsonParser));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label121:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(GroupsSelector paramGroupsSelector, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GroupsSelector.1.a[paramGroupsSelector.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramGroupsSelector.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("group_external_ids", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("group_external_ids");
        StoneSerializers.list(StoneSerializers.string()).serialize(GroupsSelector.b(paramGroupsSelector), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("group_ids", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("group_ids");
      StoneSerializers.list(StoneSerializers.string()).serialize(GroupsSelector.a(paramGroupsSelector), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
