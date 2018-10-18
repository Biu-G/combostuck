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

public final class GroupsGetInfoItem
{
  private Tag a;
  private String b;
  private GroupFullInfo c;
  
  private GroupsGetInfoItem() {}
  
  private GroupsGetInfoItem a(Tag paramTag, GroupFullInfo paramGroupFullInfo)
  {
    GroupsGetInfoItem localGroupsGetInfoItem = new GroupsGetInfoItem();
    a = paramTag;
    c = paramGroupFullInfo;
    return localGroupsGetInfoItem;
  }
  
  private GroupsGetInfoItem a(Tag paramTag, String paramString)
  {
    GroupsGetInfoItem localGroupsGetInfoItem = new GroupsGetInfoItem();
    a = paramTag;
    b = paramString;
    return localGroupsGetInfoItem;
  }
  
  public static GroupsGetInfoItem groupInfo(GroupFullInfo paramGroupFullInfo)
  {
    if (paramGroupFullInfo != null) {
      return new GroupsGetInfoItem().a(Tag.GROUP_INFO, paramGroupFullInfo);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static GroupsGetInfoItem idNotFound(String paramString)
  {
    if (paramString != null) {
      return new GroupsGetInfoItem().a(Tag.ID_NOT_FOUND, paramString);
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
    if ((paramObject instanceof GroupsGetInfoItem))
    {
      paramObject = (GroupsGetInfoItem)paramObject;
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
  
  public GroupFullInfo getGroupInfoValue()
  {
    if (a == Tag.GROUP_INFO) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.GROUP_INFO, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getIdNotFoundValue()
  {
    if (a == Tag.ID_NOT_FOUND) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ID_NOT_FOUND, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public boolean isGroupInfo()
  {
    return a == Tag.GROUP_INFO;
  }
  
  public boolean isIdNotFound()
  {
    return a == Tag.ID_NOT_FOUND;
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
    extends UnionSerializer<GroupsGetInfoItem>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupsGetInfoItem a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      Object localObject;
      int i;
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
      {
        localObject = getStringValue(paramJsonParser);
        paramJsonParser.nextToken();
        i = 1;
      }
      else
      {
        expectStartObject(paramJsonParser);
        localObject = readTag(paramJsonParser);
        i = 0;
      }
      if (localObject != null)
      {
        if ("id_not_found".equals(localObject))
        {
          expectField("id_not_found", paramJsonParser);
          localObject = GroupsGetInfoItem.idNotFound((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else
        {
          if (!"group_info".equals(localObject)) {
            break label107;
          }
          localObject = GroupsGetInfoItem.groupInfo(GroupFullInfo.a.a.a(paramJsonParser, true));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label107:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(GroupsGetInfoItem paramGroupsGetInfoItem, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GroupsGetInfoItem.1.a[paramGroupsGetInfoItem.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramGroupsGetInfoItem.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("group_info", paramJsonGenerator);
        GroupFullInfo.a.a.a(GroupsGetInfoItem.b(paramGroupsGetInfoItem), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("id_not_found", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("id_not_found");
      StoneSerializers.string().serialize(GroupsGetInfoItem.a(paramGroupsGetInfoItem), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
