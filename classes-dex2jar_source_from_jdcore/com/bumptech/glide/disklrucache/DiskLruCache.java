package com.bumptech.glide.disklrucache;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
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

public final class DiskLruCache
  implements Closeable
{
  final ThreadPoolExecutor a = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a(null));
  private final File b;
  private final File c;
  private final File d;
  private final File e;
  private final int f;
  private long g;
  private final int h;
  private long i = 0L;
  private Writer j;
  private final LinkedHashMap<String, b> k = new LinkedHashMap(0, 0.75F, true);
  private int l;
  private long m = 0L;
  private final Callable<Void> n = new Callable()
  {
    public Void a()
      throws Exception
    {
      synchronized (DiskLruCache.this)
      {
        if (DiskLruCache.a(DiskLruCache.this) == null) {
          return null;
        }
        DiskLruCache.b(DiskLruCache.this);
        if (DiskLruCache.c(DiskLruCache.this))
        {
          DiskLruCache.d(DiskLruCache.this);
          DiskLruCache.a(DiskLruCache.this, 0);
        }
        return null;
      }
    }
  };
  
  private DiskLruCache(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    b = paramFile;
    f = paramInt1;
    c = new File(paramFile, "journal");
    d = new File(paramFile, "journal.tmp");
    e = new File(paramFile, "journal.bkp");
    h = paramInt2;
    g = paramLong;
  }
  
  private Editor a(String paramString, long paramLong)
    throws IOException
  {
    try
    {
      e();
      b localB = (b)k.get(paramString);
      if (paramLong != -1L) {
        if (localB != null)
        {
          long l1 = b.e(localB);
          if (l1 == paramLong) {}
        }
        else
        {
          return null;
        }
      }
      if (localB == null)
      {
        localB = new b(paramString, null);
        k.put(paramString, localB);
      }
      else
      {
        localEditor = b.a(localB);
        if (localEditor != null) {
          return null;
        }
      }
      Editor localEditor = new Editor(localB, null);
      b.a(localB, localEditor);
      j.append("DIRTY");
      j.append(' ');
      j.append(paramString);
      j.append('\n');
      j.flush();
      return localEditor;
    }
    finally {}
  }
  
  private void a()
    throws IOException
  {
    localA = new a(new FileInputStream(c), b.a);
    for (;;)
    {
      try
      {
        str1 = localA.a();
        str2 = localA.a();
        localObject2 = localA.a();
        str3 = localA.a();
        str4 = localA.a();
        if (("libcore.io.DiskLruCache".equals(str1)) && ("1".equals(str2)) && (Integer.toString(f).equals(localObject2)) && (Integer.toString(h).equals(str3)))
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
        b.a(localA);
      }
      try
      {
        a(localA.a());
        i1 += 1;
      }
      catch (EOFException localEOFException) {}
    }
    l = (i1 - k.size());
    if (localA.b()) {
      c();
    } else {
      j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(c, true), b.a));
    }
    b.a(localA);
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
  
  private void a(Editor paramEditor, boolean paramBoolean)
    throws IOException
  {
    for (;;)
    {
      int i2;
      try
      {
        b localB = Editor.a(paramEditor);
        if (b.a(localB) == paramEditor)
        {
          int i3 = 0;
          i2 = i3;
          if (paramBoolean)
          {
            i2 = i3;
            if (!b.d(localB))
            {
              int i1 = 0;
              i2 = i3;
              if (i1 < h)
              {
                if (Editor.b(paramEditor)[i1] != 0)
                {
                  if (!localB.b(i1).exists())
                  {
                    paramEditor.abort();
                    return;
                  }
                  i1 += 1;
                  continue;
                }
                paramEditor.abort();
                paramEditor = new StringBuilder();
                paramEditor.append("Newly created entry didn't create value for index ");
                paramEditor.append(i1);
                throw new IllegalStateException(paramEditor.toString());
              }
            }
          }
          long l1;
          if (i2 < h)
          {
            paramEditor = localB.b(i2);
            if (paramBoolean)
            {
              if (paramEditor.exists())
              {
                File localFile = localB.a(i2);
                paramEditor.renameTo(localFile);
                l1 = b.b(localB)[i2];
                long l2 = localFile.length();
                b.b(localB)[i2] = l2;
                i = (i - l1 + l2);
              }
            }
            else {
              a(paramEditor);
            }
          }
          else
          {
            l += 1;
            b.a(localB, null);
            if ((b.d(localB) | paramBoolean))
            {
              b.a(localB, true);
              j.append("CLEAN");
              j.append(' ');
              j.append(b.c(localB));
              j.append(localB.a());
              j.append('\n');
              if (paramBoolean)
              {
                l1 = m;
                m = (1L + l1);
                b.a(localB, l1);
              }
            }
            else
            {
              k.remove(b.c(localB));
              j.append("REMOVE");
              j.append(' ');
              j.append(b.c(localB));
              j.append('\n');
            }
            j.flush();
            if ((i > g) || (d())) {
              a.submit(n);
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
  
  private void a(String paramString)
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
            k.remove(localObject2);
          }
        }
      }
      else
      {
        localObject1 = paramString.substring(i2, i3);
      }
      b localB = (b)k.get(localObject1);
      Object localObject2 = localB;
      if (localB == null)
      {
        localObject2 = new b((String)localObject1, null);
        k.put(localObject1, localObject2);
      }
      if ((i3 != -1) && (i1 == "CLEAN".length()) && (paramString.startsWith("CLEAN")))
      {
        paramString = paramString.substring(i3 + 1).split(" ");
        b.a((b)localObject2, true);
        b.a((b)localObject2, null);
        b.a((b)localObject2, paramString);
        return;
      }
      if ((i3 == -1) && (i1 == "DIRTY".length()) && (paramString.startsWith("DIRTY")))
      {
        b.a((b)localObject2, new Editor((b)localObject2, null));
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
  
  private static String b(InputStream paramInputStream)
    throws IOException
  {
    return b.a(new InputStreamReader(paramInputStream, b.b));
  }
  
  private void b()
    throws IOException
  {
    a(d);
    Iterator localIterator = k.values().iterator();
    while (localIterator.hasNext())
    {
      b localB = (b)localIterator.next();
      Editor localEditor = b.a(localB);
      int i2 = 0;
      int i1 = 0;
      if (localEditor == null)
      {
        while (i1 < h)
        {
          i += b.b(localB)[i1];
          i1 += 1;
        }
      }
      else
      {
        b.a(localB, null);
        i1 = i2;
        while (i1 < h)
        {
          a(localB.a(i1));
          a(localB.b(i1));
          i1 += 1;
        }
        localIterator.remove();
      }
    }
  }
  
  /* Error */
  private void c()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 149	com/bumptech/glide/disklrucache/DiskLruCache:j	Ljava/io/Writer;
    //   6: ifnull +10 -> 16
    //   9: aload_0
    //   10: getfield 149	com/bumptech/glide/disklrucache/DiskLruCache:j	Ljava/io/Writer;
    //   13: invokevirtual 391	java/io/Writer:close	()V
    //   16: new 219	java/io/BufferedWriter
    //   19: dup
    //   20: new 221	java/io/OutputStreamWriter
    //   23: dup
    //   24: new 223	java/io/FileOutputStream
    //   27: dup
    //   28: aload_0
    //   29: getfield 101	com/bumptech/glide/disklrucache/DiskLruCache:d	Ljava/io/File;
    //   32: invokespecial 392	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   35: getstatic 181	com/bumptech/glide/disklrucache/b:a	Ljava/nio/charset/Charset;
    //   38: invokespecial 229	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   41: invokespecial 232	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   44: astore_1
    //   45: aload_1
    //   46: ldc -67
    //   48: invokevirtual 395	java/io/Writer:write	(Ljava/lang/String;)V
    //   51: aload_1
    //   52: ldc_w 397
    //   55: invokevirtual 395	java/io/Writer:write	(Ljava/lang/String;)V
    //   58: aload_1
    //   59: ldc -59
    //   61: invokevirtual 395	java/io/Writer:write	(Ljava/lang/String;)V
    //   64: aload_1
    //   65: ldc_w 397
    //   68: invokevirtual 395	java/io/Writer:write	(Ljava/lang/String;)V
    //   71: aload_1
    //   72: aload_0
    //   73: getfield 88	com/bumptech/glide/disklrucache/DiskLruCache:f	I
    //   76: invokestatic 203	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   79: invokevirtual 395	java/io/Writer:write	(Ljava/lang/String;)V
    //   82: aload_1
    //   83: ldc_w 397
    //   86: invokevirtual 395	java/io/Writer:write	(Ljava/lang/String;)V
    //   89: aload_1
    //   90: aload_0
    //   91: getfield 107	com/bumptech/glide/disklrucache/DiskLruCache:h	I
    //   94: invokestatic 203	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   97: invokevirtual 395	java/io/Writer:write	(Ljava/lang/String;)V
    //   100: aload_1
    //   101: ldc_w 397
    //   104: invokevirtual 395	java/io/Writer:write	(Ljava/lang/String;)V
    //   107: aload_1
    //   108: ldc_w 397
    //   111: invokevirtual 395	java/io/Writer:write	(Ljava/lang/String;)V
    //   114: aload_0
    //   115: getfield 56	com/bumptech/glide/disklrucache/DiskLruCache:k	Ljava/util/LinkedHashMap;
    //   118: invokevirtual 369	java/util/LinkedHashMap:values	()Ljava/util/Collection;
    //   121: invokeinterface 375 1 0
    //   126: astore_2
    //   127: aload_2
    //   128: invokeinterface 380 1 0
    //   133: ifeq +126 -> 259
    //   136: aload_2
    //   137: invokeinterface 384 1 0
    //   142: checkcast 19	com/bumptech/glide/disklrucache/DiskLruCache$b
    //   145: astore_3
    //   146: aload_3
    //   147: invokestatic 141	com/bumptech/glide/disklrucache/DiskLruCache$b:a	(Lcom/bumptech/glide/disklrucache/DiskLruCache$b;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    //   150: ifnull +51 -> 201
    //   153: new 237	java/lang/StringBuilder
    //   156: dup
    //   157: invokespecial 238	java/lang/StringBuilder:<init>	()V
    //   160: astore 4
    //   162: aload 4
    //   164: ldc_w 399
    //   167: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: pop
    //   171: aload 4
    //   173: aload_3
    //   174: invokestatic 301	com/bumptech/glide/disklrucache/DiskLruCache$b:c	(Lcom/bumptech/glide/disklrucache/DiskLruCache$b;)Ljava/lang/String;
    //   177: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: pop
    //   181: aload 4
    //   183: bipush 10
    //   185: invokevirtual 402	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   188: pop
    //   189: aload_1
    //   190: aload 4
    //   192: invokevirtual 249	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   195: invokevirtual 395	java/io/Writer:write	(Ljava/lang/String;)V
    //   198: goto -71 -> 127
    //   201: new 237	java/lang/StringBuilder
    //   204: dup
    //   205: invokespecial 238	java/lang/StringBuilder:<init>	()V
    //   208: astore 4
    //   210: aload 4
    //   212: ldc_w 404
    //   215: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: pop
    //   219: aload 4
    //   221: aload_3
    //   222: invokestatic 301	com/bumptech/glide/disklrucache/DiskLruCache$b:c	(Lcom/bumptech/glide/disklrucache/DiskLruCache$b;)Ljava/lang/String;
    //   225: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: pop
    //   229: aload 4
    //   231: aload_3
    //   232: invokevirtual 302	com/bumptech/glide/disklrucache/DiskLruCache$b:a	()Ljava/lang/String;
    //   235: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: pop
    //   239: aload 4
    //   241: bipush 10
    //   243: invokevirtual 402	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   246: pop
    //   247: aload_1
    //   248: aload 4
    //   250: invokevirtual 249	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   253: invokevirtual 395	java/io/Writer:write	(Ljava/lang/String;)V
    //   256: goto -129 -> 127
    //   259: aload_1
    //   260: invokevirtual 391	java/io/Writer:close	()V
    //   263: aload_0
    //   264: getfield 97	com/bumptech/glide/disklrucache/DiskLruCache:c	Ljava/io/File;
    //   267: invokevirtual 267	java/io/File:exists	()Z
    //   270: ifeq +15 -> 285
    //   273: aload_0
    //   274: getfield 97	com/bumptech/glide/disklrucache/DiskLruCache:c	Ljava/io/File;
    //   277: aload_0
    //   278: getfield 105	com/bumptech/glide/disklrucache/DiskLruCache:e	Ljava/io/File;
    //   281: iconst_1
    //   282: invokestatic 406	com/bumptech/glide/disklrucache/DiskLruCache:a	(Ljava/io/File;Ljava/io/File;Z)V
    //   285: aload_0
    //   286: getfield 101	com/bumptech/glide/disklrucache/DiskLruCache:d	Ljava/io/File;
    //   289: aload_0
    //   290: getfield 97	com/bumptech/glide/disklrucache/DiskLruCache:c	Ljava/io/File;
    //   293: iconst_0
    //   294: invokestatic 406	com/bumptech/glide/disklrucache/DiskLruCache:a	(Ljava/io/File;Ljava/io/File;Z)V
    //   297: aload_0
    //   298: getfield 105	com/bumptech/glide/disklrucache/DiskLruCache:e	Ljava/io/File;
    //   301: invokevirtual 323	java/io/File:delete	()Z
    //   304: pop
    //   305: aload_0
    //   306: new 219	java/io/BufferedWriter
    //   309: dup
    //   310: new 221	java/io/OutputStreamWriter
    //   313: dup
    //   314: new 223	java/io/FileOutputStream
    //   317: dup
    //   318: aload_0
    //   319: getfield 97	com/bumptech/glide/disklrucache/DiskLruCache:c	Ljava/io/File;
    //   322: iconst_1
    //   323: invokespecial 226	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   326: getstatic 181	com/bumptech/glide/disklrucache/b:a	Ljava/nio/charset/Charset;
    //   329: invokespecial 229	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   332: invokespecial 232	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   335: putfield 149	com/bumptech/glide/disklrucache/DiskLruCache:j	Ljava/io/Writer;
    //   338: aload_0
    //   339: monitorexit
    //   340: return
    //   341: astore_2
    //   342: aload_1
    //   343: invokevirtual 391	java/io/Writer:close	()V
    //   346: aload_2
    //   347: athrow
    //   348: astore_1
    //   349: aload_0
    //   350: monitorexit
    //   351: aload_1
    //   352: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	353	0	this	DiskLruCache
    //   44	299	1	localBufferedWriter	BufferedWriter
    //   348	4	1	localObject1	Object
    //   126	11	2	localIterator	Iterator
    //   341	6	2	localObject2	Object
    //   145	87	3	localB	b
    //   160	89	4	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   45	127	341	finally
    //   127	198	341	finally
    //   201	256	341	finally
    //   2	16	348	finally
    //   16	45	348	finally
    //   259	285	348	finally
    //   285	338	348	finally
    //   342	348	348	finally
  }
  
  private boolean d()
  {
    return (l >= 2000) && (l >= k.size());
  }
  
  private void e()
  {
    if (j != null) {
      return;
    }
    throw new IllegalStateException("cache is closed");
  }
  
  private void f()
    throws IOException
  {
    while (i > g) {
      remove((String)((Map.Entry)k.entrySet().iterator().next()).getKey());
    }
  }
  
  public static DiskLruCache open(File paramFile, int paramInt1, int paramInt2, long paramLong)
    throws IOException
  {
    if (paramLong > 0L)
    {
      if (paramInt2 > 0)
      {
        Object localObject = new File(paramFile, "journal.bkp");
        if (((File)localObject).exists())
        {
          File localFile = new File(paramFile, "journal");
          if (localFile.exists()) {
            ((File)localObject).delete();
          } else {
            a((File)localObject, localFile, false);
          }
        }
        localObject = new DiskLruCache(paramFile, paramInt1, paramInt2, paramLong);
        if (c.exists()) {
          try
          {
            ((DiskLruCache)localObject).a();
            ((DiskLruCache)localObject).b();
            return localObject;
          }
          catch (IOException localIOException)
          {
            PrintStream localPrintStream = System.out;
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("DiskLruCache ");
            localStringBuilder.append(paramFile);
            localStringBuilder.append(" is corrupt: ");
            localStringBuilder.append(localIOException.getMessage());
            localStringBuilder.append(", removing");
            localPrintStream.println(localStringBuilder.toString());
            ((DiskLruCache)localObject).delete();
          }
        }
        paramFile.mkdirs();
        paramFile = new DiskLruCache(paramFile, paramInt1, paramInt2, paramLong);
        paramFile.c();
        return paramFile;
      }
      throw new IllegalArgumentException("valueCount <= 0");
    }
    throw new IllegalArgumentException("maxSize <= 0");
  }
  
  public void close()
    throws IOException
  {
    try
    {
      Object localObject1 = j;
      if (localObject1 == null) {
        return;
      }
      localObject1 = new ArrayList(k.values()).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        b localB = (b)((Iterator)localObject1).next();
        if (b.a(localB) != null) {
          b.a(localB).abort();
        }
      }
      f();
      j.close();
      j = null;
      return;
    }
    finally {}
  }
  
  public void delete()
    throws IOException
  {
    close();
    b.a(b);
  }
  
  public Editor edit(String paramString)
    throws IOException
  {
    return a(paramString, -1L);
  }
  
  public void flush()
    throws IOException
  {
    try
    {
      e();
      f();
      j.flush();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public Value get(String paramString)
    throws IOException
  {
    try
    {
      e();
      b localB = (b)k.get(paramString);
      if (localB == null) {
        return null;
      }
      boolean bool = b.d(localB);
      if (!bool) {
        return null;
      }
      File[] arrayOfFile = a;
      int i2 = arrayOfFile.length;
      int i1 = 0;
      while (i1 < i2)
      {
        bool = arrayOfFile[i1].exists();
        if (!bool) {
          return null;
        }
        i1 += 1;
      }
      l += 1;
      j.append("READ");
      j.append(' ');
      j.append(paramString);
      j.append('\n');
      if (d()) {
        a.submit(n);
      }
      paramString = new Value(paramString, b.e(localB), a, b.b(localB), null);
      return paramString;
    }
    finally {}
  }
  
  public File getDirectory()
  {
    return b;
  }
  
  public long getMaxSize()
  {
    try
    {
      long l1 = g;
      return l1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean isClosed()
  {
    try
    {
      Writer localWriter = j;
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
  
  public boolean remove(String paramString)
    throws IOException
  {
    try
    {
      e();
      b localB = (b)k.get(paramString);
      int i1 = 0;
      if ((localB != null) && (b.a(localB) == null))
      {
        while (i1 < h)
        {
          File localFile = localB.a(i1);
          if ((localFile.exists()) && (!localFile.delete()))
          {
            paramString = new StringBuilder();
            paramString.append("failed to delete ");
            paramString.append(localFile);
            throw new IOException(paramString.toString());
          }
          i -= b.b(localB)[i1];
          b.b(localB)[i1] = 0L;
          i1 += 1;
        }
        l += 1;
        j.append("REMOVE");
        j.append(' ');
        j.append(paramString);
        j.append('\n');
        k.remove(paramString);
        if (d()) {
          a.submit(n);
        }
        return true;
      }
      return false;
    }
    finally {}
  }
  
  public void setMaxSize(long paramLong)
  {
    try
    {
      g = paramLong;
      a.submit(n);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public long size()
  {
    try
    {
      long l1 = i;
      return l1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final class Editor
  {
    private final DiskLruCache.b b;
    private final boolean[] c;
    private boolean d;
    
    private Editor(DiskLruCache.b paramB)
    {
      b = paramB;
      if (DiskLruCache.b.d(paramB)) {
        this$1 = null;
      } else {
        this$1 = new boolean[DiskLruCache.e(DiskLruCache.this)];
      }
      c = DiskLruCache.this;
    }
    
    private InputStream a(int paramInt)
      throws IOException
    {
      synchronized (DiskLruCache.this)
      {
        if (DiskLruCache.b.a(b) == this) {
          if (!DiskLruCache.b.d(b)) {
            return null;
          }
        }
        try
        {
          FileInputStream localFileInputStream = new FileInputStream(b.a(paramInt));
          return localFileInputStream;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          for (;;) {}
        }
        return null;
        throw new IllegalStateException();
      }
    }
    
    public void abort()
      throws IOException
    {
      DiskLruCache.a(DiskLruCache.this, this, false);
    }
    
    public void abortUnlessCommitted()
    {
      if (!d) {}
      try
      {
        abort();
        return;
      }
      catch (IOException localIOException) {}
    }
    
    public void commit()
      throws IOException
    {
      DiskLruCache.a(DiskLruCache.this, this, true);
      d = true;
    }
    
    public File getFile(int paramInt)
      throws IOException
    {
      synchronized (DiskLruCache.this)
      {
        if (DiskLruCache.b.a(b) == this)
        {
          if (!DiskLruCache.b.d(b)) {
            c[paramInt] = true;
          }
          File localFile = b.b(paramInt);
          if (!DiskLruCache.f(DiskLruCache.this).exists()) {
            DiskLruCache.f(DiskLruCache.this).mkdirs();
          }
          return localFile;
        }
        throw new IllegalStateException();
      }
    }
    
    public String getString(int paramInt)
      throws IOException
    {
      InputStream localInputStream = a(paramInt);
      if (localInputStream != null) {
        return DiskLruCache.a(localInputStream);
      }
      return null;
    }
    
    /* Error */
    public void set(int paramInt, String paramString)
      throws IOException
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore 4
      //   3: new 98	java/io/OutputStreamWriter
      //   6: dup
      //   7: new 100	java/io/FileOutputStream
      //   10: dup
      //   11: aload_0
      //   12: iload_1
      //   13: invokevirtual 102	com/bumptech/glide/disklrucache/DiskLruCache$Editor:getFile	(I)Ljava/io/File;
      //   16: invokespecial 103	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
      //   19: getstatic 108	com/bumptech/glide/disklrucache/b:b	Ljava/nio/charset/Charset;
      //   22: invokespecial 111	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
      //   25: astore_3
      //   26: aload_3
      //   27: aload_2
      //   28: invokevirtual 117	java/io/Writer:write	(Ljava/lang/String;)V
      //   31: aload_3
      //   32: invokestatic 120	com/bumptech/glide/disklrucache/b:a	(Ljava/io/Closeable;)V
      //   35: return
      //   36: astore 4
      //   38: aload_3
      //   39: astore_2
      //   40: aload 4
      //   42: astore_3
      //   43: goto +7 -> 50
      //   46: astore_3
      //   47: aload 4
      //   49: astore_2
      //   50: aload_2
      //   51: invokestatic 120	com/bumptech/glide/disklrucache/b:a	(Ljava/io/Closeable;)V
      //   54: aload_3
      //   55: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	56	0	this	Editor
      //   0	56	1	paramInt	int
      //   0	56	2	paramString	String
      //   25	18	3	localObject1	Object
      //   46	9	3	localObject2	Object
      //   1	1	4	localObject3	Object
      //   36	12	4	localObject4	Object
      // Exception table:
      //   from	to	target	type
      //   26	31	36	finally
      //   3	26	46	finally
    }
  }
  
  public final class Value
  {
    private final String b;
    private final long c;
    private final long[] d;
    private final File[] e;
    
    private Value(String paramString, long paramLong, File[] paramArrayOfFile, long[] paramArrayOfLong)
    {
      b = paramString;
      c = paramLong;
      e = paramArrayOfFile;
      d = paramArrayOfLong;
    }
    
    public DiskLruCache.Editor edit()
      throws IOException
    {
      return DiskLruCache.a(DiskLruCache.this, b, c);
    }
    
    public File getFile(int paramInt)
    {
      return e[paramInt];
    }
    
    public long getLength(int paramInt)
    {
      return d[paramInt];
    }
    
    public String getString(int paramInt)
      throws IOException
    {
      return DiskLruCache.a(new FileInputStream(e[paramInt]));
    }
  }
  
  private static final class a
    implements ThreadFactory
  {
    private a() {}
    
    public Thread newThread(Runnable paramRunnable)
    {
      try
      {
        paramRunnable = new Thread(paramRunnable, "glide-disk-lru-cache-thread");
        paramRunnable.setPriority(1);
        return paramRunnable;
      }
      finally
      {
        paramRunnable = finally;
        throw paramRunnable;
      }
    }
  }
  
  private final class b
  {
    File[] a;
    File[] b;
    private final String d;
    private final long[] e;
    private boolean f;
    private DiskLruCache.Editor g;
    private long h;
    
    private b(String paramString)
    {
      d = paramString;
      e = new long[DiskLruCache.e(DiskLruCache.this)];
      a = new File[DiskLruCache.e(DiskLruCache.this)];
      b = new File[DiskLruCache.e(DiskLruCache.this)];
      paramString = new StringBuilder(paramString);
      paramString.append('.');
      int j = paramString.length();
      int i = 0;
      while (i < DiskLruCache.e(DiskLruCache.this))
      {
        paramString.append(i);
        a[i] = new File(DiskLruCache.f(DiskLruCache.this), paramString.toString());
        paramString.append(".tmp");
        b[i] = new File(DiskLruCache.f(DiskLruCache.this), paramString.toString());
        paramString.setLength(j);
        i += 1;
      }
    }
    
    private void a(String[] paramArrayOfString)
      throws IOException
    {
      int i;
      if (paramArrayOfString.length == DiskLruCache.e(DiskLruCache.this)) {
        i = 0;
      }
      try
      {
        while (i < paramArrayOfString.length)
        {
          e[i] = Long.parseLong(paramArrayOfString[i]);
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
      return a[paramInt];
    }
    
    public String a()
      throws IOException
    {
      StringBuilder localStringBuilder = new StringBuilder();
      long[] arrayOfLong = e;
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
      return b[paramInt];
    }
  }
}
