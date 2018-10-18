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

public class ListMemberDevicesResult
{
  protected final List<ActiveWebSession> activeWebSessions;
  protected final List<DesktopClientSession> desktopClientSessions;
  protected final List<MobileClientSession> mobileClientSessions;
  
  public ListMemberDevicesResult()
  {
    this(null, null, null);
  }
  
  public ListMemberDevicesResult(List<ActiveWebSession> paramList, List<DesktopClientSession> paramList1, List<MobileClientSession> paramList2)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((ActiveWebSession)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'activeWebSessions' is null");
        }
      }
    }
    activeWebSessions = paramList;
    if (paramList1 != null)
    {
      paramList = paramList1.iterator();
      while (paramList.hasNext()) {
        if ((DesktopClientSession)paramList.next() == null) {
          throw new IllegalArgumentException("An item in list 'desktopClientSessions' is null");
        }
      }
    }
    desktopClientSessions = paramList1;
    if (paramList2 != null)
    {
      paramList = paramList2.iterator();
      while (paramList.hasNext()) {
        if ((MobileClientSession)paramList.next() == null) {
          throw new IllegalArgumentException("An item in list 'mobileClientSessions' is null");
        }
      }
    }
    mobileClientSessions = paramList2;
  }
  
  public static Builder newBuilder()
  {
    return new Builder();
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
      paramObject = (ListMemberDevicesResult)paramObject;
      if (((activeWebSessions == activeWebSessions) || ((activeWebSessions != null) && (activeWebSessions.equals(activeWebSessions)))) && ((desktopClientSessions == desktopClientSessions) || ((desktopClientSessions != null) && (desktopClientSessions.equals(desktopClientSessions)))))
      {
        if (mobileClientSessions == mobileClientSessions) {
          break label140;
        }
        if ((mobileClientSessions != null) && (mobileClientSessions.equals(mobileClientSessions))) {
          return true;
        }
      }
      bool = false;
      label140:
      return bool;
    }
    return false;
  }
  
  public List<ActiveWebSession> getActiveWebSessions()
  {
    return activeWebSessions;
  }
  
  public List<DesktopClientSession> getDesktopClientSessions()
  {
    return desktopClientSessions;
  }
  
  public List<MobileClientSession> getMobileClientSessions()
  {
    return mobileClientSessions;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { activeWebSessions, desktopClientSessions, mobileClientSessions });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  public static class Builder
  {
    protected List<ActiveWebSession> activeWebSessions = null;
    protected List<DesktopClientSession> desktopClientSessions = null;
    protected List<MobileClientSession> mobileClientSessions = null;
    
    protected Builder() {}
    
    public ListMemberDevicesResult build()
    {
      return new ListMemberDevicesResult(activeWebSessions, desktopClientSessions, mobileClientSessions);
    }
    
    public Builder withActiveWebSessions(List<ActiveWebSession> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((ActiveWebSession)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'activeWebSessions' is null");
          }
        }
      }
      activeWebSessions = paramList;
      return this;
    }
    
    public Builder withDesktopClientSessions(List<DesktopClientSession> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((DesktopClientSession)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'desktopClientSessions' is null");
          }
        }
      }
      desktopClientSessions = paramList;
      return this;
    }
    
    public Builder withMobileClientSessions(List<MobileClientSession> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((MobileClientSession)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'mobileClientSessions' is null");
          }
        }
      }
      mobileClientSessions = paramList;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<ListMemberDevicesResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListMemberDevicesResult a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("active_web_sessions".equals(str)) {
            localList = (List)StoneSerializers.nullable(StoneSerializers.list(ActiveWebSession.a.a)).deserialize(paramJsonParser);
          } else if ("desktop_client_sessions".equals(str)) {
            localObject2 = (List)StoneSerializers.nullable(StoneSerializers.list(DesktopClientSession.a.a)).deserialize(paramJsonParser);
          } else if ("mobile_client_sessions".equals(str)) {
            localObject1 = (List)StoneSerializers.nullable(StoneSerializers.list(MobileClientSession.a.a)).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        localObject1 = new ListMemberDevicesResult(localList, (List)localObject2, (List)localObject1);
        if (!paramBoolean) {
          expectEndObject(paramJsonParser);
        }
        return localObject1;
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ListMemberDevicesResult paramListMemberDevicesResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      if (activeWebSessions != null)
      {
        paramJsonGenerator.writeFieldName("active_web_sessions");
        StoneSerializers.nullable(StoneSerializers.list(ActiveWebSession.a.a)).serialize(activeWebSessions, paramJsonGenerator);
      }
      if (desktopClientSessions != null)
      {
        paramJsonGenerator.writeFieldName("desktop_client_sessions");
        StoneSerializers.nullable(StoneSerializers.list(DesktopClientSession.a.a)).serialize(desktopClientSessions, paramJsonGenerator);
      }
      if (mobileClientSessions != null)
      {
        paramJsonGenerator.writeFieldName("mobile_client_sessions");
        StoneSerializers.nullable(StoneSerializers.list(MobileClientSession.a.a)).serialize(mobileClientSessions, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
