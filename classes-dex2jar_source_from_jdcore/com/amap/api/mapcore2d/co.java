package com.amap.api.mapcore2d;

public class co
  extends Exception
{
  private String a = "未知的错误";
  private String b = "";
  private String c = "1900";
  private String d = "UnknownError";
  private int e = -1;
  
  public co(String paramString)
  {
    super(paramString);
    a = paramString;
    a(paramString);
  }
  
  public co(String paramString1, String paramString2)
  {
    this(paramString1);
    b = paramString2;
  }
  
  private void a(String paramString)
  {
    if ("IO 操作异常 - IOException".equals(paramString))
    {
      e = 21;
      c = "1902";
      d = "IOException";
      return;
    }
    if ("socket 连接异常 - SocketException".equals(paramString))
    {
      e = 22;
      return;
    }
    if ("socket 连接超时 - SocketTimeoutException".equals(paramString))
    {
      e = 23;
      c = "1802";
      d = "SocketTimeoutException";
      return;
    }
    if ("无效的参数 - IllegalArgumentException".equals(paramString))
    {
      e = 24;
      c = "1901";
      d = "IllegalArgumentException";
      return;
    }
    if ("空指针异常 - NullPointException".equals(paramString))
    {
      e = 25;
      c = "1903";
      d = "NullPointException";
      return;
    }
    if ("url异常 - MalformedURLException".equals(paramString))
    {
      e = 26;
      c = "1803";
      d = "MalformedURLException";
      return;
    }
    if ("未知主机 - UnKnowHostException".equals(paramString))
    {
      e = 27;
      c = "1804";
      d = "UnknownHostException";
      return;
    }
    if ("服务器连接失败 - UnknownServiceException".equals(paramString))
    {
      e = 28;
      c = "1805";
      d = "CannotConnectToHostException";
      return;
    }
    if ("协议解析错误 - ProtocolException".equals(paramString))
    {
      e = 29;
      c = "1801";
      d = "ProtocolException";
      return;
    }
    if ("http连接失败 - ConnectionException".equals(paramString))
    {
      e = 30;
      c = "1806";
      d = "ConnectionException";
      return;
    }
    if ("未知的错误".equals(paramString))
    {
      e = 31;
      return;
    }
    if ("key鉴权失败".equals(paramString))
    {
      e = 32;
      return;
    }
    if ("requeust is null".equals(paramString))
    {
      e = 1;
      return;
    }
    if ("request url is empty".equals(paramString))
    {
      e = 2;
      return;
    }
    if ("response is null".equals(paramString))
    {
      e = 3;
      return;
    }
    if ("thread pool has exception".equals(paramString))
    {
      e = 4;
      return;
    }
    if ("sdk name is invalid".equals(paramString))
    {
      e = 5;
      return;
    }
    if ("sdk info is null".equals(paramString))
    {
      e = 6;
      return;
    }
    if ("sdk packages is null".equals(paramString))
    {
      e = 7;
      return;
    }
    if ("线程池为空".equals(paramString))
    {
      e = 8;
      return;
    }
    if ("获取对象错误".equals(paramString))
    {
      e = 101;
      return;
    }
    e = -1;
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return c;
  }
  
  public String c()
  {
    return d;
  }
  
  public String d()
  {
    return b;
  }
  
  public int e()
  {
    return e;
  }
}
