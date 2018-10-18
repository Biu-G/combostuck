package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

class g
  extends n
{
  protected final GroupSelector a;
  protected final List<MemberAccess> b;
  
  public g(GroupSelector paramGroupSelector, List<MemberAccess> paramList)
  {
    this(paramGroupSelector, paramList, true);
  }
  
  public g(GroupSelector paramGroupSelector, List<MemberAccess> paramList, boolean paramBoolean)
  {
    super(paramBoolean);
    if (paramGroupSelector != null)
    {
      a = paramGroupSelector;
      if (paramList != null)
      {
        paramGroupSelector = paramList.iterator();
        while (paramGroupSelector.hasNext()) {
          if ((MemberAccess)paramGroupSelector.next() == null) {
            throw new IllegalArgumentException("An item in list 'members' is null");
          }
        }
        b = paramList;
        return;
      }
      throw new IllegalArgumentException("Required value for 'members' is null");
    }
    throw new IllegalArgumentException("Required value for 'group' is null");
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (paramObject.getClass().equals(getClass()))
    {
      paramObject = (g)paramObject;
      return ((a == a) || (a.equals(a))) && ((b == b) || (b.equals(b))) && (e == e);
    }
    return false;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, b });
    return super.hashCode() * 31 + i;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  static class a
    extends StructSerializer<g>
  {
    public static final a a = new a();
    
    a() {}
    
    public g a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      GroupSelector localGroupSelector = null;
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
        localObject1 = Boolean.valueOf(true);
        localObject2 = null;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("group".equals(str)) {
            localGroupSelector = GroupSelector.a.a.a(paramJsonParser);
          } else if ("members".equals(str)) {
            localObject2 = (List)StoneSerializers.list(MemberAccess.a.a).deserialize(paramJsonParser);
          } else if ("return_members".equals(str)) {
            localObject1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localGroupSelector != null)
        {
          if (localObject2 != null)
          {
            localObject1 = new g(localGroupSelector, (List)localObject2, ((Boolean)localObject1).booleanValue());
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"members\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"group\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(g paramG, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("group");
      GroupSelector.a.a.a(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("members");
      StoneSerializers.list(MemberAccess.a.a).serialize(b, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("return_members");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(e), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
