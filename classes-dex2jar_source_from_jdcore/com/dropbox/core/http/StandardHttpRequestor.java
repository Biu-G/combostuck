package com.dropbox.core.http;

import com.dropbox.core.util.IOUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import javax.net.ssl.HttpsURLConnection;

public class StandardHttpRequestor
  extends HttpRequestor
{
  public static final StandardHttpRequestor INSTANCE = new StandardHttpRequestor(Config.DEFAULT_INSTANCE);
  private static final Logger a = Logger.getLogger(StandardHttpRequestor.class.getCanonicalName());
  private static volatile boolean b = false;
  private final Config c;
  
  public StandardHttpRequestor(Config paramConfig)
  {
    c = paramConfig;
  }
  
  private HttpURLConnection a(String paramString, Iterable<HttpRequestor.Header> paramIterable)
    throws IOException
  {
    paramString = (HttpURLConnection)new URL(paramString).openConnection(c.getProxy());
    paramString.setConnectTimeout((int)c.getConnectTimeoutMillis());
    paramString.setReadTimeout((int)c.getReadTimeoutMillis());
    paramString.setUseCaches(false);
    paramString.setAllowUserInteraction(false);
    Object localObject;
    if ((paramString instanceof HttpsURLConnection))
    {
      localObject = (HttpsURLConnection)paramString;
      SSLConfig.apply((HttpsURLConnection)localObject);
      configureConnection((HttpsURLConnection)localObject);
    }
    else
    {
      a();
    }
    configure(paramString);
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      localObject = (HttpRequestor.Header)paramIterable.next();
      paramString.addRequestProperty(((HttpRequestor.Header)localObject).getKey(), ((HttpRequestor.Header)localObject).getValue());
    }
    return paramString;
  }
  
  private static void a()
  {
    if (!b)
    {
      b = true;
      a.warning("Certificate pinning disabled for HTTPS connections. This is likely because your JRE does not return javax.net.ssl.HttpsURLConnection objects for https network connections. Be aware your app may be prone to man-in-the-middle attacks without proper SSL certificate validation. If you are using Google App Engine, please configure DbxRequestConfig to use GoogleAppEngineRequestor.");
    }
  }
  
  private HttpRequestor.Response b(HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    int i = paramHttpURLConnection.getResponseCode();
    InputStream localInputStream;
    if ((i < 400) && (i != -1)) {
      localInputStream = paramHttpURLConnection.getInputStream();
    } else {
      localInputStream = paramHttpURLConnection.getErrorStream();
    }
    interceptResponse(paramHttpURLConnection);
    return new HttpRequestor.Response(i, localInputStream, paramHttpURLConnection.getHeaderFields());
  }
  
  private static OutputStream c(HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    paramHttpURLConnection.setDoOutput(true);
    return paramHttpURLConnection.getOutputStream();
  }
  
  protected void configure(HttpURLConnection paramHttpURLConnection)
    throws IOException
  {}
  
  @Deprecated
  protected void configureConnection(HttpsURLConnection paramHttpsURLConnection)
    throws IOException
  {}
  
  public HttpRequestor.Response doGet(String paramString, Iterable<HttpRequestor.Header> paramIterable)
    throws IOException
  {
    paramString = a(paramString, paramIterable);
    paramString.setRequestMethod("GET");
    paramString.connect();
    return b(paramString);
  }
  
  protected void interceptResponse(HttpURLConnection paramHttpURLConnection)
    throws IOException
  {}
  
  public a startPost(String paramString, Iterable<HttpRequestor.Header> paramIterable)
    throws IOException
  {
    paramString = a(paramString, paramIterable);
    paramString.setRequestMethod("POST");
    return new a(paramString);
  }
  
  public a startPut(String paramString, Iterable<HttpRequestor.Header> paramIterable)
    throws IOException
  {
    paramString = a(paramString, paramIterable);
    paramString.setRequestMethod("PUT");
    return new a(paramString);
  }
  
  public static final class Config
  {
    public static final Config DEFAULT_INSTANCE = builder().build();
    private final Proxy a;
    private final long b;
    private final long c;
    
    private Config(Proxy paramProxy, long paramLong1, long paramLong2)
    {
      a = paramProxy;
      b = paramLong1;
      c = paramLong2;
    }
    
    public static Builder builder()
    {
      return new Builder(null);
    }
    
    public Builder copy()
    {
      return new Builder(a, b, c, null);
    }
    
    public long getConnectTimeoutMillis()
    {
      return b;
    }
    
    public Proxy getProxy()
    {
      return a;
    }
    
    public long getReadTimeoutMillis()
    {
      return c;
    }
    
    public static final class Builder
    {
      private Proxy a;
      private long b;
      private long c;
      
      private Builder()
      {
        this(Proxy.NO_PROXY, HttpRequestor.DEFAULT_CONNECT_TIMEOUT_MILLIS, HttpRequestor.DEFAULT_READ_TIMEOUT_MILLIS);
      }
      
      private Builder(Proxy paramProxy, long paramLong1, long paramLong2)
      {
        a = paramProxy;
        b = paramLong1;
        c = paramLong2;
      }
      
      private static long a(long paramLong, TimeUnit paramTimeUnit)
      {
        if (paramTimeUnit != null)
        {
          if (paramLong >= 0L)
          {
            paramLong = paramTimeUnit.toMillis(paramLong);
            if (2147483647L >= paramLong) {
              return paramLong;
            }
            throw new IllegalArgumentException("timeout too large, must be less than: 2147483647");
          }
          throw new IllegalArgumentException("timeout must be non-negative");
        }
        throw new NullPointerException("unit");
      }
      
      public StandardHttpRequestor.Config build()
      {
        return new StandardHttpRequestor.Config(a, b, c, null);
      }
      
      public Builder withConnectTimeout(long paramLong, TimeUnit paramTimeUnit)
      {
        b = a(paramLong, paramTimeUnit);
        return this;
      }
      
      public Builder withNoConnectTimeout()
      {
        return withConnectTimeout(0L, TimeUnit.MILLISECONDS);
      }
      
      public Builder withNoReadTimeout()
      {
        return withReadTimeout(0L, TimeUnit.MILLISECONDS);
      }
      
      public Builder withProxy(Proxy paramProxy)
      {
        if (paramProxy != null)
        {
          a = paramProxy;
          return this;
        }
        throw new NullPointerException("proxy");
      }
      
      public Builder withReadTimeout(long paramLong, TimeUnit paramTimeUnit)
      {
        c = a(paramLong, paramTimeUnit);
        return this;
      }
    }
  }
  
  private class a
    extends HttpRequestor.Uploader
  {
    private final OutputStream b;
    private HttpURLConnection c;
    
    public a(HttpURLConnection paramHttpURLConnection)
      throws IOException
    {
      c = paramHttpURLConnection;
      b = StandardHttpRequestor.a(paramHttpURLConnection);
      paramHttpURLConnection.connect();
    }
    
    public void abort()
    {
      if (c != null)
      {
        c.disconnect();
        c = null;
        return;
      }
      throw new IllegalStateException("Can't abort().  Uploader already closed.");
    }
    
    public void close()
    {
      if (c == null) {
        return;
      }
      if (c.getDoOutput()) {}
      try
      {
        IOUtil.closeQuietly(c.getOutputStream());
        c = null;
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
      if (c != null) {
        try
        {
          HttpRequestor.Response localResponse = StandardHttpRequestor.a(StandardHttpRequestor.this, c);
          return localResponse;
        }
        finally
        {
          c = null;
        }
      }
      throw new IllegalStateException("Can't finish().  Uploader already closed.");
    }
    
    public OutputStream getBody()
    {
      return b;
    }
  }
}
