package com.dropbox.core;

import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.http.HttpRequestor.Header;
import com.dropbox.core.http.HttpRequestor.Response;
import com.dropbox.core.http.HttpRequestor.Uploader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.util.StringUtil;
import com.dropbox.core.v2.auth.AccessError;
import com.dropbox.core.v2.auth.AccessError.Serializer;
import com.dropbox.core.v2.callbacks.DbxGlobalCallbackFactory;
import com.dropbox.core.v2.callbacks.DbxNetworkErrorCallback;
import com.dropbox.core.v2.common.PathRoot;
import com.dropbox.core.v2.common.PathRootError;
import com.dropbox.core.v2.common.PathRootError.Serializer;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.nio.charset.CharacterCodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public final class DbxRequestUtil
{
  private static final Random a = new Random();
  public static DbxGlobalCallbackFactory sharedCallbackFactory;
  
  public DbxRequestUtil() {}
  
  private static String a(HttpRequestor.Response paramResponse, String paramString)
    throws NetworkIOException, BadResponseException
  {
    byte[] arrayOfByte = loadErrorBody(paramResponse);
    return parseErrorBody(paramString, paramResponse.getStatusCode(), arrayOfByte);
  }
  
  private static String a(String paramString, String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str1 = "";
    if (paramString != null)
    {
      localStringBuilder.append("locale=");
      localStringBuilder.append(encodeUrlParam(paramString));
      str1 = "&";
    }
    if (paramArrayOfString != null)
    {
      if (paramArrayOfString.length % 2 == 0)
      {
        int i = 0;
        for (;;)
        {
          if (i >= paramArrayOfString.length) {
            break label210;
          }
          String str2 = paramArrayOfString[i];
          String str3 = paramArrayOfString[(i + 1)];
          if (str2 == null) {
            break;
          }
          paramString = str1;
          if (str3 != null)
          {
            localStringBuilder.append(str1);
            paramString = "&";
            localStringBuilder.append(encodeUrlParam(str2));
            localStringBuilder.append("=");
            localStringBuilder.append(encodeUrlParam(str3));
          }
          i += 2;
          str1 = paramString;
        }
        paramString = new StringBuilder();
        paramString.append("params[");
        paramString.append(i);
        paramString.append("] is null");
        throw new IllegalArgumentException(paramString.toString());
      }
      paramString = new StringBuilder();
      paramString.append("'params.length' is ");
      paramString.append(paramArrayOfString.length);
      paramString.append("; expecting a multiple of two");
      throw new IllegalArgumentException(paramString.toString());
    }
    label210:
    return localStringBuilder.toString();
  }
  
  private static List<HttpRequestor.Header> a(List<HttpRequestor.Header> paramList)
  {
    if (paramList == null) {
      return new ArrayList();
    }
    return new ArrayList(paramList);
  }
  
  static String[] a(Map<String, String> paramMap)
  {
    String[] arrayOfString = new String[paramMap.size() * 2];
    paramMap = paramMap.entrySet().iterator();
    int i = 0;
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      arrayOfString[i] = ((String)localEntry.getKey());
      arrayOfString[(i + 1)] = ((String)localEntry.getValue());
      i += 2;
    }
    return arrayOfString;
  }
  
  public static List<HttpRequestor.Header> addAuthHeader(List<HttpRequestor.Header> paramList, String paramString)
  {
    if (paramString != null)
    {
      Object localObject = paramList;
      if (paramList == null) {
        localObject = new ArrayList();
      }
      paramList = new StringBuilder();
      paramList.append("Bearer ");
      paramList.append(paramString);
      ((List)localObject).add(new HttpRequestor.Header("Authorization", paramList.toString()));
      return localObject;
    }
    throw new NullPointerException("accessToken");
  }
  
  public static List<HttpRequestor.Header> addBasicAuthHeader(List<HttpRequestor.Header> paramList, String paramString1, String paramString2)
  {
    if (paramString1 != null)
    {
      if (paramString2 != null)
      {
        Object localObject = paramList;
        if (paramList == null) {
          localObject = new ArrayList();
        }
        paramList = new StringBuilder();
        paramList.append(paramString1);
        paramList.append(":");
        paramList.append(paramString2);
        paramList = StringUtil.base64Encode(StringUtil.stringToUtf8(paramList.toString()));
        paramString1 = new StringBuilder();
        paramString1.append("Basic ");
        paramString1.append(paramList);
        ((List)localObject).add(new HttpRequestor.Header("Authorization", paramString1.toString()));
        return localObject;
      }
      throw new NullPointerException("password");
    }
    throw new NullPointerException("username");
  }
  
  public static List<HttpRequestor.Header> addPathRootHeader(List<HttpRequestor.Header> paramList, PathRoot paramPathRoot)
  {
    if (paramPathRoot == null) {
      return paramList;
    }
    Object localObject = paramList;
    if (paramList == null) {
      localObject = new ArrayList();
    }
    ((List)localObject).add(new HttpRequestor.Header("Dropbox-API-Path-Root", paramPathRoot.toString()));
    return localObject;
  }
  
  public static List<HttpRequestor.Header> addSelectAdminHeader(List<HttpRequestor.Header> paramList, String paramString)
  {
    if (paramString != null)
    {
      Object localObject = paramList;
      if (paramList == null) {
        localObject = new ArrayList();
      }
      ((List)localObject).add(new HttpRequestor.Header("Dropbox-API-Select-Admin", paramString));
      return localObject;
    }
    throw new NullPointerException("adminId");
  }
  
  public static List<HttpRequestor.Header> addSelectUserHeader(List<HttpRequestor.Header> paramList, String paramString)
  {
    if (paramString != null)
    {
      Object localObject = paramList;
      if (paramList == null) {
        localObject = new ArrayList();
      }
      ((List)localObject).add(new HttpRequestor.Header("Dropbox-API-Select-User", paramString));
      return localObject;
    }
    throw new NullPointerException("memberId");
  }
  
  public static List<HttpRequestor.Header> addUserAgentHeader(List<HttpRequestor.Header> paramList, DbxRequestConfig paramDbxRequestConfig, String paramString)
  {
    Object localObject = paramList;
    if (paramList == null) {
      localObject = new ArrayList();
    }
    ((List)localObject).add(buildUserAgentHeader(paramDbxRequestConfig, paramString));
    return localObject;
  }
  
  public static List<HttpRequestor.Header> addUserLocaleHeader(List<HttpRequestor.Header> paramList, DbxRequestConfig paramDbxRequestConfig)
  {
    if (paramDbxRequestConfig.getUserLocale() == null) {
      return paramList;
    }
    Object localObject = paramList;
    if (paramList == null) {
      localObject = new ArrayList();
    }
    ((List)localObject).add(new HttpRequestor.Header("Dropbox-API-User-Locale", paramDbxRequestConfig.getUserLocale()));
    return localObject;
  }
  
  public static String buildUri(String paramString1, String paramString2)
  {
    try
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("/");
      ((StringBuilder)localObject).append(paramString2);
      localObject = new URI("https", paramString1, ((StringBuilder)localObject).toString(), null).toASCIIString();
      return localObject;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("URI creation failed, host=");
      localStringBuilder.append(StringUtil.jq(paramString1));
      localStringBuilder.append(", path=");
      localStringBuilder.append(StringUtil.jq(paramString2));
      throw LangUtil.mkAssert(localStringBuilder.toString(), localURISyntaxException);
    }
  }
  
  public static String buildUrlWithParams(String paramString1, String paramString2, String paramString3, String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(buildUri(paramString2, paramString3));
    localStringBuilder.append("?");
    localStringBuilder.append(a(paramString1, paramArrayOfString));
    return localStringBuilder.toString();
  }
  
  public static HttpRequestor.Header buildUserAgentHeader(DbxRequestConfig paramDbxRequestConfig, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramDbxRequestConfig.getClientIdentifier());
    localStringBuilder.append(" ");
    localStringBuilder.append(paramString);
    localStringBuilder.append("/");
    localStringBuilder.append(DbxSdkVersion.Version);
    return new HttpRequestor.Header("User-Agent", localStringBuilder.toString());
  }
  
  public static <T> T doGet(DbxRequestConfig paramDbxRequestConfig, final String paramString1, final String paramString2, final String paramString3, final String paramString4, final String[] paramArrayOfString, final List<HttpRequestor.Header> paramList, final ResponseHandler<T> paramResponseHandler)
    throws DbxException
  {
    runAndRetry(paramDbxRequestConfig.getMaxRetries(), new RequestMaker()
    {
      /* Error */
      public T run()
        throws DbxException
      {
        // Byte code:
        //   0: aload_0
        //   1: getfield 27	com/dropbox/core/DbxRequestUtil$1:a	Lcom/dropbox/core/DbxRequestConfig;
        //   4: aload_0
        //   5: getfield 29	com/dropbox/core/DbxRequestUtil$1:b	Ljava/lang/String;
        //   8: aload_0
        //   9: getfield 31	com/dropbox/core/DbxRequestUtil$1:c	Ljava/lang/String;
        //   12: aload_0
        //   13: getfield 33	com/dropbox/core/DbxRequestUtil$1:d	Ljava/lang/String;
        //   16: aload_0
        //   17: getfield 35	com/dropbox/core/DbxRequestUtil$1:e	Ljava/lang/String;
        //   20: aload_0
        //   21: getfield 37	com/dropbox/core/DbxRequestUtil$1:f	[Ljava/lang/String;
        //   24: aload_0
        //   25: getfield 39	com/dropbox/core/DbxRequestUtil$1:g	Ljava/util/List;
        //   28: invokestatic 55	com/dropbox/core/DbxRequestUtil:startGet	(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;
        //   31: astore_1
        //   32: aload_0
        //   33: getfield 41	com/dropbox/core/DbxRequestUtil$1:h	Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;
        //   36: aload_1
        //   37: invokevirtual 61	com/dropbox/core/DbxRequestUtil$ResponseHandler:handle	(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;
        //   40: astore_2
        //   41: aload_1
        //   42: invokevirtual 67	com/dropbox/core/http/HttpRequestor$Response:getBody	()Ljava/io/InputStream;
        //   45: invokevirtual 72	java/io/InputStream:close	()V
        //   48: aload_2
        //   49: areturn
        //   50: astore_1
        //   51: new 74	com/dropbox/core/NetworkIOException
        //   54: dup
        //   55: aload_1
        //   56: invokespecial 77	com/dropbox/core/NetworkIOException:<init>	(Ljava/io/IOException;)V
        //   59: athrow
        //   60: astore_2
        //   61: aload_1
        //   62: invokevirtual 67	com/dropbox/core/http/HttpRequestor$Response:getBody	()Ljava/io/InputStream;
        //   65: invokevirtual 72	java/io/InputStream:close	()V
        //   68: aload_2
        //   69: athrow
        //   70: astore_1
        //   71: new 74	com/dropbox/core/NetworkIOException
        //   74: dup
        //   75: aload_1
        //   76: invokespecial 77	com/dropbox/core/NetworkIOException:<init>	(Ljava/io/IOException;)V
        //   79: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	80	0	this	1
        //   31	11	1	localResponse	HttpRequestor.Response
        //   50	12	1	localIOException1	IOException
        //   70	6	1	localIOException2	IOException
        //   40	9	2	localObject1	Object
        //   60	9	2	localObject2	Object
        // Exception table:
        //   from	to	target	type
        //   41	48	50	java/io/IOException
        //   32	41	60	finally
        //   61	68	70	java/io/IOException
      }
    });
  }
  
  public static <T> T doPost(DbxRequestConfig paramDbxRequestConfig, String paramString1, String paramString2, String paramString3, String paramString4, String[] paramArrayOfString, List<HttpRequestor.Header> paramList, ResponseHandler<T> paramResponseHandler)
    throws DbxException
  {
    return doPostNoAuth(paramDbxRequestConfig, paramString2, paramString3, paramString4, paramArrayOfString, addAuthHeader(a(paramList), paramString1), paramResponseHandler);
  }
  
  public static <T> T doPostNoAuth(DbxRequestConfig paramDbxRequestConfig, final String paramString1, final String paramString2, final String paramString3, final String[] paramArrayOfString, final List<HttpRequestor.Header> paramList, final ResponseHandler<T> paramResponseHandler)
    throws DbxException
  {
    runAndRetry(paramDbxRequestConfig.getMaxRetries(), new RequestMaker()
    {
      public T run()
        throws DbxException
      {
        return DbxRequestUtil.finishResponse(DbxRequestUtil.startPostNoAuth(a, paramString1, paramString2, paramString3, paramArrayOfString, paramList), paramResponseHandler);
      }
    });
  }
  
  public static String encodeUrlParam(String paramString)
  {
    try
    {
      paramString = URLEncoder.encode(paramString, "UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw LangUtil.mkAssert("UTF-8 should always be supported", paramString);
    }
  }
  
  public static <T> T finishResponse(HttpRequestor.Response paramResponse, ResponseHandler<T> paramResponseHandler)
    throws DbxException
  {
    try
    {
      paramResponseHandler = paramResponseHandler.handle(paramResponse);
      return paramResponseHandler;
    }
    finally
    {
      IOUtil.closeInput(paramResponse.getBody());
    }
  }
  
  public static String getFirstHeader(HttpRequestor.Response paramResponse, String paramString)
    throws BadResponseException
  {
    Object localObject = (List)paramResponse.getHeaders().get(paramString);
    if ((localObject != null) && (!((List)localObject).isEmpty())) {
      return (String)((List)localObject).get(0);
    }
    paramResponse = getRequestId(paramResponse);
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("missing HTTP header \"");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append("\"");
    throw new BadResponseException(paramResponse, ((StringBuilder)localObject).toString());
  }
  
  public static String getFirstHeaderMaybe(HttpRequestor.Response paramResponse, String paramString)
  {
    paramResponse = (List)paramResponse.getHeaders().get(paramString);
    if ((paramResponse != null) && (!paramResponse.isEmpty())) {
      return (String)paramResponse.get(0);
    }
    return null;
  }
  
  public static String getRequestId(HttpRequestor.Response paramResponse)
  {
    return getFirstHeaderMaybe(paramResponse, "X-Dropbox-Request-Id");
  }
  
  public static byte[] loadErrorBody(HttpRequestor.Response paramResponse)
    throws NetworkIOException
  {
    if (paramResponse.getBody() == null) {
      return new byte[0];
    }
    try
    {
      paramResponse = IOUtil.slurp(paramResponse.getBody(), 4096);
      return paramResponse;
    }
    catch (IOException paramResponse)
    {
      throw new NetworkIOException(paramResponse);
    }
  }
  
  public static String parseErrorBody(String paramString, int paramInt, byte[] paramArrayOfByte)
    throws BadResponseException
  {
    try
    {
      paramArrayOfByte = StringUtil.utf8ToString(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (CharacterCodingException paramArrayOfByte)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Got non-UTF8 response body: ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(": ");
      localStringBuilder.append(paramArrayOfByte.getMessage());
      throw new BadResponseException(paramString, localStringBuilder.toString());
    }
  }
  
  public static <T> T readJsonFromResponse(JsonReader<T> paramJsonReader, HttpRequestor.Response paramResponse)
    throws BadResponseException, NetworkIOException
  {
    try
    {
      paramJsonReader = paramJsonReader.readFully(paramResponse.getBody());
      return paramJsonReader;
    }
    catch (IOException paramJsonReader)
    {
      throw new NetworkIOException(paramJsonReader);
    }
    catch (JsonReadException paramJsonReader)
    {
      paramResponse = getRequestId(paramResponse);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("error in response JSON: ");
      localStringBuilder.append(paramJsonReader.getMessage());
      throw new BadResponseException(paramResponse, localStringBuilder.toString(), paramJsonReader);
    }
  }
  
  public static <T, E extends Throwable> T runAndRetry(int paramInt, RequestMaker<T, E> paramRequestMaker)
    throws DbxException, Throwable
  {
    int i = 0;
    for (;;)
    {
      long l;
      try
      {
        Object localObject = paramRequestMaker.run();
        return localObject;
      }
      catch (ServerException localServerException)
      {
        l = 0L;
      }
      catch (RetryException localRetryException)
      {
        l = localRetryException.getBackoffMillis();
      }
      if (i >= paramInt) {
        break;
      }
      l += a.nextInt(1000);
      if (l > 0L) {}
      try
      {
        Thread.sleep(l);
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;) {}
      }
      Thread.currentThread().interrupt();
      i += 1;
    }
    throw localRetryException;
  }
  
  public static HttpRequestor.Response startGet(DbxRequestConfig paramDbxRequestConfig, String paramString1, String paramString2, String paramString3, String paramString4, String[] paramArrayOfString, List<HttpRequestor.Header> paramList)
    throws NetworkIOException
  {
    paramString1 = addAuthHeader(addUserAgentHeader(a(paramList), paramDbxRequestConfig, paramString2), paramString1);
    paramString2 = buildUrlWithParams(paramDbxRequestConfig.getUserLocale(), paramString3, paramString4, paramArrayOfString);
    try
    {
      paramDbxRequestConfig = paramDbxRequestConfig.getHttpRequestor().doGet(paramString2, paramString1);
      return paramDbxRequestConfig;
    }
    catch (IOException paramDbxRequestConfig)
    {
      throw new NetworkIOException(paramDbxRequestConfig);
    }
  }
  
  public static HttpRequestor.Response startPostNoAuth(DbxRequestConfig paramDbxRequestConfig, String paramString1, String paramString2, String paramString3, String[] paramArrayOfString, List<HttpRequestor.Header> paramList)
    throws NetworkIOException
  {
    paramArrayOfString = StringUtil.stringToUtf8(a(paramDbxRequestConfig.getUserLocale(), paramArrayOfString));
    paramList = a(paramList);
    paramList.add(new HttpRequestor.Header("Content-Type", "application/x-www-form-urlencoded; charset=utf-8"));
    return startPostRaw(paramDbxRequestConfig, paramString1, paramString2, paramString3, paramArrayOfString, paramList);
  }
  
  /* Error */
  public static HttpRequestor.Response startPostRaw(DbxRequestConfig paramDbxRequestConfig, String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte, List<HttpRequestor.Header> paramList)
    throws NetworkIOException
  {
    // Byte code:
    //   0: aload_2
    //   1: aload_3
    //   2: invokestatic 247	com/dropbox/core/DbxRequestUtil:buildUri	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   5: astore_2
    //   6: aload 5
    //   8: invokestatic 282	com/dropbox/core/DbxRequestUtil:a	(Ljava/util/List;)Ljava/util/List;
    //   11: aload_0
    //   12: aload_1
    //   13: invokestatic 424	com/dropbox/core/DbxRequestUtil:addUserAgentHeader	(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)Ljava/util/List;
    //   16: astore_1
    //   17: aload_1
    //   18: new 141	com/dropbox/core/http/HttpRequestor$Header
    //   21: dup
    //   22: ldc_w 449
    //   25: aload 4
    //   27: arraylength
    //   28: invokestatic 454	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   31: invokespecial 146	com/dropbox/core/http/HttpRequestor$Header:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   34: invokeinterface 152 2 0
    //   39: pop
    //   40: aload_0
    //   41: invokevirtual 430	com/dropbox/core/DbxRequestConfig:getHttpRequestor	()Lcom/dropbox/core/http/HttpRequestor;
    //   44: aload_2
    //   45: aload_1
    //   46: invokevirtual 458	com/dropbox/core/http/HttpRequestor:startPost	(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    //   49: astore_0
    //   50: aload_0
    //   51: aload 4
    //   53: invokevirtual 464	com/dropbox/core/http/HttpRequestor$Uploader:upload	([B)V
    //   56: aload_0
    //   57: invokevirtual 468	com/dropbox/core/http/HttpRequestor$Uploader:finish	()Lcom/dropbox/core/http/HttpRequestor$Response;
    //   60: astore_1
    //   61: aload_0
    //   62: invokevirtual 471	com/dropbox/core/http/HttpRequestor$Uploader:close	()V
    //   65: aload_1
    //   66: areturn
    //   67: astore_1
    //   68: aload_0
    //   69: invokevirtual 471	com/dropbox/core/http/HttpRequestor$Uploader:close	()V
    //   72: aload_1
    //   73: athrow
    //   74: astore_0
    //   75: new 32	com/dropbox/core/NetworkIOException
    //   78: dup
    //   79: aload_0
    //   80: invokespecial 358	com/dropbox/core/NetworkIOException:<init>	(Ljava/io/IOException;)V
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	paramDbxRequestConfig	DbxRequestConfig
    //   0	84	1	paramString1	String
    //   0	84	2	paramString2	String
    //   0	84	3	paramString3	String
    //   0	84	4	paramArrayOfByte	byte[]
    //   0	84	5	paramList	List<HttpRequestor.Header>
    // Exception table:
    //   from	to	target	type
    //   50	61	67	finally
    //   40	50	74	java/io/IOException
    //   61	65	74	java/io/IOException
    //   68	74	74	java/io/IOException
  }
  
  public static HttpRequestor.Uploader startPut(DbxRequestConfig paramDbxRequestConfig, String paramString1, String paramString2, String paramString3, String paramString4, String[] paramArrayOfString, List<HttpRequestor.Header> paramList)
    throws NetworkIOException
  {
    paramString1 = addAuthHeader(addUserAgentHeader(a(paramList), paramDbxRequestConfig, paramString2), paramString1);
    paramString2 = buildUrlWithParams(paramDbxRequestConfig.getUserLocale(), paramString3, paramString4, paramArrayOfString);
    try
    {
      paramDbxRequestConfig = paramDbxRequestConfig.getHttpRequestor().startPut(paramString2, paramString1);
      return paramDbxRequestConfig;
    }
    catch (IOException paramDbxRequestConfig)
    {
      throw new NetworkIOException(paramDbxRequestConfig);
    }
  }
  
  public static DbxException unexpectedStatus(HttpRequestor.Response paramResponse)
    throws NetworkIOException, BadResponseException
  {
    return unexpectedStatus(paramResponse, null);
  }
  
  public static DbxException unexpectedStatus(HttpRequestor.Response paramResponse, String paramString)
    throws NetworkIOException, BadResponseException
  {
    String str = getRequestId(paramResponse);
    int i = paramResponse.getStatusCode();
    a localA = null;
    Object localObject = null;
    if (i != 403) {
      if (i != 422) {
        if (i != 429) {
          if (i != 500)
          {
            if (i != 503) {
              switch (i)
              {
              default: 
                localObject = new StringBuilder();
                ((StringBuilder)localObject).append("unexpected HTTP status code: ");
                ((StringBuilder)localObject).append(paramResponse.getStatusCode());
                ((StringBuilder)localObject).append(": ");
                ((StringBuilder)localObject).append(null);
                paramResponse = new BadResponseCodeException(str, ((StringBuilder)localObject).toString(), paramResponse.getStatusCode());
                break;
              case 401: 
                paramResponse = new InvalidAccessTokenException(str, a(paramResponse, str));
                break;
              case 400: 
                paramResponse = new BadRequestException(str, a(paramResponse, str));
                break;
              }
            }
            paramResponse = getFirstHeaderMaybe(paramResponse, "Retry-After");
            if (paramResponse == null) {}
          }
        }
      }
    }
    try
    {
      if (!paramResponse.trim().isEmpty())
      {
        paramResponse = new RetryException(str, null, Integer.parseInt(paramResponse), TimeUnit.SECONDS);
        break label287;
      }
      paramResponse = new RetryException(str, null);
    }
    catch (NumberFormatException paramResponse)
    {
      for (;;) {}
    }
    paramResponse = new BadResponseException(str, "Invalid value for HTTP header: \"Retry-After\"");
    break label477;
    paramResponse = new ServerException(str, null);
    try
    {
      paramResponse = new RateLimitException(str, null, Integer.parseInt(getFirstHeader(paramResponse, "Retry-After")), TimeUnit.SECONDS);
    }
    catch (NumberFormatException paramResponse)
    {
      label287:
      for (;;) {}
    }
    paramResponse = new BadResponseException(str, "Invalid value for HTTP header: \"Retry-After\"");
    break label477;
    try
    {
      localA = (a)new a.a(PathRootError.Serializer.INSTANCE).deserialize(paramResponse.getBody());
      paramResponse = (HttpRequestor.Response)localObject;
      if (localA.b() != null) {
        paramResponse = localA.b().toString();
      }
      paramResponse = new PathRootErrorException(str, paramResponse, (PathRootError)localA.a());
    }
    catch (IOException paramResponse)
    {
      throw new NetworkIOException(paramResponse);
    }
    catch (JsonProcessingException paramResponse)
    {
      paramString = new StringBuilder();
      paramString.append("Bad JSON: ");
      paramString.append(paramResponse.getMessage());
      throw new BadResponseException(str, paramString.toString(), paramResponse);
    }
    try
    {
      localObject = (a)new a.a(AccessError.Serializer.INSTANCE).deserialize(paramResponse.getBody());
      paramResponse = localA;
      if (((a)localObject).b() != null) {
        paramResponse = ((a)localObject).b().toString();
      }
      paramResponse = new AccessErrorException(str, paramResponse, (AccessError)((a)localObject).a());
      label477:
      localObject = sharedCallbackFactory;
      if (localObject != null) {
        ((DbxGlobalCallbackFactory)localObject).createNetworkErrorCallback(paramString).onNetworkError(paramResponse);
      }
      return paramResponse;
    }
    catch (IOException paramResponse)
    {
      throw new NetworkIOException(paramResponse);
    }
    catch (JsonProcessingException paramResponse)
    {
      paramString = new StringBuilder();
      paramString.append("Bad JSON: ");
      paramString.append(paramResponse.getMessage());
      throw new BadResponseException(str, paramString.toString(), paramResponse);
    }
  }
  
  public static abstract class RequestMaker<T, E extends Throwable>
  {
    public RequestMaker() {}
    
    public abstract T run()
      throws DbxException, Throwable;
  }
  
  public static abstract class ResponseHandler<T>
  {
    public ResponseHandler() {}
    
    public abstract T handle(HttpRequestor.Response paramResponse)
      throws DbxException;
  }
}
