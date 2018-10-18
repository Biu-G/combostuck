package com.dropbox.core.http;

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
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Dispatcher;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.OkHttpClient.Builder;
import okhttp3.Request.Builder;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.BufferedSink;

public class OkHttp3Requestor
  extends HttpRequestor
{
  private final OkHttpClient a;
  
  public OkHttp3Requestor(OkHttpClient paramOkHttpClient)
  {
    if (paramOkHttpClient != null)
    {
      OkHttpUtil.a(paramOkHttpClient.dispatcher().executorService());
      a = paramOkHttpClient;
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
    return defaultOkHttpClientBuilder().build();
  }
  
  public static OkHttpClient.Builder defaultOkHttpClientBuilder()
  {
    return new OkHttpClient.Builder().connectTimeout(DEFAULT_CONNECT_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS).readTimeout(DEFAULT_READ_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS).writeTimeout(DEFAULT_READ_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS).sslSocketFactory(SSLConfig.getSSLSocketFactory(), SSLConfig.getTrustManager());
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
    private OkHttp3Requestor.b a;
    private IOException b;
    private Response c;
    
    private AsyncCallback(OkHttp3Requestor.b paramB)
    {
      a = paramB;
      b = null;
      c = null;
    }
    
    public Response getResponse()
      throws IOException
    {
      for (;;)
      {
        Response localResponse;
        try
        {
          if (b == null)
          {
            localResponse = c;
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
      if (b == null)
      {
        localResponse = c;
        return localResponse;
      }
      throw b;
    }
    
    public void onFailure(Call paramCall, IOException paramIOException)
    {
      try
      {
        b = paramIOException;
        a.close();
        notifyAll();
        return;
      }
      finally
      {
        paramCall = finally;
        throw paramCall;
      }
    }
    
    public void onResponse(Call paramCall, Response paramResponse)
      throws IOException
    {
      try
      {
        c = paramResponse;
        notifyAll();
        return;
      }
      finally
      {
        paramCall = finally;
        throw paramCall;
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
    private OkHttp3Requestor.AsyncCallback f;
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
        break label77;
        e = OkHttp3Requestor.a(OkHttp3Requestor.this).newCall(c.build());
        localResponse = e.execute();
        label77:
        localResponse = interceptResponse(localResponse);
        Map localMap = OkHttp3Requestor.a(localResponse.headers());
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
      if ((d instanceof OkHttp3Requestor.b)) {
        return ((OkHttp3Requestor.b)d).a();
      }
      OkHttp3Requestor.b localB = new OkHttp3Requestor.b();
      a(localB);
      f = new OkHttp3Requestor.AsyncCallback(localB, null);
      e = OkHttp3Requestor.a(OkHttp3Requestor.this).newCall(c.build());
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
    
    public long contentLength()
    {
      return -1L;
    }
    
    public MediaType contentType()
    {
      return null;
    }
    
    public void writeTo(BufferedSink paramBufferedSink)
      throws IOException
    {
      a.writeTo(paramBufferedSink);
      close();
    }
  }
}
