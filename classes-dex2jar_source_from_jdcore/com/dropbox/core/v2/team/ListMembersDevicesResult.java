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

public class ListMembersDevicesResult
{
  protected final String cursor;
  protected final List<MemberDevices> devices;
  protected final boolean hasMore;
  
  public ListMembersDevicesResult(List<MemberDevices> paramList, boolean paramBoolean)
  {
    this(paramList, paramBoolean, null);
  }
  
  public ListMembersDevicesResult(List<MemberDevices> paramList, boolean paramBoolean, String paramString)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((MemberDevices)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'devices' is null");
        }
      }
      devices = paramList;
      hasMore = paramBoolean;
      cursor = paramString;
      return;
    }
    throw new IllegalArgumentException("Required value for 'devices' is null");
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
      paramObject = (ListMembersDevicesResult)paramObject;
      if (((devices == devices) || (devices.equals(devices))) && (hasMore == hasMore))
      {
        if (cursor == cursor) {
          break label108;
        }
        if ((cursor != null) && (cursor.equals(cursor))) {
          return true;
        }
      }
      bool = false;
      label108:
      return bool;
    }
    return false;
  }
  
  public String getCursor()
  {
    return cursor;
  }
  
  public List<MemberDevices> getDevices()
  {
    return devices;
  }
  
  public boolean getHasMore()
  {
    return hasMore;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { devices, Boolean.valueOf(hasMore), cursor });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  static class a
    extends StructSerializer<ListMembersDevicesResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListMembersDevicesResult a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      List localList = null;
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
        localObject2 = null;
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("devices".equals(str)) {
            localList = (List)StoneSerializers.list(MemberDevices.a.a).deserialize(paramJsonParser);
          } else if ("has_more".equals(str)) {
            localObject2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("cursor".equals(str)) {
            localObject1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localList != null)
        {
          if (localObject2 != null)
          {
            localObject1 = new ListMembersDevicesResult(localList, ((Boolean)localObject2).booleanValue(), (String)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"has_more\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"devices\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ListMembersDevicesResult paramListMembersDevicesResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("devices");
      StoneSerializers.list(MemberDevices.a.a).serialize(devices, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("has_more");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(hasMore), paramJsonGenerator);
      if (cursor != null)
      {
        paramJsonGenerator.writeFieldName("cursor");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(cursor, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
