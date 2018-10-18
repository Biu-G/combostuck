package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamcommon.GroupManagementType;
import com.dropbox.core.v2.teamcommon.GroupManagementType.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

class GroupUpdateArgs
  extends n
{
  protected final GroupSelector a;
  protected final String b;
  protected final String c;
  protected final GroupManagementType d;
  
  public GroupUpdateArgs(GroupSelector paramGroupSelector)
  {
    this(paramGroupSelector, true, null, null, null);
  }
  
  public GroupUpdateArgs(GroupSelector paramGroupSelector, boolean paramBoolean, String paramString1, String paramString2, GroupManagementType paramGroupManagementType)
  {
    super(paramBoolean);
    if (paramGroupSelector != null)
    {
      a = paramGroupSelector;
      b = paramString1;
      c = paramString2;
      d = paramGroupManagementType;
      return;
    }
    throw new IllegalArgumentException("Required value for 'group' is null");
  }
  
  public static Builder a(GroupSelector paramGroupSelector)
  {
    return new Builder(paramGroupSelector);
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
    if (paramObject.getClass().equals(getClass()))
    {
      paramObject = (GroupUpdateArgs)paramObject;
      if (((a == a) || (a.equals(a))) && (e == e) && ((b == b) || ((b != null) && (b.equals(b)))) && ((c == c) || ((c != null) && (c.equals(c)))))
      {
        if (d == d) {
          break label170;
        }
        if ((d != null) && (d.equals(d))) {
          return true;
        }
      }
      bool = false;
      label170:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, b, c, d });
    return super.hashCode() * 31 + i;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected final GroupSelector group;
    protected String newGroupExternalId;
    protected GroupManagementType newGroupManagementType;
    protected String newGroupName;
    protected boolean returnMembers;
    
    protected Builder(GroupSelector paramGroupSelector)
    {
      if (paramGroupSelector != null)
      {
        group = paramGroupSelector;
        returnMembers = true;
        newGroupName = null;
        newGroupExternalId = null;
        newGroupManagementType = null;
        return;
      }
      throw new IllegalArgumentException("Required value for 'group' is null");
    }
    
    public GroupUpdateArgs build()
    {
      return new GroupUpdateArgs(group, returnMembers, newGroupName, newGroupExternalId, newGroupManagementType);
    }
    
    public Builder withNewGroupExternalId(String paramString)
    {
      newGroupExternalId = paramString;
      return this;
    }
    
    public Builder withNewGroupManagementType(GroupManagementType paramGroupManagementType)
    {
      newGroupManagementType = paramGroupManagementType;
      return this;
    }
    
    public Builder withNewGroupName(String paramString)
    {
      newGroupName = paramString;
      return this;
    }
    
    public Builder withReturnMembers(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        returnMembers = paramBoolean.booleanValue();
        return this;
      }
      returnMembers = true;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<GroupUpdateArgs>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupUpdateArgs a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject1 = readTag(paramJsonParser);
      }
      else
      {
        localObject1 = null;
      }
      if (localObject1 == null)
      {
        Boolean localBoolean = Boolean.valueOf(true);
        GroupSelector localGroupSelector = null;
        localObject1 = localGroupSelector;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("group".equals(str)) {
            localGroupSelector = GroupSelector.a.a.a(paramJsonParser);
          } else if ("return_members".equals(str)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("new_group_name".equals(str)) {
            localObject1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("new_group_external_id".equals(str)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("new_group_management_type".equals(str)) {
            localObject3 = (GroupManagementType)StoneSerializers.nullable(GroupManagementType.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localGroupSelector != null)
        {
          localObject1 = new GroupUpdateArgs(localGroupSelector, localBoolean.booleanValue(), (String)localObject1, (String)localObject2, (GroupManagementType)localObject3);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"group\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(GroupUpdateArgs paramGroupUpdateArgs, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("group");
      GroupSelector.a.a.a(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("return_members");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(e), paramJsonGenerator);
      if (b != null)
      {
        paramJsonGenerator.writeFieldName("new_group_name");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(b, paramJsonGenerator);
      }
      if (c != null)
      {
        paramJsonGenerator.writeFieldName("new_group_external_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(c, paramJsonGenerator);
      }
      if (d != null)
      {
        paramJsonGenerator.writeFieldName("new_group_management_type");
        StoneSerializers.nullable(GroupManagementType.Serializer.INSTANCE).serialize(d, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
