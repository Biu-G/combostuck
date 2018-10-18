package com.dropbox.core.http;

import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.IOUtil.ReadException;
import com.dropbox.core.util.IOUtil.WriteException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;

public abstract class HttpRequestor
{
  public static final long DEFAULT_CONNECT_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(20L);
  public static final long DEFAULT_READ_TIMEOUT_MILLIS = TimeUnit.MINUTES.toMillis(2L);
  
  public HttpRequestor() {}
  
  public abstract Response doGet(String paramString, Iterable<Header> paramIterable)
    throws IOException;
  
  public abstract Uploader startPost(String paramString, Iterable<Header> paramIterable)
    throws IOException;
  
  public abstract Uploader startPut(String paramString, Iterable<Header> paramIterable)
    throws IOException;
  
  public static final class Header
  {
    private final String a;
    private final String b;
    
    public Header(String paramString1, String paramString2)
    {
      a = paramString1;
      b = paramString2;
    }
    
    public String getKey()
    {
      return a;
    }
    
    public String getValue()
    {
      return b;
    }
  }
  
  public static final class Response
  {
    private final int a;
    private final InputStream b;
    private final Map<String, List<String>> c;
    
    public Response(int paramInt, InputStream paramInputStream, Map<String, ? extends List<String>> paramMap)
    {
      a = paramInt;
      b = paramInputStream;
      c = a(paramMap);
    }
    
    private static final Map<String, List<String>> a(Map<String, ? extends List<String>> paramMap)
    {
      TreeMap localTreeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        if ((localEntry.getKey() != null) && (((String)localEntry.getKey()).trim().length() != 0)) {
          localTreeMap.put(localEntry.getKey(), Collections.unmodifiableList((List)localEntry.getValue()));
        }
      }
      return Collections.unmodifiableMap(localTreeMap);
    }
    
    public InputStream getBody()
    {
      return b;
    }
    
    public Map<String, List<String>> getHeaders()
    {
      return c;
    }
    
    public int getStatusCode()
    {
      return a;
    }
  }
  
  public static abstract class Uploader
  {
    public Uploader() {}
    
    public abstract void abort();
    
    public abstract void close();
    
    public abstract HttpRequestor.Response finish()
      throws IOException;
    
    public abstract OutputStream getBody();
    
    public void upload(File paramFile)
      throws IOException
    {
      try
      {
        upload(new FileInputStream(paramFile));
        return;
      }
      catch (IOUtil.WriteException paramFile)
      {
        throw paramFile.getCause();
      }
      catch (IOUtil.ReadException paramFile)
      {
        throw paramFile.getCause();
      }
    }
    
    public void upload(InputStream paramInputStream)
      throws IOException
    {
      OutputStream localOutputStream = getBody();
      try
      {
        IOUtil.copyStreamToStream(paramInputStream, localOutputStream);
        return;
      }
      finally
      {
        localOutputStream.close();
      }
    }
    
    public void upload(InputStream paramInputStream, long paramLong)
      throws IOException
    {
      upload(IOUtil.limit(paramInputStream, paramLong));
    }
    
    public void upload(byte[] paramArrayOfByte)
      throws IOException
    {
      OutputStream localOutputStream = getBody();
      try
      {
        localOutputStream.write(paramArrayOfByte);
        return;
      }
      finally
      {
        localOutputStream.close();
      }
    }
  }
}
