package com.dropbox.core.v2;

import com.dropbox.core.BadResponseException;
import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.NetworkIOException;
import com.dropbox.core.RetryException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.http.HttpRequestor.Header;
import com.dropbox.core.http.HttpRequestor.Response;
import com.dropbox.core.http.HttpRequestor.Uploader;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.common.PathRoot;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

public abstract class DbxRawClientV2
{
  public static final String USER_AGENT_ID = "OfficialDropboxJavaSDKv2";
  private static final JsonFactory a = new JsonFactory();
  private static final Random b = new Random();
  private final DbxRequestConfig c;
  private final DbxHost d;
  private final String e;
  private final PathRoot f;
  
  protected DbxRawClientV2(DbxRequestConfig paramDbxRequestConfig, DbxHost paramDbxHost, String paramString, PathRoot paramPathRoot)
  {
    if (paramDbxRequestConfig != null)
    {
      if (paramDbxHost != null)
      {
        c = paramDbxRequestConfig;
        d = paramDbxHost;
        e = paramString;
        f = paramPathRoot;
        return;
      }
      throw new NullPointerException("host");
    }
    throw new NullPointerException("requestConfig");
  }
  
  private static <T> T a(int paramInt, a<T> paramA)
    throws DbxWrappedException, DbxException
  {
    if (paramInt == 0) {
      return paramA.a();
    }
    int i = 0;
    try
    {
      Object localObject = paramA.a();
      return localObject;
    }
    catch (RetryException localRetryException)
    {
      while (i < paramInt)
      {
        i += 1;
        a(localRetryException.getBackoffMillis());
      }
      throw localRetryException;
    }
  }
  
