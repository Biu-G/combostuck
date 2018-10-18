package com.amap.api.mapcore2d;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class el
  implements Closeable
{
  static final Pattern a = Pattern.compile("[a-z0-9_-]{1,120}");
  static ThreadPoolExecutor b = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), q);
  private static final ThreadFactory q = new ThreadFactory()
  {
    private final AtomicInteger a = new AtomicInteger(1);
    
    public Thread newThread(Runnable paramAnonymousRunnable)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("disklrucache#");
      localStringBuilder.append(a.getAndIncrement());
      return new Thread(paramAnonymousRunnable, localStringBuilder.toString());
    }
  };
  private static final OutputStream s = new OutputStream()
  {
    public void write(int paramAnonymousInt)
      throws IOException
    {}
  };
  private final File c;
  private final File d;
  private final File e;
  private final File f;
  private final int g;
  private long h;
  private final int i;
  private long j = 0L;
  private Writer k;
  private int l = 1000;
  private final LinkedHashMap<String, c> m = new LinkedHashMap(0, 0.75F, true);
  private int n;
  private em o;
  private long p = 0L;
  private final Callable<Void> r = new Callable()
  {
    public Void a()
      throws Exception
    {
      synchronized (el.this)
      {
        if (el.a(el.this) == null) {
          return null;
        }
        el.b(el.this);
        if (el.c(el.this))
        {
          el.d(el.this);
          el.a(el.this, 0);
        }
        return null;
      }
    }
  };
  
  private el(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    c = paramFile;
    g = paramInt1;
    d = new File(paramFile, "journal");
    e = new File(paramFile, "journal.tmp");
    f = new File(paramFile, "journal.bkp");
    i = paramInt2;
    h = paramLong;
  }
  
  private a a(String paramString, long paramLong)
    throws IOException
  {
    try
    {
      l();
      e(paramString);
      Object localObject = (c)m.get(paramString);
      if (paramLong != -1L) {
        if (localObject != null)
        {
          long l1 = c.e((c)localObject);
          if (l1 == paramLong) {}
        }
        else
        {
          return null;
        }
      }
      if (localObject == null)
      {
        localObject = new c(paramString, null);
        m.put(paramString, localObject);
      }
      else
      {
        localA = c.a((c)localObject);
        if (localA != null) {
          return null;
        }
      }
      a localA = new a((c)localObject, null);
      c.a((c)localObject, localA);
      localObject = k;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("DIRTY ");
      localStringBuilder.append(paramString);
      localStringBuilder.append('\n');
      ((Writer)localObject).write(localStringBuilder.toString());
      k.flush();
      return localA;
    }
    finally {}
  }
  
  public static el a(File paramFile, int paramInt1, int paramInt2, long paramLong)
    throws IOException
  {
    Object localObject;
    if (paramLong > 0L) {
      if (paramInt2 > 0)
      {
        localObject = new File(paramFile, "journal.bkp");
        if (((File)localObject).exists())
        {
          File localFile = new File(paramFile, "journal");
          if (localFile.exists()) {
            ((File)localObject).delete();
          } else {
            a((File)localObject, localFile, false);
          }
        }
        localObject = new el(paramFile, paramInt1, paramInt2, paramLong);
        if (!d.exists()) {}
      }
    }
    try
    {
      ((el)localObject).h();
      ((el)localObject).i();
      k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(d, true), eo.a));
      return localObject;
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
    ((el)localObject).f();
    paramFile.mkdirs();
    paramFile = new el(paramFile, paramInt1, paramInt2, paramLong);
    paramFile.j();
    return paramFile;
    throw new IllegalArgumentException("valueCount <= 0");
    throw new IllegalArgumentException("maxSize <= 0");
  }
  
  public static void a()
  {
    if ((b != null) && (!b.isShutdown())) {
      b.shutdown();
    }
  }
  
  private void a(a paramA, boolean paramBoolean)
    throws IOException
  {
    for (;;)
    {
      int i2;
      try
      {
        c localC = a.a(paramA);
        if (c.a(localC) == paramA)
        {
          int i3 = 0;
          i2 = i3;
          if (paramBoolean)
          {
            i2 = i3;
            if (!c.d(localC))
            {
              int i1 = 0;
              i2 = i3;
              if (i1 < i)
              {
                if (a.b(paramA)[i1] != 0)
                {
                  if (!localC.b(i1).exists())
                  {
                    paramA.b();
                    return;
                  }
                  i1 += 1;
                  continue;
                }
                paramA.b();
                paramA = new StringBuilder();
                paramA.append("Newly created entry didn't create value for index ");
                paramA.append(i1);
                throw new IllegalStateException(paramA.toString());
              }
            }
          }
          Object localObject;
          long l1;
          if (i2 < i)
          {
            paramA = localC.b(i2);
            if (paramBoolean)
            {
              if (paramA.exists())
              {
                localObject = localC.a(i2);
                paramA.renameTo((File)localObject);
                l1 = c.b(localC)[i2];
                long l2 = ((File)localObject).length();
                c.b(localC)[i2] = l2;
                j = (j - l1 + l2);
              }
            }
            else {
              a(paramA);
            }
          }
          else
          {
            n += 1;
            c.a(localC, null);
            if ((c.d(localC) | paramBoolean))
            {
              c.a(localC, true);
              paramA = k;
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("CLEAN ");
              ((StringBuilder)localObject).append(c.c(localC));
              ((StringBuilder)localObject).append(localC.a());
              ((StringBuilder)localObject).append('\n');
              paramA.write(((StringBuilder)localObject).toString());
              if (paramBoolean)
              {
                l1 = p;
                p = (1L + l1);
                c.a(localC, l1);
              }
            }
            else
            {
              m.remove(c.c(localC));
              paramA = k;
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("REMOVE ");
              ((StringBuilder)localObject).append(c.c(localC));
              ((StringBuilder)localObject).append('\n');
              paramA.write(((StringBuilder)localObject).toString());
            }
            k.flush();
            if ((j > h) || (k())) {
              b().submit(r);
            }
          }
        }
        else
        {
          throw new IllegalStateException();
        }
      }
      finally {}
      i2 += 1;
    }
  }
  
  private static void a(File paramFile)
    throws IOException
  {
    if (paramFile.exists())
    {
      if (paramFile.delete()) {
        return;
      }
      throw new IOException();
    }
  }
  
  private static void a(File paramFile1, File paramFile2, boolean paramBoolean)
    throws IOException
  {
    if (paramBoolean) {
      a(paramFile2);
    }
    if (paramFile1.renameTo(paramFile2)) {
      return;
    }
    throw new IOException();
  }
  
  public static ThreadPoolExecutor b()
  {
    try
    {
      if ((b == null) || (b.isShutdown())) {
        b = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), q);
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return b;
  }
  
  private void d(String paramString)
    throws IOException
  {
    int i1 = paramString.indexOf(' ');
    if (i1 != -1)
    {
      int i2 = i1 + 1;
      int i3 = paramString.indexOf(' ', i2);
      if (i3 == -1)
      {
        localObject2 = paramString.substring(i2);
        localObject1 = localObject2;
        if (i1 == "REMOVE".length())
        {
          localObject1 = localObject2;
          if (paramString.startsWith("REMOVE")) {
            m.remove(localObject2);
          }
        }
      }
      else
      {
        localObject1 = paramString.substring(i2, i3);
      }
      c localC = (c)m.get(localObject1);
      Object localObject2 = localC;
      if (localC == null)
      {
        localObject2 = new c((String)localObject1, null);
        m.put(localObject1, localObject2);
      }
      if ((i3 != -1) && (i1 == "CLEAN".length()) && (paramString.startsWith("CLEAN")))
      {
        paramString = paramString.substring(i3 + 1).split(" ");
        c.a((c)localObject2, true);
        c.a((c)localObject2, null);
        c.a((c)localObject2, paramString);
        return;
      }
      if ((i3 == -1) && (i1 == "DIRTY".length()) && (paramString.startsWith("DIRTY")))
      {
        c.a((c)localObject2, new a((c)localObject2, null));
        return;
      }
      if ((i3 == -1) && (i1 == "READ".length()) && (paramString.startsWith("READ"))) {
        return;
      }
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("unexpected journal line: ");
      ((StringBuilder)localObject1).append(paramString);
      throw new IOException(((StringBuilder)localObject1).toString());
    }
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("unexpected journal line: ");
    ((StringBuilder)localObject1).append(paramString);
    throw new IOException(((StringBuilder)localObject1).toString());
  }
  
  private void e(String paramString)
  {
    if (a.matcher(paramString).matches()) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("keys must match regex [a-z0-9_-]{1,120}: \"");
    localStringBuilder.append(paramString);
    localStringBuilder.append("\"");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  private void h()
    throws IOException
  {
    localEn = new en(new FileInputStream(d), eo.a);
    for (;;)
    {
      try
      {
        str1 = localEn.a();
        str2 = localEn.a();
        localObject2 = localEn.a();
        str3 = localEn.a();
        str4 = localEn.a();
        if (("libcore.io.DiskLruCache".equals(str1)) && ("1".equals(str2)) && (Integer.toString(g).equals(localObject2)) && (Integer.toString(i).equals(str3)))
        {
          boolean bool = "".equals(str4);
          if (bool) {
            i1 = 0;
          }
        }
      }
      finally
      {
        String str1;
        String str2;
        Object localObject2;
        String str3;
        String str4;
        int i1;
        eo.a(localEn);
      }
      try
      {
        d(localEn.a());
        i1 += 1;
      }
      catch (EOFException localEOFException) {}
    }
    n = (i1 - m.size());
    eo.a(localEn);
    return;
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("unexpected journal header: [");
    ((StringBuilder)localObject2).append(str1);
    ((StringBuilder)localObject2).append(", ");
    ((StringBuilder)localObject2).append(str2);
    ((StringBuilder)localObject2).append(", ");
    ((StringBuilder)localObject2).append(str3);
    ((StringBuilder)localObject2).append(", ");
    ((StringBuilder)localObject2).append(str4);
    ((StringBuilder)localObject2).append("]");
    throw new IOException(((StringBuilder)localObject2).toString());
  }
  
  private void i()
    throws IOException
  {
    a(e);
    Iterator localIterator = m.values().iterator();
    while (localIterator.hasNext())
    {
      c localC = (c)localIterator.next();
      a localA = c.a(localC);
      int i2 = 0;
      int i1 = 0;
      if (localA == null)
      {
        while (i1 < i)
        {
          j += c.b(localC)[i1];
          i1 += 1;
        }
      }
      else
      {
        c.a(localC, null);
        i1 = i2;
        while (i1 < i)
        {
          a(localC.a(i1));
          a(localC.b(i1));
          i1 += 1;
        }
        localIterator.remove();
      }
    }
  }
  
  /* Error */
  private void j()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 175	com/amap/api/mapcore2d/el:k	Ljava/io/Writer;
    //   6: ifnull +10 -> 16
    //   9: aload_0
    //   10: getfield 175	com/amap/api/mapcore2d/el:k	Ljava/io/Writer;
    //   13: invokevirtual 461	java/io/Writer:close	()V
    //   16: new 221	java/io/BufferedWriter
    //   19: dup
    //   20: new 223	java/io/OutputStreamWriter
    //   23: dup
    //   24: new 225	java/io/FileOutputStream
    //   27: dup
    //   28: aload_0
    //   29: getfield 129	com/amap/api/mapcore2d/el:e	Ljava/io/File;
    //   32: invokespecial 462	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   35: getstatic 233	com/amap/api/mapcore2d/eo:a	Ljava/nio/charset/Charset;
    //   38: invokespecial 236	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   41: invokespecial 239	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   44: astore_1
    //   45: aload_1
    //   46: ldc_w 411
    //   49: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
    //   52: aload_1
    //   53: ldc_w 464
    //   56: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
    //   59: aload_1
    //   60: ldc_w 417
    //   63: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
    //   66: aload_1
    //   67: ldc_w 464
    //   70: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
    //   73: aload_1
    //   74: aload_0
    //   75: getfield 116	com/amap/api/mapcore2d/el:g	I
    //   78: invokestatic 421	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   81: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
    //   84: aload_1
    //   85: ldc_w 464
    //   88: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
    //   91: aload_1
    //   92: aload_0
    //   93: getfield 135	com/amap/api/mapcore2d/el:i	I
    //   96: invokestatic 421	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   99: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
    //   102: aload_1
    //   103: ldc_w 464
    //   106: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
    //   109: aload_1
    //   110: ldc_w 464
    //   113: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
    //   116: aload_0
    //   117: getfield 105	com/amap/api/mapcore2d/el:m	Ljava/util/LinkedHashMap;
    //   120: invokevirtual 441	java/util/LinkedHashMap:values	()Ljava/util/Collection;
    //   123: invokeinterface 447 1 0
    //   128: astore_2
    //   129: aload_2
    //   130: invokeinterface 452 1 0
    //   135: ifeq +125 -> 260
    //   138: aload_2
    //   139: invokeinterface 456 1 0
    //   144: checkcast 22	com/amap/api/mapcore2d/el$c
    //   147: astore_3
    //   148: aload_3
    //   149: invokestatic 167	com/amap/api/mapcore2d/el$c:a	(Lcom/amap/api/mapcore2d/el$c;)Lcom/amap/api/mapcore2d/el$a;
    //   152: ifnull +50 -> 202
    //   155: new 177	java/lang/StringBuilder
    //   158: dup
    //   159: invokespecial 178	java/lang/StringBuilder:<init>	()V
    //   162: astore 4
    //   164: aload 4
    //   166: ldc -76
    //   168: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: pop
    //   172: aload 4
    //   174: aload_3
    //   175: invokestatic 308	com/amap/api/mapcore2d/el$c:c	(Lcom/amap/api/mapcore2d/el$c;)Ljava/lang/String;
    //   178: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: pop
    //   182: aload 4
    //   184: bipush 10
    //   186: invokevirtual 187	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   189: pop
    //   190: aload_1
    //   191: aload 4
    //   193: invokevirtual 191	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   196: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
    //   199: goto -70 -> 129
    //   202: new 177	java/lang/StringBuilder
    //   205: dup
    //   206: invokespecial 178	java/lang/StringBuilder:<init>	()V
    //   209: astore 4
    //   211: aload 4
    //   213: ldc_w 305
    //   216: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: pop
    //   220: aload 4
    //   222: aload_3
    //   223: invokestatic 308	com/amap/api/mapcore2d/el$c:c	(Lcom/amap/api/mapcore2d/el$c;)Ljava/lang/String;
    //   226: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: pop
    //   230: aload 4
    //   232: aload_3
    //   233: invokevirtual 310	com/amap/api/mapcore2d/el$c:a	()Ljava/lang/String;
    //   236: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: pop
    //   240: aload 4
    //   242: bipush 10
    //   244: invokevirtual 187	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   247: pop
    //   248: aload_1
    //   249: aload 4
    //   251: invokevirtual 191	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   254: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
    //   257: goto -128 -> 129
    //   260: aload_1
    //   261: invokevirtual 461	java/io/Writer:close	()V
    //   264: aload_0
    //   265: getfield 125	com/amap/api/mapcore2d/el:d	Ljava/io/File;
    //   268: invokevirtual 207	java/io/File:exists	()Z
    //   271: ifeq +15 -> 286
    //   274: aload_0
    //   275: getfield 125	com/amap/api/mapcore2d/el:d	Ljava/io/File;
    //   278: aload_0
    //   279: getfield 133	com/amap/api/mapcore2d/el:f	Ljava/io/File;
    //   282: iconst_1
    //   283: invokestatic 213	com/amap/api/mapcore2d/el:a	(Ljava/io/File;Ljava/io/File;Z)V
    //   286: aload_0
    //   287: getfield 129	com/amap/api/mapcore2d/el:e	Ljava/io/File;
    //   290: aload_0
    //   291: getfield 125	com/amap/api/mapcore2d/el:d	Ljava/io/File;
    //   294: iconst_0
    //   295: invokestatic 213	com/amap/api/mapcore2d/el:a	(Ljava/io/File;Ljava/io/File;Z)V
    //   298: aload_0
    //   299: getfield 133	com/amap/api/mapcore2d/el:f	Ljava/io/File;
    //   302: invokevirtual 210	java/io/File:delete	()Z
    //   305: pop
    //   306: aload_0
    //   307: new 221	java/io/BufferedWriter
    //   310: dup
    //   311: new 223	java/io/OutputStreamWriter
    //   314: dup
    //   315: new 225	java/io/FileOutputStream
    //   318: dup
    //   319: aload_0
    //   320: getfield 125	com/amap/api/mapcore2d/el:d	Ljava/io/File;
    //   323: iconst_1
    //   324: invokespecial 228	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   327: getstatic 233	com/amap/api/mapcore2d/eo:a	Ljava/nio/charset/Charset;
    //   330: invokespecial 236	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   333: invokespecial 239	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   336: putfield 175	com/amap/api/mapcore2d/el:k	Ljava/io/Writer;
    //   339: aload_0
    //   340: monitorexit
    //   341: return
    //   342: astore_2
    //   343: aload_1
    //   344: invokevirtual 461	java/io/Writer:close	()V
    //   347: aload_2
    //   348: athrow
    //   349: astore_1
    //   350: aload_0
    //   351: monitorexit
    //   352: aload_1
    //   353: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	354	0	this	el
    //   44	300	1	localBufferedWriter	BufferedWriter
    //   349	4	1	localObject1	Object
    //   128	11	2	localIterator	Iterator
    //   342	6	2	localObject2	Object
    //   147	86	3	localC	c
    //   162	88	4	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   45	129	342	finally
    //   129	199	342	finally
    //   202	257	342	finally
    //   2	16	349	finally
    //   16	45	349	finally
    //   260	286	349	finally
    //   286	339	349	finally
    //   343	349	349	finally
  }
  
  private boolean k()
  {
    return (n >= 2000) && (n >= m.size());
  }
  
  private void l()
  {
    if (k != null) {
      return;
    }
    throw new IllegalStateException("cache is closed");
  }
  
  private void m()
    throws IOException
  {
    for (;;)
    {
      if ((j <= h) && (m.size() <= l)) {
        return;
      }
      String str = (String)((Map.Entry)m.entrySet().iterator().next()).getKey();
      c(str);
      if (o != null) {
        o.a(str);
      }
    }
  }
  
  public b a(String paramString)
    throws IOException
  {
    for (;;)
    {
      c localC;
      InputStream[] arrayOfInputStream;
      Writer localWriter;
      StringBuilder localStringBuilder;
      try
      {
        l();
        e(paramString);
        localC = (c)m.get(paramString);
        if (localC == null) {
          return null;
        }
        boolean bool = c.d(localC);
        if (!bool) {
          return null;
        }
        arrayOfInputStream = new InputStream[i];
        i2 = 0;
        i1 = 0;
      }
      finally {}
      try
      {
        if (i1 < i)
        {
          arrayOfInputStream[i1] = new FileInputStream(localC.a(i1));
          i1 += 1;
          continue;
        }
        n += 1;
        localWriter = k;
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("READ ");
        localStringBuilder.append(paramString);
        localStringBuilder.append('\n');
        localWriter.append(localStringBuilder.toString());
        if (k()) {
          b().submit(r);
        }
        paramString = new b(paramString, c.e(localC), arrayOfInputStream, c.b(localC), null);
        return paramString;
      }
      catch (FileNotFoundException paramString)
      {
        i1 = i2;
        continue;
      }
      if ((i1 >= i) || (arrayOfInputStream[i1] == null)) {
        continue;
      }
      eo.a(arrayOfInputStream[i1]);
      i1 += 1;
    }
    return null;
  }
  
  public void a(int paramInt)
  {
    int i1;
    if (paramInt < 10)
    {
      i1 = 10;
    }
    else
    {
      i1 = paramInt;
      if (paramInt > 10000) {
        i1 = 10000;
      }
    }
    l = i1;
  }
  
  public void a(em paramEm)
  {
    o = paramEm;
  }
  
  public a b(String paramString)
    throws IOException
  {
    return a(paramString, -1L);
  }
  
  public File c()
  {
    return c;
  }
  
  public boolean c(String paramString)
    throws IOException
  {
    try
    {
      l();
      e(paramString);
      Object localObject2 = (c)m.get(paramString);
      int i1 = 0;
      if ((localObject2 != null) && (c.a((c)localObject2) == null))
      {
        while (i1 < i)
        {
          localObject1 = ((c)localObject2).a(i1);
          if ((((File)localObject1).exists()) && (!((File)localObject1).delete()))
          {
            paramString = new StringBuilder();
            paramString.append("failed to delete ");
            paramString.append(localObject1);
            throw new IOException(paramString.toString());
          }
          j -= c.b(localObject2)[i1];
          c.b((c)localObject2)[i1] = 0L;
          i1 += 1;
        }
        n += 1;
        Object localObject1 = k;
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("REMOVE ");
        ((StringBuilder)localObject2).append(paramString);
        ((StringBuilder)localObject2).append('\n');
        ((Writer)localObject1).append(((StringBuilder)localObject2).toString());
        m.remove(paramString);
        if (k()) {
          b().submit(r);
        }
        return true;
      }
      return false;
    }
    finally {}
  }
  
  public void close()
    throws IOException
  {
    try
    {
      Object localObject1 = k;
      if (localObject1 == null) {
        return;
      }
      localObject1 = new ArrayList(m.values()).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        c localC = (c)((Iterator)localObject1).next();
        if (c.a(localC) != null) {
          c.a(localC).b();
        }
      }
      m();
      k.close();
      k = null;
      return;
    }
    finally {}
  }
  
  public boolean d()
  {
    try
    {
      Writer localWriter = k;
      boolean bool;
      if (localWriter == null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void e()
    throws IOException
  {
    try
    {
      l();
      m();
      k.flush();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void f()
    throws IOException
  {
    close();
    eo.a(c);
  }
  
  public final class a
  {
    private final el.c b;
    private final boolean[] c;
    private boolean d;
    private boolean e;
    
    private a(el.c paramC)
    {
      b = paramC;
      if (el.c.d(paramC)) {
        this$1 = null;
      } else {
        this$1 = new boolean[el.e(el.this)];
      }
      c = el.this;
    }
    
    public OutputStream a(int paramInt)
      throws IOException
    {
      if ((paramInt >= 0) && (paramInt < el.e(el.this)))
      {
        synchronized (el.this)
        {
          File localFile;
          if (el.c.a(b) == this)
          {
            if (!el.c.d(b)) {
              c[paramInt] = true;
            }
            localFile = b.b(paramInt);
          }
          try
          {
            localObject1 = new FileOutputStream(localFile);
          }
          catch (FileNotFoundException localFileNotFoundException1)
          {
            Object localObject1;
            for (;;) {}
          }
          el.f(el.this).mkdirs();
          try
          {
            localObject1 = new FileOutputStream(localFile);
            localObject1 = new a((OutputStream)localObject1, null);
            return localObject1;
          }
          catch (FileNotFoundException localFileNotFoundException2)
          {
            StringBuilder localStringBuilder;
            for (;;) {}
          }
          localObject1 = el.g();
          return localObject1;
          throw new IllegalStateException();
        }
      }
      else
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Expected index ");
        localStringBuilder.append(paramInt);
        localStringBuilder.append(" to ");
        localStringBuilder.append("be greater than 0 and less than the maximum value count ");
        localStringBuilder.append("of ");
        localStringBuilder.append(el.e(el.this));
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
    }
    
    public void a()
      throws IOException
    {
      if (d)
      {
        el.a(el.this, this, false);
        c(el.c.c(b));
      }
      else
      {
        el.a(el.this, this, true);
      }
      e = true;
    }
    
    public void b()
      throws IOException
    {
      el.a(el.this, this, false);
    }
    
    private class a
      extends FilterOutputStream
    {
      private a(OutputStream paramOutputStream)
      {
        super();
      }
      
      public void close()
      {
        try
        {
          out.close();
          return;
        }
        catch (IOException localIOException)
        {
          for (;;) {}
        }
        el.a.a(el.a.this, true);
      }
      
      public void flush()
      {
        try
        {
          out.flush();
          return;
        }
        catch (IOException localIOException)
        {
          for (;;) {}
        }
        el.a.a(el.a.this, true);
      }
      
      public void write(int paramInt)
      {
        try
        {
          out.write(paramInt);
          return;
        }
        catch (IOException localIOException)
        {
          for (;;) {}
        }
        el.a.a(el.a.this, true);
      }
      
      public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      {
        try
        {
          out.write(paramArrayOfByte, paramInt1, paramInt2);
          return;
        }
        catch (IOException paramArrayOfByte)
        {
          for (;;) {}
        }
        el.a.a(el.a.this, true);
      }
    }
  }
  
  public final class b
    implements Closeable
  {
    private final String b;
    private final long c;
    private final InputStream[] d;
    private final long[] e;
    
    private b(String paramString, long paramLong, InputStream[] paramArrayOfInputStream, long[] paramArrayOfLong)
    {
      b = paramString;
      c = paramLong;
      d = paramArrayOfInputStream;
      e = paramArrayOfLong;
    }
    
    public InputStream a(int paramInt)
    {
      return d[paramInt];
    }
    
    public void close()
    {
      InputStream[] arrayOfInputStream = d;
      int j = arrayOfInputStream.length;
      int i = 0;
      while (i < j)
      {
        eo.a(arrayOfInputStream[i]);
        i += 1;
      }
    }
  }
  
  private final class c
  {
    private final String b;
    private final long[] c;
    private boolean d;
    private el.a e;
    private long f;
    
    private c(String paramString)
    {
      b = paramString;
      c = new long[el.e(el.this)];
    }
    
    private void a(String[] paramArrayOfString)
      throws IOException
    {
      int i;
      if (paramArrayOfString.length == el.e(el.this)) {
        i = 0;
      }
      try
      {
        while (i < paramArrayOfString.length)
        {
          c[i] = Long.parseLong(paramArrayOfString[i]);
          i += 1;
        }
        return;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        for (;;) {}
      }
      throw b(paramArrayOfString);
      throw b(paramArrayOfString);
    }
    
    private IOException b(String[] paramArrayOfString)
      throws IOException
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("unexpected journal line: ");
      localStringBuilder.append(Arrays.toString(paramArrayOfString));
      throw new IOException(localStringBuilder.toString());
    }
    
    public File a(int paramInt)
    {
      File localFile = el.f(el.this);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(b);
      localStringBuilder.append(".");
      localStringBuilder.append(paramInt);
      return new File(localFile, localStringBuilder.toString());
    }
    
    public String a()
      throws IOException
    {
      StringBuilder localStringBuilder = new StringBuilder();
      long[] arrayOfLong = c;
      int j = arrayOfLong.length;
      int i = 0;
      while (i < j)
      {
        long l = arrayOfLong[i];
        localStringBuilder.append(' ');
        localStringBuilder.append(l);
        i += 1;
      }
      return localStringBuilder.toString();
    }
    
    public File b(int paramInt)
    {
      File localFile = el.f(el.this);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(b);
      localStringBuilder.append(".");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(".tmp");
      return new File(localFile, localStringBuilder.toString());
    }
  }
}
