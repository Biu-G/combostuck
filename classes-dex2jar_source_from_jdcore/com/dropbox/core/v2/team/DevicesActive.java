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

public class DevicesActive
{
  protected final List<Long> android;
  protected final List<Long> ios;
  protected final List<Long> linux;
  protected final List<Long> macos;
  protected final List<Long> other;
  protected final List<Long> total;
  protected final List<Long> windows;
  
  public DevicesActive(List<Long> paramList1, List<Long> paramList2, List<Long> paramList3, List<Long> paramList4, List<Long> paramList5, List<Long> paramList6, List<Long> paramList7)
  {
    if (paramList1 != null)
    {
      Iterator localIterator = paramList1.iterator();
      while (localIterator.hasNext()) {
        if ((Long)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'windows' is null");
        }
      }
      windows = paramList1;
      if (paramList2 != null)
      {
        paramList1 = paramList2.iterator();
        while (paramList1.hasNext()) {
          if ((Long)paramList1.next() == null) {
            throw new IllegalArgumentException("An item in list 'macos' is null");
          }
        }
        macos = paramList2;
        if (paramList3 != null)
        {
          paramList1 = paramList3.iterator();
          while (paramList1.hasNext()) {
            if ((Long)paramList1.next() == null) {
              throw new IllegalArgumentException("An item in list 'linux' is null");
            }
          }
          linux = paramList3;
          if (paramList4 != null)
          {
            paramList1 = paramList4.iterator();
            while (paramList1.hasNext()) {
              if ((Long)paramList1.next() == null) {
                throw new IllegalArgumentException("An item in list 'ios' is null");
              }
            }
            ios = paramList4;
            if (paramList5 != null)
            {
              paramList1 = paramList5.iterator();
              while (paramList1.hasNext()) {
                if ((Long)paramList1.next() == null) {
                  throw new IllegalArgumentException("An item in list 'android' is null");
                }
              }
              android = paramList5;
              if (paramList6 != null)
              {
                paramList1 = paramList6.iterator();
                while (paramList1.hasNext()) {
                  if ((Long)paramList1.next() == null) {
                    throw new IllegalArgumentException("An item in list 'other' is null");
                  }
                }
                other = paramList6;
                if (paramList7 != null)
                {
                  paramList1 = paramList7.iterator();
                  while (paramList1.hasNext()) {
                    if ((Long)paramList1.next() == null) {
                      throw new IllegalArgumentException("An item in list 'total' is null");
                    }
                  }
                  total = paramList7;
                  return;
                }
                throw new IllegalArgumentException("Required value for 'total' is null");
              }
              throw new IllegalArgumentException("Required value for 'other' is null");
            }
            throw new IllegalArgumentException("Required value for 'android' is null");
          }
          throw new IllegalArgumentException("Required value for 'ios' is null");
        }
        throw new IllegalArgumentException("Required value for 'linux' is null");
      }
      throw new IllegalArgumentException("Required value for 'macos' is null");
    }
    throw new IllegalArgumentException("Required value for 'windows' is null");
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
      paramObject = (DevicesActive)paramObject;
      if (((windows == windows) || (windows.equals(windows))) && ((macos == macos) || (macos.equals(macos))) && ((linux == linux) || (linux.equals(linux))) && ((ios == ios) || (ios.equals(ios))) && ((android == android) || (android.equals(android))) && ((other == other) || (other.equals(other))))
      {
        if (total == total) {
          break label227;
        }
        if (total.equals(total)) {
          return true;
        }
      }
      bool = false;
      label227:
      return bool;
    }
    return false;
  }
  
  public List<Long> getAndroid()
  {
    return android;
  }
  
  public List<Long> getIos()
  {
    return ios;
  }
  
  public List<Long> getLinux()
  {
    return linux;
  }
  
  public List<Long> getMacos()
  {
    return macos;
  }
  
  public List<Long> getOther()
  {
    return other;
  }
  
  public List<Long> getTotal()
  {
    return total;
  }
  
  public List<Long> getWindows()
  {
    return windows;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { windows, macos, linux, ios, android, other, total });
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
    extends StructSerializer<DevicesActive>
  {
    public static final a a = new a();
    
    a() {}
    
    public DevicesActive a(JsonParser paramJsonParser, boolean paramBoolean)
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
        List localList = null;
        localObject1 = localList;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        Object localObject4 = localObject3;
        Object localObject5 = localObject4;
        Object localObject6 = localObject5;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("windows".equals(str)) {
            localList = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("macos".equals(str)) {
            localObject1 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("linux".equals(str)) {
            localObject2 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("ios".equals(str)) {
            localObject3 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("android".equals(str)) {
            localObject4 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("other".equals(str)) {
            localObject5 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("total".equals(str)) {
            localObject6 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localList != null)
        {
          if (localObject1 != null)
          {
            if (localObject2 != null)
            {
              if (localObject3 != null)
              {
                if (localObject4 != null)
                {
                  if (localObject5 != null)
                  {
                    if (localObject6 != null)
                    {
                      localObject1 = new DevicesActive(localList, (List)localObject1, (List)localObject2, (List)localObject3, (List)localObject4, (List)localObject5, (List)localObject6);
                      if (!paramBoolean) {
                        expectEndObject(paramJsonParser);
                      }
                      return localObject1;
                    }
                    throw new JsonParseException(paramJsonParser, "Required field \"total\" missing.");
                  }
                  throw new JsonParseException(paramJsonParser, "Required field \"other\" missing.");
                }
                throw new JsonParseException(paramJsonParser, "Required field \"android\" missing.");
              }
              throw new JsonParseException(paramJsonParser, "Required field \"ios\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"linux\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"macos\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"windows\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(DevicesActive paramDevicesActive, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("windows");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(windows, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("macos");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(macos, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("linux");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(linux, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("ios");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(ios, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("android");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(android, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("other");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(other, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("total");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(total, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
