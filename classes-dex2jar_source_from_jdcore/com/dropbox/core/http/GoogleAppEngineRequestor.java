package com.dropbox.core.http;

import com.google.appengine.api.urlfetch.FetchOptions;
import com.google.appengine.api.urlfetch.FetchOptions.Builder;
import com.google.appengine.api.urlfetch.HTTPHeader;
import com.google.appengine.api.urlfetch.HTTPMethod;
import com.google.appengine.api.urlfetch.HTTPRequest;
import com.google.appengine.api.urlfetch.HTTPResponse;
import com.google.appengine.api.urlfetch.URLFetchService;
import com.google.appengine.api.urlfetch.URLFetchServiceFactory;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class GoogleAppEngineRequestor
  extends HttpRequestor
{
  private final URLFetchService a;
  private final FetchOptions b;
  
  public GoogleAppEngineRequestor()
  {
    this(newDefaultOptions());
  }
  
  public GoogleAppEngineRequestor(FetchOptions paramFetchOptions)
  {
    this(paramFetchOptions, URLFetchServiceFactory.getURLFetchService());
  }
  
  public GoogleAppEngineRequestor(FetchOptions paramFetchOptions, URLFetchService paramURLFetchService)
  {
    if (paramFetchOptions != null)
    {
      if (paramURLFetchService != null)
      {
        b = paramFetchOptions;
        a = paramURLFetchService;
        return;
      }
      throw new NullPointerException("service");
    }
    throw new NullPointerException("options");
  }
  
  private HTTPRequest a(String paramString, HTTPMethod paramHTTPMethod, Iterable<HttpRequestor.Header> paramIterable)
    throws IOException
  {
    paramString = new HTTPRequest(new URL(paramString), paramHTTPMethod, b);
    paramHTTPMethod = paramIterable.iterator();
    while (paramHTTPMethod.hasNext())
    {
      paramIterable = (HttpRequestor.Header)paramHTTPMethod.next();
      paramString.addHeader(new HTTPHeader(paramIterable.getKey(), paramIterable.getValue()));
    }
    return paramString;
  }
  
  private static HttpRequestor.Response b(HTTPResponse paramHTTPResponse)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramHTTPResponse.getHeadersUncombined().iterator();
    while (localIterator.hasNext())
    {
      HTTPHeader localHTTPHeader = (HTTPHeader)localIterator.next();
      List localList = (List)localHashMap.get(localHTTPHeader.getName());
      Object localObject = localList;
      if (localList == null)
      {
        localObject = new ArrayList();
        localHashMap.put(localHTTPHeader.getName(), localObject);
      }
      ((List)localObject).add(localHTTPHeader.getValue());
    }
    return new HttpRequestor.Response(paramHTTPResponse.getResponseCode(), new ByteArrayInputStream(paramHTTPResponse.getContent()), localHashMap);
  }
  
  public static FetchOptions newDefaultOptions()
  {
    return FetchOptions.Builder.withDefaults().validateCertificate().doNotFollowRedirects().disallowTruncate().setDeadline(Double.valueOf((DEFAULT_CONNECT_TIMEOUT_MILLIS + DEFAULT_READ_TIMEOUT_MILLIS) / 1000.0D));
  }
  
  public HttpRequestor.Response doGet(String paramString, Iterable<HttpRequestor.Header> paramIterable)
    throws IOException
  {
    paramString = a(paramString, HTTPMethod.GET, paramIterable);
    return b(a.fetch(paramString));
  }
  
  public FetchOptions getOptions()
  {
    return b;
  }
  
  public URLFetchService getService()
  {
    return a;
  }
  
  public HttpRequestor.Uploader startPost(String paramString, Iterable<HttpRequestor.Header> paramIterable)
    throws IOException
  {
    paramString = a(paramString, HTTPMethod.POST, paramIterable);
    return new a(a, paramString, new ByteArrayOutputStream());
  }
  
  public HttpRequestor.Uploader startPut(String paramString, Iterable<HttpRequestor.Header> paramIterable)
    throws IOException
  {
    paramString = a(paramString, HTTPMethod.POST, paramIterable);
    return new a(a, paramString, new ByteArrayOutputStream());
  }
  
  private static class a
    extends HttpRequestor.Uploader
  {
    private final URLFetchService a;
    private final ByteArrayOutputStream b;
    private HTTPRequest c;
    
    public a(URLFetchService paramURLFetchService, HTTPRequest paramHTTPRequest, ByteArrayOutputStream paramByteArrayOutputStream)
    {
      a = paramURLFetchService;
      c = paramHTTPRequest;
      b = paramByteArrayOutputStream;
    }
    
    public void abort()
    {
      if (c != null)
      {
        close();
        return;
      }
      throw new IllegalStateException("Uploader already closed.");
    }
    
    public void close()
    {
      if (c != null) {}
      try
      {
        b.close();
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
      if (c != null)
      {
        c.setPayload(b.toByteArray());
        HttpRequestor.Response localResponse = GoogleAppEngineRequestor.a(a.fetch(c));
        close();
        return localResponse;
      }
      throw new IllegalStateException("Uploader already closed.");
    }
    
    public OutputStream getBody()
    {
      return b;
    }
  }
}