  private static void a(long paramLong)
  {
    paramLong += b.nextInt(1000);
    if (paramLong <= 0L) {
      return;
    }
    try
    {
      Thread.sleep(paramLong);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
    Thread.currentThread().interrupt();
  }
  
  private static <T> byte[] a(StoneSerializer<T> paramStoneSerializer, T paramT)
    throws DbxException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      paramStoneSerializer.serialize(paramT, localByteArrayOutputStream);
      return localByteArrayOutputStream.toByteArray();
    }
    catch (IOException paramStoneSerializer)
    {
      throw LangUtil.mkAssert("Impossible", paramStoneSerializer);
    }
  }
  
  private static <T> String b(StoneSerializer<T> paramStoneSerializer, T paramT)
  {
    StringWriter localStringWriter = new StringWriter();
    try
    {
      JsonGenerator localJsonGenerator = a.createGenerator(localStringWriter);
      localJsonGenerator.setHighestNonEscapedChar(126);
      paramStoneSerializer.serialize(paramT, localJsonGenerator);
      localJsonGenerator.flush();
      return localStringWriter.toString();
    }
    catch (IOException paramStoneSerializer)
    {
      throw LangUtil.mkAssert("Impossible", paramStoneSerializer);
    }
  }
  
  protected abstract void addAuthHeaders(List<HttpRequestor.Header> paramList);
  
  public <ArgT, ResT, ErrT> DbxDownloader<ResT> downloadStyle(final String paramString1, final String paramString2, ArgT paramArgT, boolean paramBoolean, final List<HttpRequestor.Header> paramList, StoneSerializer<ArgT> paramStoneSerializer, final StoneSerializer<ResT> paramStoneSerializer1, final StoneSerializer<ErrT> paramStoneSerializer2)
    throws DbxWrappedException, DbxException
  {
    paramList = new ArrayList(paramList);
    if (!paramBoolean) {
      addAuthHeaders(paramList);
    }
    DbxRequestUtil.addUserLocaleHeader(paramList, c);
    DbxRequestUtil.addPathRootHeader(paramList, f);
    paramList.add(new HttpRequestor.Header("Dropbox-API-Arg", b(paramStoneSerializer, paramArgT)));
    paramList.add(new HttpRequestor.Header("Content-Type", ""));
    (DbxDownloader)a(c.getMaxRetries(), 2.a(new a()
    {
      private String h;
      
      private DbxRawClientV2.a<DbxDownloader<ResT>> a(String paramAnonymousString)
      {
        h = paramAnonymousString;
        return this;
      }
      
      public DbxDownloader<ResT> b()
        throws DbxWrappedException, DbxException
      {
        HttpRequestor.Response localResponse = DbxRequestUtil.startPostRaw(DbxRawClientV2.a(DbxRawClientV2.this), "OfficialDropboxJavaSDKv2", paramString1, paramString2, c, paramList);
        String str = DbxRequestUtil.getRequestId(localResponse);
        try
        {
          int i = localResponse.getStatusCode();
          if ((i != 200) && (i != 206))
          {
            if (i != 409) {
              throw DbxRequestUtil.unexpectedStatus(localResponse, h);
            }
            throw DbxWrappedException.fromResponse(paramStoneSerializer2, localResponse, h);
          }
          localObject = (List)localResponse.getHeaders().get("dropbox-api-result");
          if (localObject != null)
          {
            if (((List)localObject).size() != 0)
            {
              localObject = (String)((List)localObject).get(0);
              if (localObject != null) {
                return new DbxDownloader(paramStoneSerializer1.deserialize((String)localObject), localResponse.getBody());
              }
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("Null Dropbox-API-Result header; ");
              ((StringBuilder)localObject).append(localResponse.getHeaders());
              throw new BadResponseException(str, ((StringBuilder)localObject).toString());
            }
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("No Dropbox-API-Result header; ");
            ((StringBuilder)localObject).append(localResponse.getHeaders());
            throw new BadResponseException(str, ((StringBuilder)localObject).toString());
          }
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Missing Dropbox-API-Result header; ");
          ((StringBuilder)localObject).append(localResponse.getHeaders());
          throw new BadResponseException(str, ((StringBuilder)localObject).toString());
        }
        catch (IOException localIOException)
        {
          throw new NetworkIOException(localIOException);
        }
        catch (JsonProcessingException localJsonProcessingException)
        {
          Object localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Bad JSON: ");
          ((StringBuilder)localObject).append(localJsonProcessingException.getMessage());
          throw new BadResponseException(localIOException, ((StringBuilder)localObject).toString(), localJsonProcessingException);
        }
      }
    }, e));
  }
  
  public DbxHost getHost()
  {
    return d;
  }
  
  public DbxRequestConfig getRequestConfig()
  {
    return c;
  }
  
  public String getUserId()
  {
    return e;
  }
  
  public <ArgT, ResT, ErrT> ResT rpcStyle(final String paramString1, final String paramString2, final ArgT paramArgT, boolean paramBoolean, final StoneSerializer<ArgT> paramStoneSerializer, final StoneSerializer<ResT> paramStoneSerializer1, final StoneSerializer<ErrT> paramStoneSerializer2)
    throws DbxWrappedException, DbxException
  {
    paramArgT = a(paramStoneSerializer, paramArgT);
    paramStoneSerializer = new ArrayList();
    if (!paramBoolean) {
      addAuthHeaders(paramStoneSerializer);
    }
    if (!d.getNotify().equals(paramString1))
    {
      DbxRequestUtil.addUserLocaleHeader(paramStoneSerializer, c);
      DbxRequestUtil.addPathRootHeader(paramStoneSerializer, f);
    }
    paramStoneSerializer.add(new HttpRequestor.Header("Content-Type", "application/json; charset=utf-8"));
    a(c.getMaxRetries(), 1.a(new a()
    {
      private String h;
      
      private DbxRawClientV2.a<ResT> a(String paramAnonymousString)
      {
        h = paramAnonymousString;
        return this;
      }
      
      public ResT a()
        throws DbxWrappedException, DbxException
      {
        Object localObject2 = DbxRequestUtil.startPostRaw(DbxRawClientV2.a(DbxRawClientV2.this), "OfficialDropboxJavaSDKv2", paramString1, paramString2, paramArgT, paramStoneSerializer);
        try
        {
          int i = ((HttpRequestor.Response)localObject2).getStatusCode();
          if (i != 200)
          {
            if (i != 409) {
              throw DbxRequestUtil.unexpectedStatus((HttpRequestor.Response)localObject2, h);
            }
            throw DbxWrappedException.fromResponse(paramStoneSerializer2, (HttpRequestor.Response)localObject2, h);
          }
          Object localObject1 = paramStoneSerializer1.deserialize(((HttpRequestor.Response)localObject2).getBody());
          return localObject1;
        }
        catch (IOException localIOException)
        {
          throw new NetworkIOException(localIOException);
        }
        catch (JsonProcessingException localJsonProcessingException)
        {
          localObject2 = DbxRequestUtil.getRequestId((HttpRequestor.Response)localObject2);
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Bad JSON: ");
          localStringBuilder.append(localJsonProcessingException.getMessage());
          throw new BadResponseException((String)localObject2, localStringBuilder.toString(), localJsonProcessingException);
        }
      }
    }, e));
  }
  
  public <ArgT> HttpRequestor.Uploader uploadStyle(String paramString1, String paramString2, ArgT paramArgT, boolean paramBoolean, StoneSerializer<ArgT> paramStoneSerializer)
    throws DbxException
  {
    paramString1 = DbxRequestUtil.buildUri(paramString1, paramString2);
    paramString2 = new ArrayList();
    if (!paramBoolean) {
      addAuthHeaders(paramString2);
    }
    DbxRequestUtil.addUserLocaleHeader(paramString2, c);
    DbxRequestUtil.addPathRootHeader(paramString2, f);
    paramString2.add(new HttpRequestor.Header("Content-Type", "application/octet-stream"));
    paramString2 = DbxRequestUtil.addUserAgentHeader(paramString2, c, "OfficialDropboxJavaSDKv2");
    paramString2.add(new HttpRequestor.Header("Dropbox-API-Arg", b(paramStoneSerializer, paramArgT)));
    try
    {
      paramString1 = c.getHttpRequestor().startPost(paramString1, paramString2);
      return paramString1;
    }
    catch (IOException paramString1)
    {
      throw new NetworkIOException(paramString1);
    }
  }
  
  protected abstract DbxRawClientV2 withPathRoot(PathRoot paramPathRoot);
  
  private static abstract interface a<T>
  {
    public abstract T a()
      throws DbxWrappedException, DbxException;
  }
}
