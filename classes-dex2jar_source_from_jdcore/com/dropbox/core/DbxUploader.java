package com.dropbox.core;

import com.dropbox.core.http.HttpRequestor.Uploader;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.util.IOUtil;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public abstract class DbxUploader<R, E, X extends DbxApiException>
  implements Closeable
{
  private final HttpRequestor.Uploader a;
  private final StoneSerializer<R> b;
  private final StoneSerializer<E> c;
  private boolean d;
  private boolean e;
  private final String f;
  
  protected DbxUploader(HttpRequestor.Uploader paramUploader, StoneSerializer<R> paramStoneSerializer, StoneSerializer<E> paramStoneSerializer1, String paramString)
  {
    a = paramUploader;
    b = paramStoneSerializer;
    c = paramStoneSerializer1;
    d = false;
    e = false;
    f = paramString;
  }
  
  private void a()
  {
    if (!d)
    {
      if (!e) {
        return;
      }
      throw new IllegalStateException("This uploader is already finished and cannot be used to upload more data.");
    }
    throw new IllegalStateException("This uploader is already closed.");
  }
  
  public void abort()
  {
    a.abort();
  }
  
  public void close()
  {
    if (!d)
    {
      a.close();
      d = true;
    }
  }
  
  /* Error */
  public R finish()
    throws DbxApiException, DbxException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 68	com/dropbox/core/DbxUploader:a	()V
    //   4: aload_0
    //   5: getfield 26	com/dropbox/core/DbxUploader:a	Lcom/dropbox/core/http/HttpRequestor$Uploader;
    //   8: invokevirtual 71	com/dropbox/core/http/HttpRequestor$Uploader:finish	()Lcom/dropbox/core/http/HttpRequestor$Response;
    //   11: astore_2
    //   12: aload_2
    //   13: astore_1
    //   14: aload_2
    //   15: invokevirtual 77	com/dropbox/core/http/HttpRequestor$Response:getStatusCode	()I
    //   18: sipush 200
    //   21: if_icmpne +35 -> 56
    //   24: aload_2
    //   25: astore_1
    //   26: aload_0
    //   27: getfield 28	com/dropbox/core/DbxUploader:b	Lcom/dropbox/core/stone/StoneSerializer;
    //   30: aload_2
    //   31: invokevirtual 81	com/dropbox/core/http/HttpRequestor$Response:getBody	()Ljava/io/InputStream;
    //   34: invokevirtual 87	com/dropbox/core/stone/StoneSerializer:deserialize	(Ljava/io/InputStream;)Ljava/lang/Object;
    //   37: astore_3
    //   38: aload_2
    //   39: ifnull +10 -> 49
    //   42: aload_2
    //   43: invokevirtual 81	com/dropbox/core/http/HttpRequestor$Response:getBody	()Ljava/io/InputStream;
    //   46: invokestatic 93	com/dropbox/core/util/IOUtil:closeQuietly	(Ljava/io/Closeable;)V
    //   49: aload_0
    //   50: iconst_1
    //   51: putfield 34	com/dropbox/core/DbxUploader:e	Z
    //   54: aload_3
    //   55: areturn
    //   56: aload_2
    //   57: astore_1
    //   58: aload_2
    //   59: invokevirtual 77	com/dropbox/core/http/HttpRequestor$Response:getStatusCode	()I
    //   62: sipush 409
    //   65: if_icmpne +22 -> 87
    //   68: aload_2
    //   69: astore_1
    //   70: aload_0
    //   71: aload_0
    //   72: getfield 30	com/dropbox/core/DbxUploader:c	Lcom/dropbox/core/stone/StoneSerializer;
    //   75: aload_2
    //   76: aload_0
    //   77: getfield 36	com/dropbox/core/DbxUploader:f	Ljava/lang/String;
    //   80: invokestatic 99	com/dropbox/core/DbxWrappedException:fromResponse	(Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Lcom/dropbox/core/DbxWrappedException;
    //   83: invokevirtual 103	com/dropbox/core/DbxUploader:newException	(Lcom/dropbox/core/DbxWrappedException;)Lcom/dropbox/core/DbxApiException;
    //   86: athrow
    //   87: aload_2
    //   88: astore_1
    //   89: aload_2
    //   90: invokestatic 109	com/dropbox/core/DbxRequestUtil:unexpectedStatus	(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;
    //   93: athrow
    //   94: astore_3
    //   95: aload_2
    //   96: astore_1
    //   97: goto +69 -> 166
    //   100: astore_3
    //   101: aload_2
    //   102: astore_1
    //   103: aload_2
    //   104: invokestatic 113	com/dropbox/core/DbxRequestUtil:getRequestId	(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;
    //   107: astore 4
    //   109: aload_2
    //   110: astore_1
    //   111: new 115	java/lang/StringBuilder
    //   114: dup
    //   115: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   118: astore 5
    //   120: aload_2
    //   121: astore_1
    //   122: aload 5
    //   124: ldc 118
    //   126: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: pop
    //   130: aload_2
    //   131: astore_1
    //   132: aload 5
    //   134: aload_3
    //   135: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   138: pop
    //   139: aload_2
    //   140: astore_1
    //   141: new 127	com/dropbox/core/BadResponseException
    //   144: dup
    //   145: aload 4
    //   147: aload 5
    //   149: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   152: aload_3
    //   153: invokespecial 134	com/dropbox/core/BadResponseException:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   156: athrow
    //   157: astore_1
    //   158: aconst_null
    //   159: astore_2
    //   160: goto +20 -> 180
    //   163: astore_3
    //   164: aconst_null
    //   165: astore_1
    //   166: new 136	com/dropbox/core/NetworkIOException
    //   169: dup
    //   170: aload_3
    //   171: invokespecial 139	com/dropbox/core/NetworkIOException:<init>	(Ljava/io/IOException;)V
    //   174: athrow
    //   175: astore_3
    //   176: aload_1
    //   177: astore_2
    //   178: aload_3
    //   179: astore_1
    //   180: aload_2
    //   181: ifnull +10 -> 191
    //   184: aload_2
    //   185: invokevirtual 81	com/dropbox/core/http/HttpRequestor$Response:getBody	()Ljava/io/InputStream;
    //   188: invokestatic 93	com/dropbox/core/util/IOUtil:closeQuietly	(Ljava/io/Closeable;)V
    //   191: aload_0
    //   192: iconst_1
    //   193: putfield 34	com/dropbox/core/DbxUploader:e	Z
    //   196: aload_1
    //   197: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	198	0	this	DbxUploader
    //   13	128	1	localObject1	Object
    //   157	1	1	localObject2	Object
    //   165	32	1	localObject3	Object
    //   11	174	2	localObject4	Object
    //   37	18	3	localObject5	Object
    //   94	1	3	localIOException1	IOException
    //   100	53	3	localJsonProcessingException	com.fasterxml.jackson.core.JsonProcessingException
    //   163	8	3	localIOException2	IOException
    //   175	4	3	localObject6	Object
    //   107	39	4	str	String
    //   118	30	5	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   14	24	94	java/io/IOException
    //   26	38	94	java/io/IOException
    //   58	68	94	java/io/IOException
    //   70	87	94	java/io/IOException
    //   89	94	94	java/io/IOException
    //   103	109	94	java/io/IOException
    //   111	120	94	java/io/IOException
    //   122	130	94	java/io/IOException
    //   132	139	94	java/io/IOException
    //   141	157	94	java/io/IOException
    //   14	24	100	com/fasterxml/jackson/core/JsonProcessingException
    //   26	38	100	com/fasterxml/jackson/core/JsonProcessingException
    //   58	68	100	com/fasterxml/jackson/core/JsonProcessingException
    //   70	87	100	com/fasterxml/jackson/core/JsonProcessingException
    //   89	94	100	com/fasterxml/jackson/core/JsonProcessingException
    //   4	12	157	finally
    //   4	12	163	java/io/IOException
    //   14	24	175	finally
    //   26	38	175	finally
    //   58	68	175	finally
    //   70	87	175	finally
    //   89	94	175	finally
    //   103	109	175	finally
    //   111	120	175	finally
    //   122	130	175	finally
    //   132	139	175	finally
    //   141	157	175	finally
    //   166	175	175	finally
  }
  
  public OutputStream getOutputStream()
  {
    a();
    return a.getBody();
  }
  
  protected abstract X newException(DbxWrappedException paramDbxWrappedException);
  
  /* Error */
  public R uploadAndFinish(InputStream paramInputStream)
    throws DbxApiException, DbxException, IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 26	com/dropbox/core/DbxUploader:a	Lcom/dropbox/core/http/HttpRequestor$Uploader;
    //   4: aload_1
    //   5: invokevirtual 152	com/dropbox/core/http/HttpRequestor$Uploader:upload	(Ljava/io/InputStream;)V
    //   8: aload_0
    //   9: invokevirtual 154	com/dropbox/core/DbxUploader:finish	()Ljava/lang/Object;
    //   12: astore_1
    //   13: aload_0
    //   14: invokevirtual 155	com/dropbox/core/DbxUploader:close	()V
    //   17: aload_1
    //   18: areturn
    //   19: astore_1
    //   20: goto +19 -> 39
    //   23: astore_1
    //   24: new 136	com/dropbox/core/NetworkIOException
    //   27: dup
    //   28: aload_1
    //   29: invokespecial 139	com/dropbox/core/NetworkIOException:<init>	(Ljava/io/IOException;)V
    //   32: athrow
    //   33: astore_1
    //   34: aload_1
    //   35: invokevirtual 159	com/dropbox/core/util/IOUtil$ReadException:getCause	()Ljava/io/IOException;
    //   38: athrow
    //   39: aload_0
    //   40: invokevirtual 155	com/dropbox/core/DbxUploader:close	()V
    //   43: aload_1
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	45	0	this	DbxUploader
    //   0	45	1	paramInputStream	InputStream
    // Exception table:
    //   from	to	target	type
    //   0	8	19	finally
    //   8	13	19	finally
    //   24	33	19	finally
    //   34	39	19	finally
    //   0	8	23	java/io/IOException
    //   0	8	33	com/dropbox/core/util/IOUtil$ReadException
  }
  
  public R uploadAndFinish(InputStream paramInputStream, long paramLong)
    throws DbxApiException, DbxException, IOException
  {
    return uploadAndFinish(IOUtil.limit(paramInputStream, paramLong));
  }
}
