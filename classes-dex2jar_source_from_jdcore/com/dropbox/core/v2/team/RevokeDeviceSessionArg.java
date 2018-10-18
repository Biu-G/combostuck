package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class RevokeDeviceSessionArg
{
  private Tag a;
  private DeviceSessionArg b;
  private RevokeDesktopClientArg c;
  private DeviceSessionArg d;
  
  private RevokeDeviceSessionArg() {}
  
  private RevokeDeviceSessionArg a(Tag paramTag, DeviceSessionArg paramDeviceSessionArg)
  {
    RevokeDeviceSessionArg localRevokeDeviceSessionArg = new RevokeDeviceSessionArg();
    a = paramTag;
    b = paramDeviceSessionArg;
    return localRevokeDeviceSessionArg;
  }
  
  private RevokeDeviceSessionArg a(Tag paramTag, RevokeDesktopClientArg paramRevokeDesktopClientArg)
  {
    RevokeDeviceSessionArg localRevokeDeviceSessionArg = new RevokeDeviceSessionArg();
    a = paramTag;
    c = paramRevokeDesktopClientArg;
    return localRevokeDeviceSessionArg;
  }
  
  private RevokeDeviceSessionArg b(Tag paramTag, DeviceSessionArg paramDeviceSessionArg)
  {
    RevokeDeviceSessionArg localRevokeDeviceSessionArg = new RevokeDeviceSessionArg();
    a = paramTag;
    d = paramDeviceSessionArg;
    return localRevokeDeviceSessionArg;
  }
  
  public static RevokeDeviceSessionArg desktopClient(RevokeDesktopClientArg paramRevokeDesktopClientArg)
  {
    if (paramRevokeDesktopClientArg != null) {
      return new RevokeDeviceSessionArg().a(Tag.DESKTOP_CLIENT, paramRevokeDesktopClientArg);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static RevokeDeviceSessionArg mobileClient(DeviceSessionArg paramDeviceSessionArg)
  {
    if (paramDeviceSessionArg != null) {
      return new RevokeDeviceSessionArg().b(Tag.MOBILE_CLIENT, paramDeviceSessionArg);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static RevokeDeviceSessionArg webSession(DeviceSessionArg paramDeviceSessionArg)
  {
    if (paramDeviceSessionArg != null) {
      return new RevokeDeviceSessionArg().a(Tag.WEB_SESSION, paramDeviceSessionArg);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof RevokeDeviceSessionArg))
    {
      paramObject = (RevokeDeviceSessionArg)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 3: 
        if (d != d)
        {
          if (d.equals(d)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 2: 
        bool1 = bool2;
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      }
      bool1 = bool3;
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
  
  public RevokeDesktopClientArg getDesktopClientValue()
  {
    if (a == Tag.DESKTOP_CLIENT) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.DESKTOP_CLIENT, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public DeviceSessionArg getMobileClientValue()
  {
    if (a == Tag.MOBILE_CLIENT) {
      return d;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.MOBILE_CLIENT, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public DeviceSessionArg getWebSessionValue()
  {
    if (a == Tag.WEB_SESSION) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.WEB_SESSION, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c, d });
  }
  
  public boolean isDesktopClient()
  {
    return a == Tag.DESKTOP_CLIENT;
  }
  
  public boolean isMobileClient()
  {
    return a == Tag.MOBILE_CLIENT;
  }
  
  public boolean isWebSession()
  {
    return a == Tag.WEB_SESSION;
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
    extends UnionSerializer<RevokeDeviceSessionArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public RevokeDeviceSessionArg a(JsonParser paramJsonParser)
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
        if ("web_session".equals(localObject))
        {
          localObject = RevokeDeviceSessionArg.webSession(DeviceSessionArg.a.a.a(paramJsonParser, true));
        }
        else if ("desktop_client".equals(localObject))
        {
          localObject = RevokeDeviceSessionArg.desktopClient(RevokeDesktopClientArg.a.a.a(paramJsonParser, true));
        }
        else
        {
          if (!"mobile_client".equals(localObject)) {
            break label123;
          }
          localObject = RevokeDeviceSessionArg.mobileClient(DeviceSessionArg.a.a.a(paramJsonParser, true));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label123:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(RevokeDeviceSessionArg paramRevokeDeviceSessionArg, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (RevokeDeviceSessionArg.1.a[paramRevokeDeviceSessionArg.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramRevokeDeviceSessionArg.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("mobile_client", paramJsonGenerator);
        DeviceSessionArg.a.a.a(RevokeDeviceSessionArg.c(paramRevokeDeviceSessionArg), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("desktop_client", paramJsonGenerator);
        RevokeDesktopClientArg.a.a.a(RevokeDeviceSessionArg.b(paramRevokeDeviceSessionArg), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("web_session", paramJsonGenerator);
      DeviceSessionArg.a.a.a(RevokeDeviceSessionArg.a(paramRevokeDeviceSessionArg), paramJsonGenerator, true);
      paramJsonGenerator.writeEndObject();
    }
  }
}
