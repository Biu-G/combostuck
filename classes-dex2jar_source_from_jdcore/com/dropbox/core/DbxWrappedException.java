package com.dropbox.core;

import com.dropbox.core.http.HttpRequestor.Response;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.v2.callbacks.DbxGlobalCallbackFactory;
import com.dropbox.core.v2.callbacks.DbxRouteErrorCallback;
import com.fasterxml.jackson.core.JsonParseException;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class DbxWrappedException
  extends Exception
{
  private static final long serialVersionUID = 0L;
  private final Object a;
  private final String b;
  private final LocalizedText c;
  
  public DbxWrappedException(Object paramObject, String paramString, LocalizedText paramLocalizedText)
  {
    a = paramObject;
    b = paramString;
    c = paramLocalizedText;
  }
  
  public static <T> void executeBlockForObject(DbxGlobalCallbackFactory paramDbxGlobalCallbackFactory, String paramString, T paramT)
  {
    if (paramDbxGlobalCallbackFactory != null)
    {
      paramDbxGlobalCallbackFactory = paramDbxGlobalCallbackFactory.createRouteErrorCallback(paramString, paramT);
      if (paramDbxGlobalCallbackFactory != null)
      {
        paramDbxGlobalCallbackFactory.setRouteError(paramT);
        paramDbxGlobalCallbackFactory.run();
      }
    }
  }
  
  public static void executeOtherBlocks(DbxGlobalCallbackFactory paramDbxGlobalCallbackFactory, String paramString, Object paramObject)
  {
    try
    {
      Object localObject1 = paramObject.getClass();
      int i = 0;
      localObject1 = ((Class)localObject1).getMethod("tag", new Class[0]).invoke(paramObject, new Object[0]);
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append(localObject1.toString().toLowerCase());
      ((StringBuilder)localObject2).append("value");
      localObject1 = ((StringBuilder)localObject2).toString();
      localObject2 = paramObject.getClass().getDeclaredFields();
      int j = localObject2.length;
      while (i < j)
      {
        Object localObject3 = localObject2[i];
        if (localObject3.getName().equalsIgnoreCase((String)localObject1))
        {
          localObject3.setAccessible(true);
          executeBlockForObject(paramDbxGlobalCallbackFactory, paramString, localObject3.get(paramObject));
          return;
        }
        i += 1;
      }
      return;
    }
    catch (Exception paramDbxGlobalCallbackFactory) {}
  }
  
  public static <T> DbxWrappedException fromResponse(StoneSerializer<T> paramStoneSerializer, HttpRequestor.Response paramResponse, String paramString)
    throws IOException, JsonParseException
  {
    String str = DbxRequestUtil.getRequestId(paramResponse);
    paramStoneSerializer = (a)new a.a(paramStoneSerializer).deserialize(paramResponse.getBody());
    paramResponse = paramStoneSerializer.a();
    DbxGlobalCallbackFactory localDbxGlobalCallbackFactory = DbxRequestUtil.sharedCallbackFactory;
    executeBlockForObject(localDbxGlobalCallbackFactory, paramString, paramResponse);
    executeOtherBlocks(localDbxGlobalCallbackFactory, paramString, paramResponse);
    return new DbxWrappedException(paramResponse, str, paramStoneSerializer.b());
  }
  
  public Object getErrorValue()
  {
    return a;
  }
  
  public String getRequestId()
  {
    return b;
  }
  
  public LocalizedText getUserMessage()
  {
    return c;
  }
}
