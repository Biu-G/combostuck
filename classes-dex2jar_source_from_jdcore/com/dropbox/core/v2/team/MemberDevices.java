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

public class MemberDevices
{
  protected final List<DesktopClientSession> desktopClients;
  protected final List<MobileClientSession> mobileClients;
  protected final String teamMemberId;
  protected final List<ActiveWebSession> webSessions;
  
  public MemberDevices(String paramString)
  {
    this(paramString, null, null, null);
  }
  
  public MemberDevices(String paramString, List<ActiveWebSession> paramList, List<DesktopClientSession> paramList1, List<MobileClientSession> paramList2)
  {
    if (paramString != null)
    {
      teamMemberId = paramString;
      if (paramList != null)
      {
        paramString = paramList.iterator();
        while (paramString.hasNext()) {
          if ((ActiveWebSession)paramString.next() == null) {
            throw new IllegalArgumentException("An item in list 'webSessions' is null");
          }
        }
      }
      webSessions = paramList;
      if (paramList1 != null)
      {
        paramString = paramList1.iterator();
        while (paramString.hasNext()) {
          if ((DesktopClientSession)paramString.next() == null) {
            throw new IllegalArgumentException("An item in list 'desktopClients' is null");
          }
        }
      }
      desktopClients = paramList1;
      if (paramList2 != null)
      {
        paramString = paramList2.iterator();
        while (paramString.hasNext()) {
          if ((MobileClientSession)paramString.next() == null) {
            throw new IllegalArgumentException("An item in list 'mobileClients' is null");
          }
        }
      }
      mobileClients = paramList2;
      return;
    }
    throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
  }
  
  public static Builder newBuilder(String paramString)
  {
    return new Builder(paramString);
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
      paramObject = (MemberDevices)paramObject;
      if (((teamMemberId == teamMemberId) || (teamMemberId.equals(teamMemberId))) && ((webSessions == webSessions) || ((webSessions != null) && (webSessions.equals(webSessions)))) && ((desktopClients == desktopClients) || ((desktopClients != null) && (desktopClients.equals(desktopClients)))))
      {
        if (mobileClients == mobileClients) {
          break label165;
        }
        if ((mobileClients != null) && (mobileClients.equals(mobileClients))) {
          return true;
        }
      }
      bool = false;
      label165:
      return bool;
    }
    return false;
  }
  
  public List<DesktopClientSession> getDesktopClients()
  {
    return desktopClients;
  }
  
  public List<MobileClientSession> getMobileClients()
  {
    return mobileClients;
  }
  
  public String getTeamMemberId()
  {
    return teamMemberId;
  }
  
  public List<ActiveWebSession> getWebSessions()
  {
    return webSessions;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { teamMemberId, webSessions, desktopClients, mobileClients });
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
    protected List<DesktopClientSession> desktopClients;
    protected List<MobileClientSession> mobileClients;
    protected final String teamMemberId;
    protected List<ActiveWebSession> webSessions;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        teamMemberId = paramString;
        webSessions = null;
        desktopClients = null;
        mobileClients = null;
        return;
      }
      throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
    }
    
    public MemberDevices build()
    {
      return new MemberDevices(teamMemberId, webSessions, desktopClients, mobileClients);
    }
    
    public Builder withDesktopClients(List<DesktopClientSession> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((DesktopClientSession)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'desktopClients' is null");
          }
        }
      }
      desktopClients = paramList;
      return this;
    }
    
    public Builder withMobileClients(List<MobileClientSession> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((MobileClientSession)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'mobileClients' is null");
          }
        }
      }
      mobileClients = paramList;
      return this;
    }
    
    public Builder withWebSessions(List<ActiveWebSession> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((ActiveWebSession)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'webSessions' is null");
          }
        }
      }
      webSessions = paramList;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<MemberDevices>
  {
    public static final a a = new a();
    
    a() {}
    
    public MemberDevices a(JsonParser paramJsonParser, boolean paramBoolean)
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
        List localList = null;
        localObject1 = localList;
        localObject2 = localObject1;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("team_member_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("web_sessions".equals(str2)) {
            localList = (List)StoneSerializers.nullable(StoneSerializers.list(ActiveWebSession.a.a)).deserialize(paramJsonParser);
          } else if ("desktop_clients".equals(str2)) {
            localObject1 = (List)StoneSerializers.nullable(StoneSerializers.list(DesktopClientSession.a.a)).deserialize(paramJsonParser);
          } else if ("mobile_clients".equals(str2)) {
            localObject2 = (List)StoneSerializers.nullable(StoneSerializers.list(MobileClientSession.a.a)).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new MemberDevices(str1, localList, (List)localObject1, (List)localObject2);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"team_member_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(MemberDevices paramMemberDevices, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("team_member_id");
      StoneSerializers.string().serialize(teamMemberId, paramJsonGenerator);
      if (webSessions != null)
      {
        paramJsonGenerator.writeFieldName("web_sessions");
        StoneSerializers.nullable(StoneSerializers.list(ActiveWebSession.a.a)).serialize(webSessions, paramJsonGenerator);
      }
      if (desktopClients != null)
      {
        paramJsonGenerator.writeFieldName("desktop_clients");
        StoneSerializers.nullable(StoneSerializers.list(DesktopClientSession.a.a)).serialize(desktopClients, paramJsonGenerator);
      }
      if (mobileClients != null)
      {
        paramJsonGenerator.writeFieldName("mobile_clients");
        StoneSerializers.nullable(StoneSerializers.list(MobileClientSession.a.a)).serialize(mobileClients, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
