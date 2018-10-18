package com.dropbox.core;

import javax.servlet.http.HttpSession;

public final class DbxStandardSessionStore
  implements DbxSessionStore
{
  private final HttpSession a;
  private final String b;
  
  public DbxStandardSessionStore(HttpSession paramHttpSession, String paramString)
  {
    a = paramHttpSession;
    b = paramString;
  }
  
  public void clear()
  {
    a.removeAttribute(b);
  }
  
  public String get()
  {
    Object localObject = a.getAttribute(b);
    if ((localObject instanceof String)) {
      return (String)localObject;
    }
    return null;
  }
  
  public String getKey()
  {
    return b;
  }
  
  public HttpSession getSession()
  {
    return a;
  }
  
  public void set(String paramString)
  {
    a.setAttribute(b, paramString);
  }
}
