package com.dropbox.core.http;

import com.squareup.okhttp.Call;
import com.squareup.okhttp.Callback;
import com.squareup.okhttp.Dispatcher;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Request.Builder;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public class OkHttpRequestor
  extends HttpRequestor
{
  private final OkHttpClient a;
  
  public OkHttpRequestor(OkHttpClient paramOkHttpClient)
  {
    if (paramOkHttpClient != null)
    {
      OkHttpUtil.a(paramOkHttpClient.getDispatcher().getExecutorService());
      a = paramOkHttpClient.clone();
      return;
    }
    throw new NullPointerException("client");
  }
  
  private a a(String paramString1, Iterable<HttpRequestor.Header> paramIterable, String paramString2)
  {
    paramString1 = new Request.Builder().url(paramString1);
    a(paramIterable, paramString1);
    return new a(paramString2, paramString1);
  }
  
  private static void a(Iterable<HttpRequestor.Header> paramIterable, Request.Builder paramBuilder)
  {
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      HttpRequestor.Header localHeader = (HttpRequestor.Header)paramIterable.next();
      paramBuilder.addHeader(localHeader.getKey(), localHeader.getValue());
    }
  }
  
  private static Map<String, List<String>> b(Headers paramHeaders)
  {
    HashMap localHashMap = new HashMap(paramHeaders.size());
    Iterator localIterator = paramHeaders.names().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, paramHeaders.values(str));
    }
    return localHashMap;
  }
  
  public static OkHttpClient defaultOkHttpClient()
  {
    OkHttpClient localOkHttpClient = new OkHttpClient();
    localOkHttpClient.setConnectTimeout(DEFAULT_CONNECT_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
    localOkHttpClient.setReadTimeout(DEFAULT_READ_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
    localOkHttpClient.setWriteTimeout(DEFAULT_READ_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
    localOkHttpClient.setSslSocketFactory(SSLConfig.getSSLSocketFactory());
    return localOkHttpClient;
  }
  
  protected void configureRequest(Request.Builder paramBuilder) {}
  
  public HttpRequestor.Response doGet(String paramString, Iterable<HttpRequestor.Header> paramIterable)
    throws IOException
  {
    paramString = new Request.Builder().get().url(paramString);
    a(paramIterable, paramString);
    configureRequest(paramString);
    paramString = interceptResponse(a.newCall(paramString.build()).execute());
    paramIterable = b(paramString.headers());
    return new HttpRequestor.Response(paramString.code(), paramString.body().byteStream(), paramIterable);
  }
  
  public OkHttpClient getClient()
  {
    return a;
  }
  
  protected Response interceptResponse(Response paramResponse)
  {
    return paramResponse;
  }
  
  public HttpRequestor.Uploader startPost(String paramString, Iterable<HttpRequestor.Header> paramIterable)
    throws IOException
  {
    return a(paramString, paramIterable, "POST");
  }
  
  public HttpRequestor.Uploader startPut(String paramString, Iterable<HttpRequestor.Header> paramIterable)
    throws IOException
  {
    return a(paramString, paramIterable, "PUT");
  }
  
  public static final class AsyncCallback
    implements Callback
  {
    private IOException a = null;
    private Response b = null;
    
    private AsyncCallback() {}
    
    public Response getResponse()
      throws IOException
    {
      for (;;)
      {
        Response localResponse;
        try
        {
          if (a == null)
          {
            localResponse = b;
            if (localResponse != null) {}
          }
        }
        finally {}
        try
        {
          wait();
        }
        catch (InterruptedException localInterruptedException) {}
      }
      Thread.currentThread().interrupt();
      throw new InterruptedIOException();
      if (a == null)
      {
        localResponse = b;
        return localResponse;
      }
      throw a;
    }
    
    public void onFailure(Request paramRequest, IOException paramIOException)
    {
      try
      {
        a = paramIOException;
        notifyAll();
        return;
      }
      finally
      {
        paramRequest = finally;
        throw paramRequest;
      }
    }
    
    public void onResponse(Response paramResponse)
      throws IOException
    {
      try
      {
        b = paramResponse;
        notifyAll();
        return;
      }
      finally
      {
        paramResponse = finally;
        throw paramResponse;
      }
    }
  }
  
  private class a
    extends HttpRequestor.Uploader
  {
    private final String b;
    private final Request.Builder c;
    private RequestBody d;
    private Call e;
    private OkHttpRequestor.AsyncCallback f;
    private boolean g;
    private boolean h;
    
    public a(String paramString, Request.Builder paramBuilder)
    {
      b = paramString;
      c = paramBuilder;
      d = null;
      e = null;
      f = null;
      g = false;
      h = false;
    }
    
    private void a()
    {
      if (d == null) {
        return;
      }
      throw new IllegalStateException("Request body already set.");
    }
    
    private void a(RequestBody paramRequestBody)
    {
      a();
      d = paramRequestBody;
      c.method(b, paramRequestBody);
      configureRequest(c);
    }
    
    public void abort()
    {
      if (e != null) {
        e.cancel();
      }
      h = true;
      close();
    }
    
    public void close()
    {
      if ((d != null) && ((d instanceof Closeable))) {}
      try
      {
        ((Closeable)d).close();
        g = true;
        return;
      }
      catch (IOException localIOException)
      {
        for (;;) {}
      }
    }
    
    public HttpRequestor.Response finish()
      throws IOException
    {
      if (!h)
      {
        if (d == null) {
          upload(new byte[0]);
        }
        if (f == null) {}
      }
      try
      {
        getBody().close();
        Response localResponse = f.getResponse();
        break label75;
        e = OkHttpRequestor.a(OkHttpRequestor.this).newCall(c.build());
        localResponse = e.execute();
        label75:
        localResponse = interceptResponse(localResponse);
        Map localMap = OkHttpRequestor.a(localResponse.headers());
        return new HttpRequestor.Response(localResponse.code(), localResponse.body().byteStream(), localMap);
        throw new IllegalStateException("Already aborted");
      }
      catch (IOException localIOException)
      {
        for (;;) {}
      }
    }
    
    public OutputStream getBody()
    {
      if ((d instanceof OkHttpRequestor.b)) {
        return ((OkHttpRequestor.b)d).a();
      }
      OkHttpRequestor.b localB = new OkHttpRequestor.b();
      a(localB);
      f = new OkHttpRequestor.AsyncCallback(null);
      e = OkHttpRequestor.a(OkHttpRequestor.this).newCall(c.build());
      e.enqueue(f);
      return localB.a();
    }
    
    public void upload(File paramFile)
    {
      a(RequestBody.create(null, paramFile));
    }
    
    public void upload(byte[] paramArrayOfByte)
    {
      a(RequestBody.create(null, paramArrayOfByte));
    }
  }
  
  private static class b
    extends RequestBody
    implements Closeable
  {
    private final OkHttpUtil.PipedStream a = new OkHttpUtil.PipedStream();
    
    public b() {}
    
    public OutputStream a()
    {
      return a.getOutputStream();
    }
    
    public void close()
    {
      a.close();
    }
  }
}
