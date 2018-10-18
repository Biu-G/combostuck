package com.bumptech.glide.load.data;

import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.util.ContentLengthInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class HttpUrlFetcher
  implements DataFetcher<InputStream>
{
  @VisibleForTesting
  static final b a = new a();
  private final GlideUrl b;
  private final int c;
  private final b d;
  private HttpURLConnection e;
  private InputStream f;
  private volatile boolean g;
  
  public HttpUrlFetcher(GlideUrl paramGlideUrl, int paramInt)
  {
    this(paramGlideUrl, paramInt, a);
  }
  
  @VisibleForTesting
  HttpUrlFetcher(GlideUrl paramGlideUrl, int paramInt, b paramB)
  {
    b = paramGlideUrl;
    c = paramInt;
    d = paramB;
  }
  
  private InputStream a(HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    if (TextUtils.isEmpty(paramHttpURLConnection.getContentEncoding()))
    {
      int i = paramHttpURLConnection.getContentLength();
      f = ContentLengthInputStream.obtain(paramHttpURLConnection.getInputStream(), i);
    }
    else
    {
      if (Log.isLoggable("HttpUrlFetcher", 3))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Got non empty content encoding: ");
        localStringBuilder.append(paramHttpURLConnection.getContentEncoding());
        Log.d("HttpUrlFetcher", localStringBuilder.toString());
      }
      f = paramHttpURLConnection.getInputStream();
    }
    return f;
  }
  
  private InputStream a(URL paramURL1, int paramInt, URL paramURL2, Map<String, String> paramMap)
    throws IOException
  {
    if ((paramInt >= 5) || (paramURL2 != null)) {}
    try
    {
      if (paramURL1.toURI().equals(paramURL2.toURI())) {
        throw new HttpException("In re-direct loop");
      }
    }
    catch (URISyntaxException paramURL2)
    {
      int i;
      for (;;) {}
    }
    e = d.a(paramURL1);
    paramURL2 = paramMap.entrySet().iterator();
    while (paramURL2.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramURL2.next();
      e.addRequestProperty((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    e.setConnectTimeout(c);
    e.setReadTimeout(c);
    e.setUseCaches(false);
    e.setDoInput(true);
    e.setInstanceFollowRedirects(false);
    e.connect();
    f = e.getInputStream();
    if (g) {
      return null;
    }
    i = e.getResponseCode();
    if (a(i)) {
      return a(e);
    }
    if (b(i))
    {
      paramURL2 = e.getHeaderField("Location");
      if (!TextUtils.isEmpty(paramURL2))
      {
        paramURL2 = new URL(paramURL1, paramURL2);
        cleanup();
        return a(paramURL2, paramInt + 1, paramURL1, paramMap);
      }
      throw new HttpException("Received empty or null redirect url");
    }
    if (i == -1) {
      throw new HttpException(i);
    }
    throw new HttpException(e.getResponseMessage(), i);
    throw new HttpException("Too many (> 5) redirects!");
  }
  
  private static boolean a(int paramInt)
  {
    return paramInt / 100 == 2;
  }
  
  private static boolean b(int paramInt)
  {
    return paramInt / 100 == 3;
  }
  
  public void cancel()
  {
    g = true;
  }
  
  public void cleanup()
  {
    if (f != null) {}
    try
    {
      f.close();
      if (e != null) {
        e.disconnect();
      }
      e = null;
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  @NonNull
  public Class<InputStream> getDataClass()
  {
    return InputStream.class;
  }
  
  @NonNull
  public DataSource getDataSource()
  {
    return DataSource.REMOTE;
  }
  
  /* Error */
  public void loadData(@NonNull com.bumptech.glide.Priority paramPriority, @NonNull DataFetcher.DataCallback<? super InputStream> paramDataCallback)
  {
    // Byte code:
    //   0: invokestatic 252	com/bumptech/glide/util/LogTime:getLogTime	()J
    //   3: lstore_3
    //   4: aload_2
    //   5: aload_0
    //   6: aload_0
    //   7: getfield 40	com/bumptech/glide/load/data/HttpUrlFetcher:b	Lcom/bumptech/glide/load/model/GlideUrl;
    //   10: invokevirtual 258	com/bumptech/glide/load/model/GlideUrl:toURL	()Ljava/net/URL;
    //   13: iconst_0
    //   14: aconst_null
    //   15: aload_0
    //   16: getfield 40	com/bumptech/glide/load/data/HttpUrlFetcher:b	Lcom/bumptech/glide/load/model/GlideUrl;
    //   19: invokevirtual 262	com/bumptech/glide/load/model/GlideUrl:getHeaders	()Ljava/util/Map;
    //   22: invokespecial 209	com/bumptech/glide/load/data/HttpUrlFetcher:a	(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    //   25: invokeinterface 268 2 0
    //   30: ldc 78
    //   32: iconst_2
    //   33: invokestatic 84	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   36: ifeq +89 -> 125
    //   39: new 86	java/lang/StringBuilder
    //   42: dup
    //   43: invokespecial 87	java/lang/StringBuilder:<init>	()V
    //   46: astore_1
    //   47: goto +51 -> 98
    //   50: astore_1
    //   51: goto +75 -> 126
    //   54: astore_1
    //   55: ldc 78
    //   57: iconst_3
    //   58: invokestatic 84	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   61: ifeq +13 -> 74
    //   64: ldc 78
    //   66: ldc_w 270
    //   69: aload_1
    //   70: invokestatic 273	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   73: pop
    //   74: aload_2
    //   75: aload_1
    //   76: invokeinterface 277 2 0
    //   81: ldc 78
    //   83: iconst_2
    //   84: invokestatic 84	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   87: ifeq +38 -> 125
    //   90: new 86	java/lang/StringBuilder
    //   93: dup
    //   94: invokespecial 87	java/lang/StringBuilder:<init>	()V
    //   97: astore_1
    //   98: aload_1
    //   99: ldc_w 279
    //   102: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: pop
    //   106: aload_1
    //   107: lload_3
    //   108: invokestatic 283	com/bumptech/glide/util/LogTime:getElapsedMillis	(J)D
    //   111: invokevirtual 286	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   114: pop
    //   115: ldc 78
    //   117: aload_1
    //   118: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   121: invokestatic 289	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   124: pop
    //   125: return
    //   126: ldc 78
    //   128: iconst_2
    //   129: invokestatic 84	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   132: ifeq +38 -> 170
    //   135: new 86	java/lang/StringBuilder
    //   138: dup
    //   139: invokespecial 87	java/lang/StringBuilder:<init>	()V
    //   142: astore_2
    //   143: aload_2
    //   144: ldc_w 279
    //   147: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: pop
    //   151: aload_2
    //   152: lload_3
    //   153: invokestatic 283	com/bumptech/glide/util/LogTime:getElapsedMillis	(J)D
    //   156: invokevirtual 286	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   159: pop
    //   160: ldc 78
    //   162: aload_2
    //   163: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   166: invokestatic 289	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   169: pop
    //   170: aload_1
    //   171: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	172	0	this	HttpUrlFetcher
    //   0	172	1	paramPriority	com.bumptech.glide.Priority
    //   0	172	2	paramDataCallback	DataFetcher.DataCallback<? super InputStream>
    //   3	150	3	l	long
    // Exception table:
    //   from	to	target	type
    //   4	30	50	finally
    //   55	74	50	finally
    //   74	81	50	finally
    //   4	30	54	java/io/IOException
  }
  
  private static class a
    implements HttpUrlFetcher.b
  {
    a() {}
    
    public HttpURLConnection a(URL paramURL)
      throws IOException
    {
      return (HttpURLConnection)paramURL.openConnection();
    }
  }
  
  static abstract interface b
  {
    public abstract HttpURLConnection a(URL paramURL)
      throws IOException;
  }
}
