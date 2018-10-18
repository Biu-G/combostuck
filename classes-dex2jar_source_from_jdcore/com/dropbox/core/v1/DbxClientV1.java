package com.dropbox.core.v1;

import com.dropbox.core.BadRequestException;
import com.dropbox.core.BadResponseException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.DbxRequestUtil.RequestMaker;
import com.dropbox.core.DbxRequestUtil.ResponseHandler;
import com.dropbox.core.DbxStreamWriter;
import com.dropbox.core.DbxStreamWriter.ByteArrayCopier;
import com.dropbox.core.DbxStreamWriter.InputStreamCopier;
import com.dropbox.core.NetworkIOException;
import com.dropbox.core.http.HttpRequestor.Header;
import com.dropbox.core.http.HttpRequestor.Response;
import com.dropbox.core.http.HttpRequestor.Uploader;
import com.dropbox.core.json.JsonArrayReader;
import com.dropbox.core.json.JsonDateReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.Collector;
import com.dropbox.core.util.Collector.ArrayListCollector;
import com.dropbox.core.util.Collector.NullSkipper;
import com.dropbox.core.util.CountingOutputStream;
import com.dropbox.core.util.DumpWriter;
import com.dropbox.core.util.Dumpable;
import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.util.Maybe;
import com.dropbox.core.util.StringUtil;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public final class DbxClientV1
{
  public static final String USER_AGENT_ID = "Dropbox-Java-SDK";
  private static JsonReader<String> e = new JsonReader()
  {
    public String a(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonReadException
    {
      JsonLocation localJsonLocation = JsonReader.expectObjectStart(paramAnonymousJsonParser);
      Object localObject = null;
      while (paramAnonymousJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
      {
        String str = paramAnonymousJsonParser.getCurrentName();
        paramAnonymousJsonParser.nextToken();
        try
        {
          if (str.equals("cursor")) {
            localObject = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject);
          } else {
            JsonReader.skipValue(paramAnonymousJsonParser);
          }
        }
        catch (JsonReadException paramAnonymousJsonParser)
        {
          throw paramAnonymousJsonParser.addFieldContext(str);
        }
      }
      JsonReader.expectObjectEnd(paramAnonymousJsonParser);
      if (localObject != null) {
        return localObject;
      }
      throw new JsonReadException("missing field \"cursor\"", localJsonLocation);
    }
  };
  private final DbxRequestConfig b;
  private final String c;
  private final DbxHost d;
  
  public DbxClientV1(DbxRequestConfig paramDbxRequestConfig, String paramString)
  {
    this(paramDbxRequestConfig, paramString, DbxHost.DEFAULT);
  }
  
  public DbxClientV1(DbxRequestConfig paramDbxRequestConfig, String paramString, DbxHost paramDbxHost)
  {
    if (paramDbxRequestConfig != null)
    {
      if (paramString != null)
      {
        if (paramDbxHost != null)
        {
          b = paramDbxRequestConfig;
          c = paramString;
          d = paramDbxHost;
          return;
        }
        throw new IllegalArgumentException("'host' is null");
      }
      throw new IllegalArgumentException("'accessToken' is null");
    }
    throw new IllegalArgumentException("'requestConfig' is null");
  }
  
  /* Error */
  private <E extends Throwable> HttpRequestor.Response a(String[] paramArrayOfString, long paramLong, DbxStreamWriter<E> paramDbxStreamWriter)
    throws DbxException, Throwable
  {
    // Byte code:
    //   0: new 150	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 151	java/util/ArrayList:<init>	()V
    //   7: astore 7
    //   9: aload 7
    //   11: new 153	com/dropbox/core/http/HttpRequestor$Header
    //   14: dup
    //   15: ldc -101
    //   17: ldc -99
    //   19: invokespecial 160	com/dropbox/core/http/HttpRequestor$Header:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   22: invokevirtual 164	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   25: pop
    //   26: aload 7
    //   28: new 153	com/dropbox/core/http/HttpRequestor$Header
    //   31: dup
    //   32: ldc -90
    //   34: lload_2
    //   35: invokestatic 172	java/lang/Long:toString	(J)Ljava/lang/String;
    //   38: invokespecial 160	com/dropbox/core/http/HttpRequestor$Header:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   41: invokevirtual 164	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   44: pop
    //   45: aload_0
    //   46: getfield 123	com/dropbox/core/v1/DbxClientV1:b	Lcom/dropbox/core/DbxRequestConfig;
    //   49: aload_0
    //   50: getfield 125	com/dropbox/core/v1/DbxClientV1:c	Ljava/lang/String;
    //   53: ldc 90
    //   55: aload_0
    //   56: getfield 127	com/dropbox/core/v1/DbxClientV1:d	Lcom/dropbox/core/DbxHost;
    //   59: invokevirtual 176	com/dropbox/core/DbxHost:getContent	()Ljava/lang/String;
    //   62: ldc -78
    //   64: aload_1
    //   65: aload 7
    //   67: invokestatic 184	com/dropbox/core/DbxRequestUtil:startPut	(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    //   70: astore_1
    //   71: new 186	com/dropbox/core/NoThrowOutputStream
    //   74: dup
    //   75: aload_1
    //   76: invokevirtual 192	com/dropbox/core/http/HttpRequestor$Uploader:getBody	()Ljava/io/OutputStream;
    //   79: invokespecial 195	com/dropbox/core/NoThrowOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   82: astore 7
    //   84: aload 4
    //   86: aload 7
    //   88: invokevirtual 201	com/dropbox/core/DbxStreamWriter:write	(Lcom/dropbox/core/NoThrowOutputStream;)V
    //   91: aload 7
    //   93: invokevirtual 205	com/dropbox/core/NoThrowOutputStream:getBytesWritten	()J
    //   96: lstore 5
    //   98: lload 5
    //   100: lload_2
    //   101: lcmp
    //   102: ifne +28 -> 130
    //   105: aload_1
    //   106: invokevirtual 209	com/dropbox/core/http/HttpRequestor$Uploader:finish	()Lcom/dropbox/core/http/HttpRequestor$Response;
    //   109: astore 4
    //   111: aload_1
    //   112: invokevirtual 212	com/dropbox/core/http/HttpRequestor$Uploader:close	()V
    //   115: aload 4
    //   117: areturn
    //   118: astore 4
    //   120: new 214	com/dropbox/core/NetworkIOException
    //   123: dup
    //   124: aload 4
    //   126: invokespecial 217	com/dropbox/core/NetworkIOException:<init>	(Ljava/io/IOException;)V
    //   129: athrow
    //   130: new 219	java/lang/StringBuilder
    //   133: dup
    //   134: invokespecial 220	java/lang/StringBuilder:<init>	()V
    //   137: astore 4
    //   139: aload 4
    //   141: ldc -34
    //   143: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: pop
    //   147: aload 4
    //   149: lload_2
    //   150: invokevirtual 229	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   153: pop
    //   154: aload 4
    //   156: ldc -25
    //   158: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: pop
    //   162: aload 4
    //   164: lload 5
    //   166: invokevirtual 229	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   169: pop
    //   170: aload 4
    //   172: ldc -23
    //   174: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: pop
    //   178: new 235	java/lang/IllegalStateException
    //   181: dup
    //   182: aload 4
    //   184: invokevirtual 237	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   187: invokespecial 238	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   190: athrow
    //   191: astore 4
    //   193: aload 4
    //   195: getfield 242	com/dropbox/core/NoThrowOutputStream$HiddenException:owner	Lcom/dropbox/core/NoThrowOutputStream;
    //   198: aload 7
    //   200: if_acmpne +16 -> 216
    //   203: new 214	com/dropbox/core/NetworkIOException
    //   206: dup
    //   207: aload 4
    //   209: invokevirtual 246	com/dropbox/core/NoThrowOutputStream$HiddenException:getCause	()Ljava/io/IOException;
    //   212: invokespecial 217	com/dropbox/core/NetworkIOException:<init>	(Ljava/io/IOException;)V
    //   215: athrow
    //   216: aload 4
    //   218: athrow
    //   219: astore 4
    //   221: aload_1
    //   222: invokevirtual 212	com/dropbox/core/http/HttpRequestor$Uploader:close	()V
    //   225: aload 4
    //   227: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	228	0	this	DbxClientV1
    //   0	228	1	paramArrayOfString	String[]
    //   0	228	2	paramLong	long
    //   0	228	4	paramDbxStreamWriter	DbxStreamWriter<E>
    //   96	69	5	l	long
    //   7	192	7	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   105	111	118	java/io/IOException
    //   84	91	191	com/dropbox/core/NoThrowOutputStream$HiddenException
    //   71	84	219	finally
    //   84	91	219	finally
    //   91	98	219	finally
    //   105	111	219	finally
    //   120	130	219	finally
    //   130	191	219	finally
    //   193	216	219	finally
    //   216	219	219	finally
  }
  
  private <T> Maybe<T> a(String paramString1, boolean paramBoolean, String paramString2, final JsonReader<T> paramJsonReader)
    throws DbxException
  {
    if (paramString2 != null)
    {
      if (paramString2.length() != 0)
      {
        DbxPathV1.checkArg("path", paramString1);
        String str = d.getApi();
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("1/metadata/auto");
        ((StringBuilder)localObject).append(paramString1);
        localObject = ((StringBuilder)localObject).toString();
        if (paramBoolean) {
          paramString1 = "true";
        } else {
          paramString1 = null;
        }
        paramJsonReader = new DbxRequestUtil.ResponseHandler()
        {
          public Maybe<T> a(HttpRequestor.Response paramAnonymousResponse)
            throws DbxException
          {
            if (paramAnonymousResponse.getStatusCode() == 404) {
              return Maybe.Just(null);
            }
            if (paramAnonymousResponse.getStatusCode() == 304) {
              return Maybe.Nothing();
            }
            if (paramAnonymousResponse.getStatusCode() == 200) {
              return Maybe.Just(DbxRequestUtil.readJsonFromResponse(paramJsonReader, paramAnonymousResponse));
            }
            throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
          }
        };
        return (Maybe)a(str, (String)localObject, new String[] { "list", "true", "file_limit", "25000", "hash", paramString2, "include_media_info", paramString1 }, null, paramJsonReader);
      }
      throw new IllegalArgumentException("'previousFolderHash' must not be empty");
    }
    throw new IllegalArgumentException("'previousFolderHash' must not be null");
  }
  
  private Downloader a(final String paramString, final String[] paramArrayOfString)
    throws DbxException
  {
    final String str = d.getContent();
    (Downloader)DbxRequestUtil.runAndRetry(b.getMaxRetries(), new DbxRequestUtil.RequestMaker()
    {
      /* Error */
      public DbxClientV1.Downloader a()
        throws DbxException
      {
        // Byte code:
        //   0: aload_0
        //   1: getfield 20	com/dropbox/core/v1/DbxClientV1$20:d	Lcom/dropbox/core/v1/DbxClientV1;
        //   4: invokestatic 40	com/dropbox/core/v1/DbxClientV1:a	(Lcom/dropbox/core/v1/DbxClientV1;)Lcom/dropbox/core/DbxRequestConfig;
        //   7: aload_0
        //   8: getfield 20	com/dropbox/core/v1/DbxClientV1$20:d	Lcom/dropbox/core/v1/DbxClientV1;
        //   11: invokestatic 43	com/dropbox/core/v1/DbxClientV1:b	(Lcom/dropbox/core/v1/DbxClientV1;)Ljava/lang/String;
        //   14: ldc 45
        //   16: aload_0
        //   17: getfield 22	com/dropbox/core/v1/DbxClientV1$20:a	Ljava/lang/String;
        //   20: aload_0
        //   21: getfield 24	com/dropbox/core/v1/DbxClientV1$20:b	Ljava/lang/String;
        //   24: aload_0
        //   25: getfield 26	com/dropbox/core/v1/DbxClientV1$20:c	[Ljava/lang/String;
        //   28: aconst_null
        //   29: invokestatic 51	com/dropbox/core/DbxRequestUtil:startGet	(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;
        //   32: astore_2
        //   33: aload_2
        //   34: invokevirtual 57	com/dropbox/core/http/HttpRequestor$Response:getStatusCode	()I
        //   37: istore_1
        //   38: iload_1
        //   39: sipush 404
        //   42: if_icmpne +12 -> 54
        //   45: aload_2
        //   46: invokevirtual 61	com/dropbox/core/http/HttpRequestor$Response:getBody	()Ljava/io/InputStream;
        //   49: invokevirtual 66	java/io/InputStream:close	()V
        //   52: aconst_null
        //   53: areturn
        //   54: aload_2
        //   55: invokevirtual 57	com/dropbox/core/http/HttpRequestor$Response:getStatusCode	()I
        //   58: sipush 200
        //   61: if_icmpne +84 -> 145
        //   64: aload_2
        //   65: ldc 68
        //   67: invokestatic 72	com/dropbox/core/DbxRequestUtil:getFirstHeader	(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;
        //   70: astore_3
        //   71: getstatic 78	com/dropbox/core/v1/DbxEntry$File:Reader	Lcom/dropbox/core/json/JsonReader;
        //   74: aload_3
        //   75: invokevirtual 84	com/dropbox/core/json/JsonReader:readFully	(Ljava/lang/String;)Ljava/lang/Object;
        //   78: checkcast 74	com/dropbox/core/v1/DbxEntry$File
        //   81: astore_3
        //   82: new 86	com/dropbox/core/v1/DbxClientV1$Downloader
        //   85: dup
        //   86: aload_3
        //   87: aload_2
        //   88: invokevirtual 61	com/dropbox/core/http/HttpRequestor$Response:getBody	()Ljava/io/InputStream;
        //   91: invokespecial 89	com/dropbox/core/v1/DbxClientV1$Downloader:<init>	(Lcom/dropbox/core/v1/DbxEntry$File;Ljava/io/InputStream;)V
        //   94: areturn
        //   95: astore_3
        //   96: aload_2
        //   97: invokestatic 93	com/dropbox/core/DbxRequestUtil:getRequestId	(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;
        //   100: astore 4
        //   102: new 95	java/lang/StringBuilder
        //   105: dup
        //   106: invokespecial 96	java/lang/StringBuilder:<init>	()V
        //   109: astore 5
        //   111: aload 5
        //   113: ldc 98
        //   115: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   118: pop
        //   119: aload 5
        //   121: aload_3
        //   122: invokevirtual 106	com/dropbox/core/json/JsonReadException:getMessage	()Ljava/lang/String;
        //   125: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   128: pop
        //   129: new 108	com/dropbox/core/BadResponseException
        //   132: dup
        //   133: aload 4
        //   135: aload 5
        //   137: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   140: aload_3
        //   141: invokespecial 114	com/dropbox/core/BadResponseException:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   144: athrow
        //   145: aload_2
        //   146: invokestatic 118	com/dropbox/core/DbxRequestUtil:unexpectedStatus	(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;
        //   149: athrow
        //   150: astore_3
        //   151: aload_2
        //   152: invokevirtual 61	com/dropbox/core/http/HttpRequestor$Response:getBody	()Ljava/io/InputStream;
        //   155: invokevirtual 66	java/io/InputStream:close	()V
        //   158: aload_3
        //   159: athrow
        //   160: astore_2
        //   161: aconst_null
        //   162: areturn
        //   163: astore_2
        //   164: goto -6 -> 158
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	167	0	this	20
        //   37	6	1	i	int
        //   32	120	2	localResponse	HttpRequestor.Response
        //   160	1	2	localIOException1	IOException
        //   163	1	2	localIOException2	IOException
        //   70	17	3	localObject1	Object
        //   95	46	3	localJsonReadException	JsonReadException
        //   150	9	3	localObject2	Object
        //   100	34	4	str	String
        //   109	27	5	localStringBuilder	StringBuilder
        // Exception table:
        //   from	to	target	type
        //   71	82	95	com/dropbox/core/json/JsonReadException
        //   33	38	150	finally
        //   54	71	150	finally
        //   71	82	150	finally
        //   82	95	150	finally
        //   96	145	150	finally
        //   145	150	150	finally
        //   45	52	160	java/io/IOException
        //   151	158	163	java/io/IOException
      }
    });
  }
  
  private b a(HttpRequestor.Response paramResponse)
    throws DbxException
  {
    if (paramResponse.getStatusCode() != 400) {
      return null;
    }
    byte[] arrayOfByte = DbxRequestUtil.loadErrorBody(paramResponse);
    try
    {
      b localB = (b)b.c.readFully(arrayOfByte);
      return localB;
    }
    catch (JsonReadException localJsonReadException)
    {
      for (;;) {}
    }
    paramResponse = DbxRequestUtil.getRequestId(paramResponse);
    throw new BadRequestException(paramResponse, DbxRequestUtil.parseErrorBody(paramResponse, 400, arrayOfByte));
  }
  
  private DbxDelta<DbxEntry> a(String paramString1, String paramString2, boolean paramBoolean)
    throws DbxException
  {
    String str2 = d.getApi();
    String str1;
    if (paramBoolean) {
      str1 = "true";
    } else {
      str1 = null;
    }
    DbxRequestUtil.ResponseHandler local22 = new DbxRequestUtil.ResponseHandler()
    {
      public DbxDelta<DbxEntry> a(HttpRequestor.Response paramAnonymousResponse)
        throws DbxException
      {
        if (paramAnonymousResponse.getStatusCode() == 200) {
          return (DbxDelta)DbxRequestUtil.readJsonFromResponse(new DbxDelta.Reader(DbxEntry.Reader), paramAnonymousResponse);
        }
        throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
      }
    };
    return (DbxDelta)doPost(str2, "1/delta", new String[] { "cursor", paramString1, "path_prefix", paramString2, "include_media_info", str1 }, null, local22);
  }
  
  private <C> DbxDeltaC<C> a(final Collector<DbxDeltaC.Entry<DbxEntry>, C> paramCollector, String paramString1, String paramString2, boolean paramBoolean)
    throws DbxException
  {
    String str2 = d.getApi();
    String str1;
    if (paramBoolean) {
      str1 = "true";
    } else {
      str1 = null;
    }
    paramCollector = new DbxRequestUtil.ResponseHandler()
    {
      public DbxDeltaC<C> a(HttpRequestor.Response paramAnonymousResponse)
        throws DbxException
      {
        if (paramAnonymousResponse.getStatusCode() == 200) {
          return (DbxDeltaC)DbxRequestUtil.readJsonFromResponse(new DbxDeltaC.Reader(DbxEntry.Reader, paramCollector), paramAnonymousResponse);
        }
        throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
      }
    };
    return (DbxDeltaC)doPost(str2, "1/delta", new String[] { "cursor", paramString1, "path_prefix", paramString2, "include_media_info", str1 }, null, paramCollector);
  }
  
  private <T> T a(String paramString1, String paramString2, String[] paramArrayOfString, ArrayList<HttpRequestor.Header> paramArrayList, DbxRequestUtil.ResponseHandler<T> paramResponseHandler)
    throws DbxException
  {
    return DbxRequestUtil.doGet(b, c, "Dropbox-Java-SDK", paramString1, paramString2, paramArrayOfString, paramArrayList, paramResponseHandler);
  }
  
  private <T> T a(String paramString, boolean paramBoolean, final JsonReader<? extends T> paramJsonReader)
    throws DbxException
  {
    DbxPathV1.checkArg("path", paramString);
    String str = d.getApi();
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("1/metadata/auto");
    ((StringBuilder)localObject).append(paramString);
    localObject = ((StringBuilder)localObject).toString();
    if (paramBoolean) {
      paramString = "true";
    } else {
      paramString = null;
    }
    paramJsonReader = new DbxRequestUtil.ResponseHandler()
    {
      public T handle(HttpRequestor.Response paramAnonymousResponse)
        throws DbxException
      {
        if (paramAnonymousResponse.getStatusCode() == 404) {
          return null;
        }
        if (paramAnonymousResponse.getStatusCode() == 200) {
          return DbxRequestUtil.readJsonFromResponse(paramJsonReader, paramAnonymousResponse);
        }
        throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
      }
    };
    return a(str, (String)localObject, new String[] { "list", "true", "file_limit", "25000", "include_media_info", paramString }, null, paramJsonReader);
  }
  
  private String a(String paramString, boolean paramBoolean)
    throws DbxException
  {
    String str2 = d.getApi();
    String str1;
    if (paramBoolean) {
      str1 = "true";
    } else {
      str1 = null;
    }
    DbxRequestUtil.ResponseHandler local2 = new DbxRequestUtil.ResponseHandler()
    {
      public String a(HttpRequestor.Response paramAnonymousResponse)
        throws DbxException
      {
        if (paramAnonymousResponse.getStatusCode() == 200) {
          return (String)DbxRequestUtil.readJsonFromResponse(DbxClientV1.a(), paramAnonymousResponse);
        }
        throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
      }
    };
    return (String)doPost(str2, "1/delta/latest_cursor", new String[] { "path_prefix", paramString, "include_media_info", str1 }, null, local2);
  }
  
  private b b(HttpRequestor.Response paramResponse)
    throws BadResponseException, NetworkIOException
  {
    if ((!a) && (paramResponse.getStatusCode() != 200)) {
      throw new AssertionError(paramResponse.getStatusCode());
    }
    return (b)DbxRequestUtil.readJsonFromResponse(b.c, paramResponse);
  }
  
  public <E extends Throwable> long chunkedUploadAppend(String paramString, long paramLong1, long paramLong2, DbxStreamWriter<E> paramDbxStreamWriter)
    throws DbxException, Throwable
  {
    if (paramString != null)
    {
      if (paramString.length() != 0)
      {
        if (paramLong1 >= 0L)
        {
          paramDbxStreamWriter = a(new String[] { "upload_id", paramString, "offset", Long.toString(paramLong1) }, paramLong2, paramDbxStreamWriter);
          String str = DbxRequestUtil.getRequestId(paramDbxStreamWriter);
          try
          {
            Object localObject = a(paramDbxStreamWriter);
            paramLong2 += paramLong1;
            if (localObject != null)
            {
              if (a.equals(paramString))
              {
                if (b != paramLong1)
                {
                  if (b >= paramLong1)
                  {
                    if (b <= paramLong2)
                    {
                      if ((!a) && (b == paramLong2)) {
                        throw new AssertionError();
                      }
                      paramLong1 = b;
                      return paramLong1;
                    }
                    paramString = new StringBuilder();
                    paramString.append("we were at offset ");
                    paramString.append(paramLong1);
                    paramString.append(", server said ");
                    paramString.append(b);
                    throw new BadResponseException(str, paramString.toString());
                  }
                  paramString = new StringBuilder();
                  paramString.append("we were at offset ");
                  paramString.append(paramLong1);
                  paramString.append(", server said ");
                  paramString.append(b);
                  throw new BadResponseException(str, paramString.toString());
                }
                paramString = new StringBuilder();
                paramString.append("Corrected offset is same as given: ");
                paramString.append(paramLong1);
                throw new BadResponseException(str, paramString.toString());
              }
              StringBuilder localStringBuilder = new StringBuilder();
              localStringBuilder.append("uploadId mismatch: us=");
              localStringBuilder.append(StringUtil.jq(paramString));
              localStringBuilder.append(", server=");
              localStringBuilder.append(StringUtil.jq(a));
              throw new BadResponseException(str, localStringBuilder.toString());
            }
            if (paramDbxStreamWriter.getStatusCode() == 200)
            {
              paramString = b(paramDbxStreamWriter);
              paramLong1 = b;
              if (paramLong1 == paramLong2) {
                return -1L;
              }
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("Expected offset ");
              ((StringBuilder)localObject).append(paramLong2);
              ((StringBuilder)localObject).append(" bytes, but returned offset is ");
              ((StringBuilder)localObject).append(b);
              throw new BadResponseException(str, ((StringBuilder)localObject).toString());
            }
            throw DbxRequestUtil.unexpectedStatus(paramDbxStreamWriter);
          }
          finally
          {
            IOUtil.closeInput(paramDbxStreamWriter.getBody());
          }
        }
        throw new IllegalArgumentException("'offset' can't be negative");
      }
      throw new IllegalArgumentException("'uploadId' can't be empty");
    }
    throw new IllegalArgumentException("'uploadId' can't be null");
  }
  
  public long chunkedUploadAppend(String paramString, long paramLong, byte[] paramArrayOfByte)
    throws DbxException
  {
    return chunkedUploadAppend(paramString, paramLong, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public long chunkedUploadAppend(String paramString, long paramLong, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws DbxException
  {
    return chunkedUploadAppend(paramString, paramLong, paramInt2, new DbxStreamWriter.ByteArrayCopier(paramArrayOfByte, paramInt1, paramInt2));
  }
  
  public DbxEntry.File chunkedUploadFinish(String paramString1, DbxWriteMode paramDbxWriteMode, String paramString2)
    throws DbxException
  {
    DbxPathV1.checkArgNonRoot("targetPath", paramString1);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("1/commit_chunked_upload/auto");
    localStringBuilder.append(paramString1);
    paramString1 = localStringBuilder.toString();
    paramDbxWriteMode = a;
    paramDbxWriteMode = (String[])LangUtil.arrayConcat(new String[] { "upload_id", paramString2 }, paramDbxWriteMode);
    (DbxEntry.File)doPost(d.getContent(), paramString1, paramDbxWriteMode, null, new DbxRequestUtil.ResponseHandler()
    {
      public DbxEntry.File a(HttpRequestor.Response paramAnonymousResponse)
        throws DbxException
      {
        if (paramAnonymousResponse.getStatusCode() == 200) {
          return (DbxEntry.File)DbxRequestUtil.readJsonFromResponse(DbxEntry.File.Reader, paramAnonymousResponse);
        }
        throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
      }
    });
  }
  
  public <E extends Throwable> String chunkedUploadFirst(int paramInt, DbxStreamWriter<E> paramDbxStreamWriter)
    throws DbxException, Throwable
  {
    long l = paramInt;
    paramDbxStreamWriter = a(new String[0], l, paramDbxStreamWriter);
    try
    {
      if (a(paramDbxStreamWriter) == null)
      {
        if (paramDbxStreamWriter.getStatusCode() != 404)
        {
          if (paramDbxStreamWriter.getStatusCode() == 200)
          {
            Object localObject1 = b(paramDbxStreamWriter);
            if (b == l)
            {
              localObject1 = a;
              return localObject1;
            }
            String str = DbxRequestUtil.getRequestId(paramDbxStreamWriter);
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("Sent ");
            localStringBuilder.append(paramInt);
            localStringBuilder.append(" bytes, but returned offset is ");
            localStringBuilder.append(b);
            throw new BadResponseException(str, localStringBuilder.toString());
          }
          throw DbxRequestUtil.unexpectedStatus(paramDbxStreamWriter);
        }
        throw new BadResponseException(DbxRequestUtil.getRequestId(paramDbxStreamWriter), "Got a 404, but we didn't send an upload_id");
      }
      throw new BadResponseException(DbxRequestUtil.getRequestId(paramDbxStreamWriter), "Got offset correction response on first chunk.");
    }
    finally
    {
      IOUtil.closeInput(paramDbxStreamWriter.getBody());
    }
  }
  
  public String chunkedUploadFirst(byte[] paramArrayOfByte)
    throws DbxException
  {
    return chunkedUploadFirst(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public String chunkedUploadFirst(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws DbxException
  {
    return chunkedUploadFirst(paramInt2, new DbxStreamWriter.ByteArrayCopier(paramArrayOfByte, paramInt1, paramInt2));
  }
  
  public DbxEntry copy(String paramString1, String paramString2)
    throws DbxException
  {
    DbxPathV1.checkArg("fromPath", paramString1);
    DbxPathV1.checkArgNonRoot("toPath", paramString2);
    String str = d.getApi();
    DbxRequestUtil.ResponseHandler local11 = new DbxRequestUtil.ResponseHandler()
    {
      public DbxEntry a(HttpRequestor.Response paramAnonymousResponse)
        throws DbxException
      {
        if (paramAnonymousResponse.getStatusCode() == 403) {
          return null;
        }
        if (paramAnonymousResponse.getStatusCode() == 200)
        {
          paramAnonymousResponse = (DbxEntry.WithChildren)DbxRequestUtil.readJsonFromResponse(DbxEntry.WithChildren.Reader, paramAnonymousResponse);
          if (paramAnonymousResponse == null) {
            return null;
          }
          return entry;
        }
        throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
      }
    };
    return (DbxEntry)doPost(str, "1/fileops/copy", new String[] { "root", "auto", "from_path", paramString1, "to_path", paramString2 }, null, local11);
  }
  
  public DbxEntry copyFromCopyRef(String paramString1, String paramString2)
    throws DbxException
  {
    if (paramString1 != null)
    {
      if (paramString1.length() != 0)
      {
        DbxPathV1.checkArgNonRoot("toPath", paramString2);
        String str = d.getApi();
        DbxRequestUtil.ResponseHandler local13 = new DbxRequestUtil.ResponseHandler()
        {
          public DbxEntry a(HttpRequestor.Response paramAnonymousResponse)
            throws DbxException
          {
            if (paramAnonymousResponse.getStatusCode() == 200)
            {
              paramAnonymousResponse = (DbxEntry.WithChildren)DbxRequestUtil.readJsonFromResponse(DbxEntry.WithChildren.Reader, paramAnonymousResponse);
              if (paramAnonymousResponse == null) {
                return null;
              }
              return entry;
            }
            throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
          }
        };
        return (DbxEntry)doPost(str, "1/fileops/copy", new String[] { "root", "auto", "from_copy_ref", paramString1, "to_path", paramString2 }, null, local13);
      }
      throw new IllegalArgumentException("'copyRef' can't be empty");
    }
    throw new IllegalArgumentException("'copyRef' can't be null");
  }
  
  public String createCopyRef(String paramString)
    throws DbxException
  {
    DbxPathV1.checkArgNonRoot("path", paramString);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("1/copy_ref/auto");
    localStringBuilder.append(paramString);
    paramString = localStringBuilder.toString();
    (String)doPost(d.getApi(), paramString, null, null, new DbxRequestUtil.ResponseHandler()
    {
      public String a(HttpRequestor.Response paramAnonymousResponse)
        throws DbxException
      {
        if (paramAnonymousResponse.getStatusCode() == 404) {
          return null;
        }
        if (paramAnonymousResponse.getStatusCode() == 200) {
          return readJsonFromResponseca;
        }
        throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
      }
    });
  }
  
  public DbxEntry.Folder createFolder(String paramString)
    throws DbxException
  {
    DbxPathV1.checkArgNonRoot("path", paramString);
    String str = d.getApi();
    DbxRequestUtil.ResponseHandler local14 = new DbxRequestUtil.ResponseHandler()
    {
      public DbxEntry.Folder a(HttpRequestor.Response paramAnonymousResponse)
        throws DbxException
      {
        if (paramAnonymousResponse.getStatusCode() == 403) {
          return null;
        }
        if (paramAnonymousResponse.getStatusCode() == 200) {
          return (DbxEntry.Folder)DbxRequestUtil.readJsonFromResponse(DbxEntry.Folder.Reader, paramAnonymousResponse);
        }
        throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
      }
    };
    return (DbxEntry.Folder)doPost(str, "1/fileops/create_folder", new String[] { "root", "auto", "path", paramString }, null, local14);
  }
  
  public String createShareableUrl(String paramString)
    throws DbxException
  {
    DbxPathV1.checkArg("path", paramString);
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("1/shares/auto");
    ((StringBuilder)localObject).append(paramString);
    paramString = ((StringBuilder)localObject).toString();
    localObject = d.getApi();
    DbxRequestUtil.ResponseHandler local8 = new DbxRequestUtil.ResponseHandler()
    {
      public String a(HttpRequestor.Response paramAnonymousResponse)
        throws DbxException
      {
        if (paramAnonymousResponse.getStatusCode() == 404) {
          return null;
        }
        if (paramAnonymousResponse.getStatusCode() == 200) {
          return readJsonFromResponseReaderurl;
        }
        throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
      }
    };
    return (String)doPost((String)localObject, paramString, new String[] { "short_url", "false" }, null, local8);
  }
  
  public DbxUrlWithExpiration createTemporaryDirectUrl(String paramString)
    throws DbxException
  {
    DbxPathV1.checkArgNonRoot("path", paramString);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("1/media/auto");
    localStringBuilder.append(paramString);
    paramString = localStringBuilder.toString();
    (DbxUrlWithExpiration)doPost(d.getApi(), paramString, null, null, new DbxRequestUtil.ResponseHandler()
    {
      public DbxUrlWithExpiration a(HttpRequestor.Response paramAnonymousResponse)
        throws DbxException
      {
        if (paramAnonymousResponse.getStatusCode() == 404) {
          return null;
        }
        if (paramAnonymousResponse.getStatusCode() == 200) {
          return (DbxUrlWithExpiration)DbxRequestUtil.readJsonFromResponse(DbxUrlWithExpiration.Reader, paramAnonymousResponse);
        }
        throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
      }
    });
  }
  
  public void delete(String paramString)
    throws DbxException
  {
    DbxPathV1.checkArgNonRoot("path", paramString);
    String str = d.getApi();
    DbxRequestUtil.ResponseHandler local15 = new DbxRequestUtil.ResponseHandler()
    {
      public Void a(HttpRequestor.Response paramAnonymousResponse)
        throws DbxException
      {
        if (paramAnonymousResponse.getStatusCode() == 200) {
          return null;
        }
        throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
      }
    };
    doPost(str, "1/fileops/delete", new String[] { "root", "auto", "path", paramString }, null, local15);
  }
  
  public void disableAccessToken()
    throws DbxException
  {
    doPost(d.getApi(), "1/disable_access_token", null, null, new DbxRequestUtil.ResponseHandler()
    {
      public Void a(HttpRequestor.Response paramAnonymousResponse)
        throws DbxException
      {
        if (paramAnonymousResponse.getStatusCode() == 200) {
          return null;
        }
        String str = DbxRequestUtil.getRequestId(paramAnonymousResponse);
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("unexpected response code: ");
        localStringBuilder.append(paramAnonymousResponse.getStatusCode());
        throw new BadResponseException(str, localStringBuilder.toString());
      }
    });
  }
  
  public <T> T doPost(String paramString1, String paramString2, String[] paramArrayOfString, ArrayList<HttpRequestor.Header> paramArrayList, DbxRequestUtil.ResponseHandler<T> paramResponseHandler)
    throws DbxException
  {
    return DbxRequestUtil.doPost(b, c, "Dropbox-Java-SDK", paramString1, paramString2, paramArrayOfString, paramArrayList, paramResponseHandler);
  }
  
  /* Error */
  public <E extends Throwable> DbxEntry.File finishUploadFile(Uploader paramUploader, DbxStreamWriter<E> paramDbxStreamWriter)
    throws DbxException, Throwable
  {
    // Byte code:
    //   0: new 186	com/dropbox/core/NoThrowOutputStream
    //   3: dup
    //   4: aload_1
    //   5: invokevirtual 568	com/dropbox/core/v1/DbxClientV1$Uploader:getBody	()Ljava/io/OutputStream;
    //   8: invokespecial 195	com/dropbox/core/NoThrowOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   11: astore_3
    //   12: aload_2
    //   13: aload_3
    //   14: invokevirtual 201	com/dropbox/core/DbxStreamWriter:write	(Lcom/dropbox/core/NoThrowOutputStream;)V
    //   17: aload_1
    //   18: invokevirtual 571	com/dropbox/core/v1/DbxClientV1$Uploader:finish	()Lcom/dropbox/core/v1/DbxEntry$File;
    //   21: astore_2
    //   22: aload_1
    //   23: invokevirtual 572	com/dropbox/core/v1/DbxClientV1$Uploader:close	()V
    //   26: aload_2
    //   27: areturn
    //   28: astore_2
    //   29: goto +26 -> 55
    //   32: astore_2
    //   33: aload_2
    //   34: getfield 242	com/dropbox/core/NoThrowOutputStream$HiddenException:owner	Lcom/dropbox/core/NoThrowOutputStream;
    //   37: aload_3
    //   38: if_acmpne +15 -> 53
    //   41: new 214	com/dropbox/core/NetworkIOException
    //   44: dup
    //   45: aload_2
    //   46: invokevirtual 246	com/dropbox/core/NoThrowOutputStream$HiddenException:getCause	()Ljava/io/IOException;
    //   49: invokespecial 217	com/dropbox/core/NetworkIOException:<init>	(Ljava/io/IOException;)V
    //   52: athrow
    //   53: aload_2
    //   54: athrow
    //   55: aload_1
    //   56: invokevirtual 572	com/dropbox/core/v1/DbxClientV1$Uploader:close	()V
    //   59: aload_2
    //   60: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	61	0	this	DbxClientV1
    //   0	61	1	paramUploader	Uploader
    //   0	61	2	paramDbxStreamWriter	DbxStreamWriter<E>
    //   11	27	3	localNoThrowOutputStream	com.dropbox.core.NoThrowOutputStream
    // Exception table:
    //   from	to	target	type
    //   12	22	28	finally
    //   33	53	28	finally
    //   53	55	28	finally
    //   12	22	32	com/dropbox/core/NoThrowOutputStream$HiddenException
  }
  
  public String getAccessToken()
  {
    return c;
  }
  
  public DbxAccountInfo getAccountInfo()
    throws DbxException
  {
    (DbxAccountInfo)a(d.getApi(), "1/account/info", null, null, new DbxRequestUtil.ResponseHandler()
    {
      public DbxAccountInfo a(HttpRequestor.Response paramAnonymousResponse)
        throws DbxException
      {
        if (paramAnonymousResponse.getStatusCode() == 200) {
          return (DbxAccountInfo)DbxRequestUtil.readJsonFromResponse(DbxAccountInfo.Reader, paramAnonymousResponse);
        }
        throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
      }
    });
  }
  
  public DbxDelta<DbxEntry> getDelta(String paramString)
    throws DbxException
  {
    return getDelta(paramString, false);
  }
  
  public DbxDelta<DbxEntry> getDelta(String paramString, boolean paramBoolean)
    throws DbxException
  {
    return a(paramString, null, paramBoolean);
  }
  
  public <C> DbxDeltaC<C> getDeltaC(Collector<DbxDeltaC.Entry<DbxEntry>, C> paramCollector, String paramString)
    throws DbxException
  {
    return getDeltaC(paramCollector, paramString, false);
  }
  
  public <C> DbxDeltaC<C> getDeltaC(Collector<DbxDeltaC.Entry<DbxEntry>, C> paramCollector, String paramString, boolean paramBoolean)
    throws DbxException
  {
    return a(paramCollector, paramString, null, paramBoolean);
  }
  
  public <C> DbxDeltaC<C> getDeltaCWithPathPrefix(Collector<DbxDeltaC.Entry<DbxEntry>, C> paramCollector, String paramString1, String paramString2)
    throws DbxException
  {
    return getDeltaCWithPathPrefix(paramCollector, paramString1, paramString2, false);
  }
  
  public <C> DbxDeltaC<C> getDeltaCWithPathPrefix(Collector<DbxDeltaC.Entry<DbxEntry>, C> paramCollector, String paramString1, String paramString2, boolean paramBoolean)
    throws DbxException
  {
    DbxPathV1.checkArg("path", paramString2);
    return a(paramCollector, paramString1, paramString2, paramBoolean);
  }
  
  public String getDeltaLatestCursor()
    throws DbxException
  {
    return a(null, false);
  }
  
  public String getDeltaLatestCursor(boolean paramBoolean)
    throws DbxException
  {
    return a(null, paramBoolean);
  }
  
  public String getDeltaLatestCursorWithPathPrefix(String paramString)
    throws DbxException
  {
    return getDeltaLatestCursorWithPathPrefix(paramString, false);
  }
  
  public String getDeltaLatestCursorWithPathPrefix(String paramString, boolean paramBoolean)
    throws DbxException
  {
    DbxPathV1.checkArg("path", paramString);
    return a(paramString, paramBoolean);
  }
  
  public DbxDelta<DbxEntry> getDeltaWithPathPrefix(String paramString1, String paramString2)
    throws DbxException
  {
    DbxPathV1.checkArg("path", paramString2);
    return a(paramString1, paramString2, false);
  }
  
  public DbxDelta<DbxEntry> getDeltaWithPathPrefix(String paramString1, String paramString2, boolean paramBoolean)
    throws DbxException
  {
    DbxPathV1.checkArg("path", paramString2);
    return a(paramString1, paramString2, paramBoolean);
  }
  
  public DbxEntry.File getFile(String paramString1, String paramString2, OutputStream paramOutputStream)
    throws DbxException, IOException
  {
    paramString1 = startGetFile(paramString1, paramString2);
    if (paramString1 == null) {
      return null;
    }
    return paramString1.a(paramOutputStream);
  }
  
  public DbxHost getHost()
  {
    return d;
  }
  
  public DbxLongpollDeltaResult getLongpollDelta(String paramString, int paramInt)
    throws DbxException
  {
    if (paramString != null)
    {
      if ((paramInt >= 30) && (paramInt <= 480))
      {
        String str1 = Integer.toString(paramInt);
        DbxRequestConfig localDbxRequestConfig = getRequestConfig();
        String str2 = getAccessToken();
        String str3 = d.getNotify();
        DbxRequestUtil.ResponseHandler local4 = new DbxRequestUtil.ResponseHandler()
        {
          public DbxLongpollDeltaResult a(HttpRequestor.Response paramAnonymousResponse)
            throws DbxException
          {
            if (paramAnonymousResponse.getStatusCode() == 200) {
              return (DbxLongpollDeltaResult)DbxRequestUtil.readJsonFromResponse(DbxLongpollDeltaResult.Reader, paramAnonymousResponse);
            }
            throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
          }
        };
        return (DbxLongpollDeltaResult)DbxRequestUtil.doGet(localDbxRequestConfig, str2, "Dropbox-Java-SDK", str3, "1/longpoll_delta", new String[] { "cursor", paramString, "timeout", str1 }, null, local4);
      }
      throw new IllegalArgumentException("'timeout' must be >=30 and <= 480");
    }
    throw new IllegalArgumentException("'cursor' can't be null");
  }
  
  public DbxEntry getMetadata(String paramString)
    throws DbxException
  {
    return getMetadata(paramString, false);
  }
  
  public DbxEntry getMetadata(String paramString, boolean paramBoolean)
    throws DbxException
  {
    DbxPathV1.checkArg("path", paramString);
    String str = d.getApi();
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("1/metadata/auto");
    ((StringBuilder)localObject).append(paramString);
    localObject = ((StringBuilder)localObject).toString();
    if (paramBoolean) {
      paramString = "true";
    } else {
      paramString = null;
    }
    DbxRequestUtil.ResponseHandler local1 = new DbxRequestUtil.ResponseHandler()
    {
      public DbxEntry a(HttpRequestor.Response paramAnonymousResponse)
        throws DbxException
      {
        if (paramAnonymousResponse.getStatusCode() == 404) {
          return null;
        }
        if (paramAnonymousResponse.getStatusCode() == 200) {
          return (DbxEntry)DbxRequestUtil.readJsonFromResponse(DbxEntry.ReaderMaybeDeleted, paramAnonymousResponse);
        }
        throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
      }
    };
    return (DbxEntry)a(str, (String)localObject, new String[] { "list", "false", "include_media_info", paramString }, null, local1);
  }
  
  public DbxEntry.WithChildren getMetadataWithChildren(String paramString)
    throws DbxException
  {
    return getMetadataWithChildren(paramString, false);
  }
  
  public DbxEntry.WithChildren getMetadataWithChildren(String paramString, boolean paramBoolean)
    throws DbxException
  {
    return (DbxEntry.WithChildren)a(paramString, paramBoolean, DbxEntry.WithChildren.ReaderMaybeDeleted);
  }
  
  public <C> DbxEntry.WithChildrenC<C> getMetadataWithChildrenC(String paramString, Collector<DbxEntry, ? extends C> paramCollector)
    throws DbxException
  {
    return getMetadataWithChildrenC(paramString, false, paramCollector);
  }
  
  public <C> DbxEntry.WithChildrenC<C> getMetadataWithChildrenC(String paramString, boolean paramBoolean, Collector<DbxEntry, ? extends C> paramCollector)
    throws DbxException
  {
    return (DbxEntry.WithChildrenC)a(paramString, paramBoolean, new DbxEntry.WithChildrenC.ReaderMaybeDeleted(paramCollector));
  }
  
  public Maybe<DbxEntry.WithChildren> getMetadataWithChildrenIfChanged(String paramString1, String paramString2)
    throws DbxException
  {
    return getMetadataWithChildrenIfChanged(paramString1, false, paramString2);
  }
  
  public Maybe<DbxEntry.WithChildren> getMetadataWithChildrenIfChanged(String paramString1, boolean paramBoolean, String paramString2)
    throws DbxException
  {
    return a(paramString1, paramBoolean, paramString2, DbxEntry.WithChildren.ReaderMaybeDeleted);
  }
  
  public <C> Maybe<DbxEntry.WithChildrenC<C>> getMetadataWithChildrenIfChangedC(String paramString1, String paramString2, Collector<DbxEntry, ? extends C> paramCollector)
    throws DbxException
  {
    return getMetadataWithChildrenIfChangedC(paramString1, false, paramString2, paramCollector);
  }
  
  public <C> Maybe<DbxEntry.WithChildrenC<C>> getMetadataWithChildrenIfChangedC(String paramString1, boolean paramBoolean, String paramString2, Collector<DbxEntry, ? extends C> paramCollector)
    throws DbxException
  {
    return a(paramString1, paramBoolean, paramString2, new DbxEntry.WithChildrenC.ReaderMaybeDeleted(paramCollector));
  }
  
  public DbxRequestConfig getRequestConfig()
  {
    return b;
  }
  
  public List<DbxEntry.File> getRevisions(String paramString)
    throws DbxException
  {
    DbxPathV1.checkArgNonRoot("path", paramString);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("1/revisions/auto");
    localStringBuilder.append(paramString);
    paramString = localStringBuilder.toString();
    (List)a(d.getApi(), paramString, null, null, new DbxRequestUtil.ResponseHandler()
    {
      public List<DbxEntry.File> a(HttpRequestor.Response paramAnonymousResponse)
        throws DbxException
      {
        if (paramAnonymousResponse.getStatusCode() == 200)
        {
          Collector localCollector = Collector.NullSkipper.mk(new Collector.ArrayListCollector());
          return (List)DbxRequestUtil.readJsonFromResponse(JsonArrayReader.mk(DbxEntry.File.ReaderMaybeDeleted, localCollector), paramAnonymousResponse);
        }
        throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
      }
    });
  }
  
  public DbxEntry.File getThumbnail(DbxThumbnailSize paramDbxThumbnailSize, DbxThumbnailFormat paramDbxThumbnailFormat, String paramString1, String paramString2, OutputStream paramOutputStream)
    throws DbxException, IOException
  {
    if (paramOutputStream != null)
    {
      paramDbxThumbnailSize = startGetThumbnail(paramDbxThumbnailSize, paramDbxThumbnailFormat, paramString1, paramString2);
      if (paramDbxThumbnailSize == null) {
        return null;
      }
      return paramDbxThumbnailSize.a(paramOutputStream);
    }
    throw new IllegalArgumentException("'target' can't be null");
  }
  
  public DbxEntry move(String paramString1, String paramString2)
    throws DbxException
  {
    DbxPathV1.checkArgNonRoot("fromPath", paramString1);
    DbxPathV1.checkArgNonRoot("toPath", paramString2);
    String str = d.getApi();
    DbxRequestUtil.ResponseHandler local16 = new DbxRequestUtil.ResponseHandler()
    {
      public DbxEntry a(HttpRequestor.Response paramAnonymousResponse)
        throws DbxException
      {
        if (paramAnonymousResponse.getStatusCode() == 403) {
          return null;
        }
        if (paramAnonymousResponse.getStatusCode() == 200)
        {
          paramAnonymousResponse = (DbxEntry.WithChildren)DbxRequestUtil.readJsonFromResponse(DbxEntry.WithChildren.Reader, paramAnonymousResponse);
          if (paramAnonymousResponse == null) {
            return null;
          }
          return entry;
        }
        throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
      }
    };
    return (DbxEntry)doPost(str, "1/fileops/move", new String[] { "root", "auto", "from_path", paramString1, "to_path", paramString2 }, null, local16);
  }
  
  public DbxEntry.File restoreFile(String paramString1, String paramString2)
    throws DbxException
  {
    DbxPathV1.checkArgNonRoot("path", paramString1);
    if (paramString2 != null)
    {
      if (paramString2.length() != 0)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("1/restore/auto");
        ((StringBuilder)localObject).append(paramString1);
        paramString1 = ((StringBuilder)localObject).toString();
        localObject = d.getApi();
        DbxRequestUtil.ResponseHandler local6 = new DbxRequestUtil.ResponseHandler()
        {
          public DbxEntry.File a(HttpRequestor.Response paramAnonymousResponse)
            throws DbxException
          {
            if (paramAnonymousResponse.getStatusCode() == 404) {
              return null;
            }
            if (paramAnonymousResponse.getStatusCode() == 200) {
              return (DbxEntry.File)DbxRequestUtil.readJsonFromResponse(DbxEntry.File.Reader, paramAnonymousResponse);
            }
            throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
          }
        };
        return (DbxEntry.File)a((String)localObject, paramString1, new String[] { "rev", paramString2 }, null, local6);
      }
      throw new IllegalArgumentException("'rev' can't be empty");
    }
    throw new IllegalArgumentException("'rev' can't be null");
  }
  
  public List<DbxEntry> searchFileAndFolderNames(String paramString1, String paramString2)
    throws DbxException
  {
    DbxPathV1.checkArg("basePath", paramString1);
    if (paramString2 != null)
    {
      if (paramString2.length() != 0)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("1/search/auto");
        ((StringBuilder)localObject).append(paramString1);
        paramString1 = ((StringBuilder)localObject).toString();
        localObject = d.getApi();
        DbxRequestUtil.ResponseHandler local7 = new DbxRequestUtil.ResponseHandler()
        {
          public List<DbxEntry> a(HttpRequestor.Response paramAnonymousResponse)
            throws DbxException
          {
            if (paramAnonymousResponse.getStatusCode() == 200) {
              return (List)DbxRequestUtil.readJsonFromResponse(JsonArrayReader.mk(DbxEntry.Reader), paramAnonymousResponse);
            }
            throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
          }
        };
        return (List)doPost((String)localObject, paramString1, new String[] { "query", paramString2 }, null, local7);
      }
      throw new IllegalArgumentException("'query' can't be empty");
    }
    throw new IllegalArgumentException("'query' can't be null");
  }
  
  public Downloader startGetFile(String paramString1, String paramString2)
    throws DbxException
  {
    DbxPathV1.checkArgNonRoot("path", paramString1);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("1/files/auto");
    localStringBuilder.append(paramString1);
    return a(localStringBuilder.toString(), new String[] { "rev", paramString2 });
  }
  
  public Downloader startGetThumbnail(DbxThumbnailSize paramDbxThumbnailSize, DbxThumbnailFormat paramDbxThumbnailFormat, String paramString1, String paramString2)
    throws DbxException
  {
    DbxPathV1.checkArgNonRoot("path", paramString1);
    if (paramDbxThumbnailSize != null)
    {
      if (paramDbxThumbnailFormat != null)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("1/thumbnails/auto");
        localStringBuilder.append(paramString1);
        return a(localStringBuilder.toString(), new String[] { "size", ident, "format", ident, "rev", paramString2 });
      }
      throw new IllegalArgumentException("'format' can't be null");
    }
    throw new IllegalArgumentException("'size' can't be null");
  }
  
  public Uploader startUploadFile(String paramString, DbxWriteMode paramDbxWriteMode, long paramLong)
    throws DbxException
  {
    if (paramLong < 0L)
    {
      if (paramLong == -1L) {
        return startUploadFileChunked(paramString, paramDbxWriteMode, paramLong);
      }
      paramString = new StringBuilder();
      paramString.append("numBytes must be -1 or greater; given ");
      paramString.append(paramLong);
      throw new IllegalArgumentException(paramString.toString());
    }
    if (paramLong > 8388608L) {
      return startUploadFileChunked(paramString, paramDbxWriteMode, paramLong);
    }
    return startUploadFileSingle(paramString, paramDbxWriteMode, paramLong);
  }
  
  public Uploader startUploadFileChunked(int paramInt, String paramString, DbxWriteMode paramDbxWriteMode, long paramLong)
  {
    DbxPathV1.checkArg("targetPath", paramString);
    if (paramDbxWriteMode != null) {
      return new c(paramString, paramDbxWriteMode, paramLong, new a(paramInt, null), null);
    }
    throw new IllegalArgumentException("'writeMode' can't be null");
  }
  
  public Uploader startUploadFileChunked(String paramString, DbxWriteMode paramDbxWriteMode, long paramLong)
  {
    return startUploadFileChunked(4194304, paramString, paramDbxWriteMode, paramLong);
  }
  
  public Uploader startUploadFileSingle(String paramString, DbxWriteMode paramDbxWriteMode, long paramLong)
    throws DbxException
  {
    DbxPathV1.checkArg("targetPath", paramString);
    if (paramLong >= 0L)
    {
      String str = d.getContent();
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("1/files_put/auto");
      ((StringBuilder)localObject).append(paramString);
      paramString = ((StringBuilder)localObject).toString();
      localObject = new ArrayList();
      ((ArrayList)localObject).add(new HttpRequestor.Header("Content-Type", "application/octet-stream"));
      ((ArrayList)localObject).add(new HttpRequestor.Header("Content-Length", Long.toString(paramLong)));
      return new e(DbxRequestUtil.startPut(b, c, "Dropbox-Java-SDK", str, paramString, a, (List)localObject), paramLong);
    }
    throw new IllegalArgumentException("numBytes must be zero or greater");
  }
  
  public <E extends Throwable> DbxEntry.File uploadFile(String paramString, DbxWriteMode paramDbxWriteMode, long paramLong, DbxStreamWriter<E> paramDbxStreamWriter)
    throws DbxException, Throwable
  {
    return finishUploadFile(startUploadFile(paramString, paramDbxWriteMode, paramLong), paramDbxStreamWriter);
  }
  
  public DbxEntry.File uploadFile(String paramString, DbxWriteMode paramDbxWriteMode, long paramLong, InputStream paramInputStream)
    throws DbxException, IOException
  {
    return uploadFile(paramString, paramDbxWriteMode, paramLong, new DbxStreamWriter.InputStreamCopier(paramInputStream));
  }
  
  public <E extends Throwable> DbxEntry.File uploadFileChunked(int paramInt, String paramString, DbxWriteMode paramDbxWriteMode, long paramLong, DbxStreamWriter<E> paramDbxStreamWriter)
    throws DbxException, Throwable
  {
    return finishUploadFile(startUploadFileChunked(paramInt, paramString, paramDbxWriteMode, paramLong), paramDbxStreamWriter);
  }
  
  public <E extends Throwable> DbxEntry.File uploadFileChunked(String paramString, DbxWriteMode paramDbxWriteMode, long paramLong, DbxStreamWriter<E> paramDbxStreamWriter)
    throws DbxException, Throwable
  {
    return finishUploadFile(startUploadFileChunked(paramString, paramDbxWriteMode, paramLong), paramDbxStreamWriter);
  }
  
  public <E extends Throwable> DbxEntry.File uploadFileSingle(String paramString, DbxWriteMode paramDbxWriteMode, long paramLong, DbxStreamWriter<E> paramDbxStreamWriter)
    throws DbxException, Throwable
  {
    return finishUploadFile(startUploadFileSingle(paramString, paramDbxWriteMode, paramLong), paramDbxStreamWriter);
  }
  
  public static final class Downloader
  {
    public final InputStream body;
    public final DbxEntry.File metadata;
    
    public Downloader(DbxEntry.File paramFile, InputStream paramInputStream)
    {
      metadata = paramFile;
      body = paramInputStream;
    }
    
    /* Error */
    DbxEntry.File a(OutputStream paramOutputStream)
      throws DbxException, IOException
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 20	com/dropbox/core/v1/DbxClientV1$Downloader:body	Ljava/io/InputStream;
      //   4: aload_1
      //   5: invokestatic 37	com/dropbox/core/util/IOUtil:copyStreamToStream	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
      //   8: aload_0
      //   9: invokevirtual 40	com/dropbox/core/v1/DbxClientV1$Downloader:close	()V
      //   12: aload_0
      //   13: getfield 18	com/dropbox/core/v1/DbxClientV1$Downloader:metadata	Lcom/dropbox/core/v1/DbxEntry$File;
      //   16: areturn
      //   17: astore_1
      //   18: goto +22 -> 40
      //   21: astore_1
      //   22: aload_1
      //   23: invokevirtual 44	com/dropbox/core/util/IOUtil$WriteException:getCause	()Ljava/io/IOException;
      //   26: athrow
      //   27: astore_1
      //   28: new 46	com/dropbox/core/NetworkIOException
      //   31: dup
      //   32: aload_1
      //   33: invokevirtual 47	com/dropbox/core/util/IOUtil$ReadException:getCause	()Ljava/io/IOException;
      //   36: invokespecial 50	com/dropbox/core/NetworkIOException:<init>	(Ljava/io/IOException;)V
      //   39: athrow
      //   40: aload_0
      //   41: invokevirtual 40	com/dropbox/core/v1/DbxClientV1$Downloader:close	()V
      //   44: aload_1
      //   45: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	46	0	this	Downloader
      //   0	46	1	paramOutputStream	OutputStream
      // Exception table:
      //   from	to	target	type
      //   0	8	17	finally
      //   22	27	17	finally
      //   28	40	17	finally
      //   0	8	21	com/dropbox/core/util/IOUtil$WriteException
      //   0	8	27	com/dropbox/core/util/IOUtil$ReadException
    }
    
    public void close()
    {
      IOUtil.closeInput(body);
    }
  }
  
  public static final class IODbxException
    extends IOException
  {
    private static final long serialVersionUID = 0L;
    public final DbxException underlying;
    
    public IODbxException(DbxException paramDbxException)
    {
      super();
      underlying = paramDbxException;
    }
  }
  
  public static abstract class Uploader
  {
    public Uploader() {}
    
    public abstract void abort();
    
    public abstract void close();
    
    public abstract DbxEntry.File finish()
      throws DbxException;
    
    public abstract OutputStream getBody();
  }
  
  private final class a
    extends OutputStream
  {
    private final byte[] c;
    private int d = 0;
    private String e;
    private long f;
    
    private a(int paramInt)
    {
      c = new byte[paramInt];
      d = 0;
    }
    
    private void a()
      throws DbxException
    {
      if ((!a) && (d > c.length)) {
        throw new AssertionError();
      }
      if (d == c.length) {
        b();
      }
    }
    
    private void b()
      throws DbxException
    {
      if (d == 0) {
        return;
      }
      final String str;
      final int i;
      if (e == null)
      {
        e = ((String)DbxRequestUtil.runAndRetry(3, new DbxRequestUtil.RequestMaker()
        {
          public String a()
            throws DbxException
          {
            return chunkedUploadFirst(DbxClientV1.a.c(DbxClientV1.a.this), 0, DbxClientV1.a.b(DbxClientV1.a.this));
          }
        }));
        f = d;
      }
      else
      {
        str = e;
        i = 0;
      }
      for (;;)
      {
        long l1 = ((Long)DbxRequestUtil.runAndRetry(3, new DbxRequestUtil.RequestMaker()
        {
          public Long a()
            throws DbxException
          {
            return Long.valueOf(chunkedUploadAppend(str, DbxClientV1.a.e(DbxClientV1.a.this), DbxClientV1.a.c(DbxClientV1.a.this), i, DbxClientV1.a.b(DbxClientV1.a.this) - i));
          }
        })).longValue();
        long l2 = f;
        long l3 = d;
        if (l1 == -1L)
        {
          f = (l2 + l3);
          d = 0;
          return;
        }
        i += (int)(l1 - f);
      }
    }
    
    public void close()
      throws IOException
    {}
    
    public void write(int paramInt)
      throws IOException
    {
      byte[] arrayOfByte = c;
      int i = d;
      d = (i + 1);
      arrayOfByte[i] = ((byte)paramInt);
      try
      {
        a();
        return;
      }
      catch (DbxException localDbxException)
      {
        throw new DbxClientV1.IODbxException(localDbxException);
      }
    }
    
    public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      paramInt2 += paramInt1;
      while (paramInt1 < paramInt2)
      {
        int i = Math.min(paramInt2 - paramInt1, c.length - d);
        System.arraycopy(paramArrayOfByte, paramInt1, c, d, i);
        d += i;
        paramInt1 += i;
        try
        {
          a();
        }
        catch (DbxException paramArrayOfByte)
        {
          throw new DbxClientV1.IODbxException(paramArrayOfByte);
        }
      }
    }
  }
  
  private static final class b
    extends Dumpable
  {
    public static final JsonReader<b> c = new JsonReader()
    {
      public DbxClientV1.b a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        JsonLocation localJsonLocation = JsonReader.expectObjectStart(paramAnonymousJsonParser);
        Object localObject = null;
        long l = -1L;
        while (paramAnonymousJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramAnonymousJsonParser.getCurrentName();
          paramAnonymousJsonParser.nextToken();
          try
          {
            if (str.equals("upload_id")) {
              localObject = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject);
            } else if (str.equals("offset")) {
              l = JsonReader.readUnsignedLongField(paramAnonymousJsonParser, str, l);
            } else {
              JsonReader.skipValue(paramAnonymousJsonParser);
            }
          }
          catch (JsonReadException paramAnonymousJsonParser)
          {
            throw paramAnonymousJsonParser.addFieldContext(str);
          }
        }
        JsonReader.expectObjectEnd(paramAnonymousJsonParser);
        if (localObject != null)
        {
          if (l != -1L) {
            return new DbxClientV1.b((String)localObject, l);
          }
          throw new JsonReadException("missing field \"offset\"", localJsonLocation);
        }
        throw new JsonReadException("missing field \"upload_id\"", localJsonLocation);
      }
    };
    public final String a;
    public final long b;
    
    public b(String paramString, long paramLong)
    {
      if (paramString != null)
      {
        if (paramString.length() != 0)
        {
          if (paramLong >= 0L)
          {
            a = paramString;
            b = paramLong;
            return;
          }
          throw new IllegalArgumentException("'offset' can't be negative");
        }
        throw new IllegalArgumentException("'uploadId' can't be empty");
      }
      throw new IllegalArgumentException("'uploadId' can't be null");
    }
    
    protected void dumpFields(DumpWriter paramDumpWriter)
    {
      paramDumpWriter.f("uploadId").v(a);
      paramDumpWriter.f("offset").v(b);
    }
  }
  
  private final class c
    extends DbxClientV1.Uploader
  {
    private final String b;
    private final DbxWriteMode c;
    private final long d;
    private final DbxClientV1.a e;
    
    private c(String paramString, DbxWriteMode paramDbxWriteMode, long paramLong, DbxClientV1.a paramA)
    {
      b = paramString;
      c = paramDbxWriteMode;
      d = paramLong;
      e = paramA;
    }
    
    public void abort() {}
    
    public void close() {}
    
    public DbxEntry.File finish()
      throws DbxException
    {
      if (DbxClientV1.a.a(e) == null) {
        return uploadFileSingle(b, c, DbxClientV1.a.b(e), new DbxStreamWriter.ByteArrayCopier(DbxClientV1.a.c(e), 0, DbxClientV1.a.b(e)));
      }
      Object localObject = DbxClientV1.a.a(e);
      DbxClientV1.a.d(e);
      if ((d != -1L) && (d != DbxClientV1.a.e(e)))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("'numBytes' is ");
        ((StringBuilder)localObject).append(d);
        ((StringBuilder)localObject).append(" but you wrote ");
        ((StringBuilder)localObject).append(DbxClientV1.a.e(e));
        ((StringBuilder)localObject).append(" bytes");
        throw new IllegalStateException(((StringBuilder)localObject).toString());
      }
      (DbxEntry.File)DbxRequestUtil.runAndRetry(3, new DbxRequestUtil.RequestMaker()
      {
        public DbxEntry.File a()
          throws DbxException
        {
          return chunkedUploadFinish(DbxClientV1.c.a(DbxClientV1.c.this), DbxClientV1.c.b(DbxClientV1.c.this), a);
        }
      });
    }
    
    public OutputStream getBody()
    {
      return e;
    }
  }
  
  private static final class d
  {
    public static final JsonReader<d> c = new JsonReader()
    {
      public DbxClientV1.d a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        JsonLocation localJsonLocation = JsonReader.expectObjectStart(paramAnonymousJsonParser);
        Object localObject2 = null;
        Object localObject1 = localObject2;
        while (paramAnonymousJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramAnonymousJsonParser.getCurrentName();
          paramAnonymousJsonParser.nextToken();
          try
          {
            if (str.equals("copy_ref")) {
              localObject2 = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject2);
            } else if (str.equals("expires")) {
              localObject1 = (Date)JsonDateReader.Dropbox.readField(paramAnonymousJsonParser, str, localObject1);
            } else {
              JsonReader.skipValue(paramAnonymousJsonParser);
            }
          }
          catch (JsonReadException paramAnonymousJsonParser)
          {
            throw paramAnonymousJsonParser.addFieldContext(str);
          }
        }
        JsonReader.expectObjectEnd(paramAnonymousJsonParser);
        if (localObject2 != null)
        {
          if (localObject1 != null) {
            return new DbxClientV1.d((String)localObject2, (Date)localObject1, null);
          }
          throw new JsonReadException("missing field \"expires\"", localJsonLocation);
        }
        throw new JsonReadException("missing field \"copy_ref\"", localJsonLocation);
      }
    };
    public final String a;
    public final Date b;
    
    private d(String paramString, Date paramDate)
    {
      a = paramString;
      b = paramDate;
    }
  }
  
  private static final class e
    extends DbxClientV1.Uploader
  {
    private HttpRequestor.Uploader a;
    private final long b;
    private final CountingOutputStream c;
    
    public e(HttpRequestor.Uploader paramUploader, long paramLong)
    {
      if (paramLong >= 0L)
      {
        a = paramUploader;
        b = paramLong;
        c = new CountingOutputStream(paramUploader.getBody());
        return;
      }
      throw new IllegalArgumentException("'numBytes' must be greater than or equal to 0");
    }
    
    public void abort()
    {
      if (a != null)
      {
        HttpRequestor.Uploader localUploader = a;
        a = null;
        localUploader.abort();
        return;
      }
      throw new IllegalStateException("already called 'finish', 'abort', or 'close'");
    }
    
    public void close()
    {
      if (a == null) {
        return;
      }
      abort();
    }
    
    /* Error */
    public DbxEntry.File finish()
      throws DbxException
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 22	com/dropbox/core/v1/DbxClientV1$e:a	Lcom/dropbox/core/http/HttpRequestor$Uploader;
      //   4: ifnull +149 -> 153
      //   7: aload_0
      //   8: getfield 22	com/dropbox/core/v1/DbxClientV1$e:a	Lcom/dropbox/core/http/HttpRequestor$Uploader;
      //   11: astore_3
      //   12: aload_0
      //   13: aconst_null
      //   14: putfield 22	com/dropbox/core/v1/DbxClientV1$e:a	Lcom/dropbox/core/http/HttpRequestor$Uploader;
      //   17: aload_0
      //   18: getfield 37	com/dropbox/core/v1/DbxClientV1$e:c	Lcom/dropbox/core/util/CountingOutputStream;
      //   21: invokevirtual 65	com/dropbox/core/util/CountingOutputStream:getBytesWritten	()J
      //   24: lstore_1
      //   25: aload_0
      //   26: getfield 24	com/dropbox/core/v1/DbxClientV1$e:b	J
      //   29: lload_1
      //   30: lcmp
      //   31: ifne +31 -> 62
      //   34: aload_3
      //   35: invokevirtual 68	com/dropbox/core/http/HttpRequestor$Uploader:finish	()Lcom/dropbox/core/http/HttpRequestor$Response;
      //   38: astore 4
      //   40: aload_3
      //   41: invokevirtual 70	com/dropbox/core/http/HttpRequestor$Uploader:close	()V
      //   44: aload 4
      //   46: new 9	com/dropbox/core/v1/DbxClientV1$e$1
      //   49: dup
      //   50: aload_0
      //   51: lload_1
      //   52: invokespecial 73	com/dropbox/core/v1/DbxClientV1$e$1:<init>	(Lcom/dropbox/core/v1/DbxClientV1$e;J)V
      //   55: invokestatic 79	com/dropbox/core/DbxRequestUtil:finishResponse	(Lcom/dropbox/core/http/HttpRequestor$Response;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;
      //   58: checkcast 81	com/dropbox/core/v1/DbxEntry$File
      //   61: areturn
      //   62: aload_3
      //   63: invokevirtual 48	com/dropbox/core/http/HttpRequestor$Uploader:abort	()V
      //   66: new 83	java/lang/StringBuilder
      //   69: dup
      //   70: invokespecial 84	java/lang/StringBuilder:<init>	()V
      //   73: astore 4
      //   75: aload 4
      //   77: ldc 86
      //   79: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   82: pop
      //   83: aload 4
      //   85: aload_0
      //   86: getfield 24	com/dropbox/core/v1/DbxClientV1$e:b	J
      //   89: invokevirtual 93	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   92: pop
      //   93: aload 4
      //   95: ldc 95
      //   97: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   100: pop
      //   101: aload 4
      //   103: lload_1
      //   104: invokevirtual 93	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   107: pop
      //   108: aload 4
      //   110: ldc 97
      //   112: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   115: pop
      //   116: new 50	java/lang/IllegalStateException
      //   119: dup
      //   120: aload 4
      //   122: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   125: invokespecial 53	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
      //   128: athrow
      //   129: astore 4
      //   131: goto +15 -> 146
      //   134: astore 4
      //   136: new 103	com/dropbox/core/NetworkIOException
      //   139: dup
      //   140: aload 4
      //   142: invokespecial 106	com/dropbox/core/NetworkIOException:<init>	(Ljava/io/IOException;)V
      //   145: athrow
      //   146: aload_3
      //   147: invokevirtual 70	com/dropbox/core/http/HttpRequestor$Uploader:close	()V
      //   150: aload 4
      //   152: athrow
      //   153: new 50	java/lang/IllegalStateException
      //   156: dup
      //   157: ldc 52
      //   159: invokespecial 53	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
      //   162: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	163	0	this	e
      //   24	80	1	l	long
      //   11	136	3	localUploader	HttpRequestor.Uploader
      //   38	83	4	localObject1	Object
      //   129	1	4	localObject2	Object
      //   134	17	4	localIOException	IOException
      // Exception table:
      //   from	to	target	type
      //   17	40	129	finally
      //   62	129	129	finally
      //   136	146	129	finally
      //   17	40	134	java/io/IOException
      //   62	129	134	java/io/IOException
    }
    
    public OutputStream getBody()
    {
      return c;
    }
  }
}
