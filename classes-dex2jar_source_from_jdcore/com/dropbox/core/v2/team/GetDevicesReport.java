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

public class GetDevicesReport
  extends BaseDfbReport
{
  protected final DevicesActive active1Day;
  protected final DevicesActive active28Day;
  protected final DevicesActive active7Day;
  
  public GetDevicesReport(String paramString, DevicesActive paramDevicesActive1, DevicesActive paramDevicesActive2, DevicesActive paramDevicesActive3)
  {
    super(paramString);
    if (paramDevicesActive1 != null)
    {
      active1Day = paramDevicesActive1;
      if (paramDevicesActive2 != null)
      {
        active7Day = paramDevicesActive2;
        if (paramDevicesActive3 != null)
        {
          active28Day = paramDevicesActive3;
          return;
        }
        throw new IllegalArgumentException("Required value for 'active28Day' is null");
      }
      throw new IllegalArgumentException("Required value for 'active7Day' is null");
    }
    throw new IllegalArgumentException("Required value for 'active1Day' is null");
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
      paramObject = (GetDevicesReport)paramObject;
      if (((startDate == startDate) || (startDate.equals(startDate))) && ((active1Day == active1Day) || (active1Day.equals(active1Day))) && ((active7Day == active7Day) || (active7Day.equals(active7Day))))
      {
        if (active28Day == active28Day) {
          break label138;
        }
        if (active28Day.equals(active28Day)) {
          return true;
        }
      }
      bool = false;
      label138:
      return bool;
    }
    return false;
  }
  
  public DevicesActive getActive1Day()
  {
    return active1Day;
  }
  
  public DevicesActive getActive28Day()
  {
    return active28Day;
  }
  
  public DevicesActive getActive7Day()
  {
    return active7Day;
  }
  
  public String getStartDate()
  {
    return startDate;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { active1Day, active7Day, active28Day });
    return super.hashCode() * 31 + i;
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
    extends StructSerializer<GetDevicesReport>
  {
    public static final a a = new a();
    
    a() {}
    
    public GetDevicesReport a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      String str1 = null;
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
        DevicesActive localDevicesActive = null;
        localObject1 = localDevicesActive;
        localObject2 = localObject1;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("start_date".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("active_1_day".equals(str2)) {
            localDevicesActive = (DevicesActive)DevicesActive.a.a.deserialize(paramJsonParser);
          } else if ("active_7_day".equals(str2)) {
            localObject1 = (DevicesActive)DevicesActive.a.a.deserialize(paramJsonParser);
          } else if ("active_28_day".equals(str2)) {
            localObject2 = (DevicesActive)DevicesActive.a.a.deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localDevicesActive != null)
          {
            if (localObject1 != null)
            {
              if (localObject2 != null)
              {
                localObject1 = new GetDevicesReport(str1, localDevicesActive, (DevicesActive)localObject1, (DevicesActive)localObject2);
                if (!paramBoolean) {
                  expectEndObject(paramJsonParser);
                }
                return localObject1;
              }
              throw new JsonParseException(paramJsonParser, "Required field \"active_28_day\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"active_7_day\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"active_1_day\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"start_date\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(GetDevicesReport paramGetDevicesReport, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("start_date");
      StoneSerializers.string().serialize(startDate, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("active_1_day");
      DevicesActive.a.a.serialize(active1Day, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("active_7_day");
      DevicesActive.a.a.serialize(active7Day, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("active_28_day");
      DevicesActive.a.a.serialize(active28Day, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
