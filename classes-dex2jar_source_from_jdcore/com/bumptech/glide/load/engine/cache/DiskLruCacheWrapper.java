package com.bumptech.glide.load.engine.cache;

import android.util.Log;
import com.bumptech.glide.disklrucache.DiskLruCache;
import com.bumptech.glide.disklrucache.DiskLruCache.Value;
import com.bumptech.glide.load.Key;
import java.io.File;
import java.io.IOException;

public class DiskLruCacheWrapper
  implements DiskCache
{
  private static DiskLruCacheWrapper a;
  private final SafeKeyGenerator b;
  private final File c;
  private final long d;
  private final a e = new a();
  private DiskLruCache f;
  
  @Deprecated
  protected DiskLruCacheWrapper(File paramFile, long paramLong)
  {
    c = paramFile;
    d = paramLong;
    b = new SafeKeyGenerator();
  }
  
  private DiskLruCache a()
    throws IOException
  {
    try
    {
      if (f == null) {
        f = DiskLruCache.open(c, 1, 1, d);
      }
      DiskLruCache localDiskLruCache = f;
      return localDiskLruCache;
    }
    finally {}
  }
  
  private void b()
  {
    try
    {
      f = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static DiskCache create(File paramFile, long paramLong)
  {
    return new DiskLruCacheWrapper(paramFile, paramLong);
  }
  
  @Deprecated
  public static DiskCache get(File paramFile, long paramLong)
  {
    try
    {
      if (a == null) {
        a = new DiskLruCacheWrapper(paramFile, paramLong);
      }
      paramFile = a;
      return paramFile;
    }
    finally {}
  }
  
  /* Error */
  public void clear()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 62	com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper:a	()Lcom/bumptech/glide/disklrucache/DiskLruCache;
    //   6: invokevirtual 65	com/bumptech/glide/disklrucache/DiskLruCache:delete	()V
    //   9: aload_0
    //   10: invokespecial 67	com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper:b	()V
    //   13: goto +29 -> 42
    //   16: astore_1
    //   17: goto +28 -> 45
    //   20: astore_1
    //   21: ldc 69
    //   23: iconst_5
    //   24: invokestatic 75	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   27: ifeq -18 -> 9
    //   30: ldc 69
    //   32: ldc 77
    //   34: aload_1
    //   35: invokestatic 81	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   38: pop
    //   39: goto -30 -> 9
    //   42: aload_0
    //   43: monitorexit
    //   44: return
    //   45: aload_0
    //   46: invokespecial 67	com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper:b	()V
    //   49: aload_1
    //   50: athrow
    //   51: astore_1
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_1
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	DiskLruCacheWrapper
    //   16	1	1	localObject1	Object
    //   20	30	1	localIOException	IOException
    //   51	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	9	16	finally
    //   21	39	16	finally
    //   2	9	20	java/io/IOException
    //   9	13	51	finally
    //   45	51	51	finally
  }
  
  public void delete(Key paramKey)
  {
    paramKey = b.getSafeKey(paramKey);
    try
    {
      a().remove(paramKey);
      return;
    }
    catch (IOException paramKey)
    {
      if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
        Log.w("DiskLruCacheWrapper", "Unable to delete from disk cache", paramKey);
      }
    }
  }
  
  public File get(Key paramKey)
  {
    String str = b.getSafeKey(paramKey);
    if (Log.isLoggable("DiskLruCacheWrapper", 2))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Get: Obtained: ");
      localStringBuilder.append(str);
      localStringBuilder.append(" for for Key: ");
      localStringBuilder.append(paramKey);
      Log.v("DiskLruCacheWrapper", localStringBuilder.toString());
    }
    try
    {
      paramKey = a().get(str);
      if (paramKey != null)
      {
        paramKey = paramKey.getFile(0);
        return paramKey;
      }
    }
    catch (IOException paramKey)
    {
      if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
        Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", paramKey);
      }
    }
    return null;
  }
  
  /* Error */
  public void put(Key paramKey, DiskCache.Writer paramWriter)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 38	com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper:b	Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
    //   4: aload_1
    //   5: invokevirtual 86	com/bumptech/glide/load/engine/cache/SafeKeyGenerator:getSafeKey	(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
    //   8: astore_3
    //   9: aload_0
    //   10: getfield 29	com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper:e	Lcom/bumptech/glide/load/engine/cache/a;
    //   13: aload_3
    //   14: invokevirtual 131	com/bumptech/glide/load/engine/cache/a:a	(Ljava/lang/String;)V
    //   17: ldc 69
    //   19: iconst_2
    //   20: invokestatic 75	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   23: ifeq +53 -> 76
    //   26: new 95	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   33: astore 4
    //   35: aload 4
    //   37: ldc -123
    //   39: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: pop
    //   43: aload 4
    //   45: aload_3
    //   46: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: pop
    //   50: aload 4
    //   52: ldc 104
    //   54: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: pop
    //   58: aload 4
    //   60: aload_1
    //   61: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   64: pop
    //   65: ldc 69
    //   67: aload 4
    //   69: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   72: invokestatic 115	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   75: pop
    //   76: aload_0
    //   77: invokespecial 62	com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper:a	()Lcom/bumptech/glide/disklrucache/DiskLruCache;
    //   80: astore_1
    //   81: aload_1
    //   82: aload_3
    //   83: invokevirtual 118	com/bumptech/glide/disklrucache/DiskLruCache:get	(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    //   86: astore 4
    //   88: aload 4
    //   90: ifnull +12 -> 102
    //   93: aload_0
    //   94: getfield 29	com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper:e	Lcom/bumptech/glide/load/engine/cache/a;
    //   97: aload_3
    //   98: invokevirtual 135	com/bumptech/glide/load/engine/cache/a:b	(Ljava/lang/String;)V
    //   101: return
    //   102: aload_1
    //   103: aload_3
    //   104: invokevirtual 139	com/bumptech/glide/disklrucache/DiskLruCache:edit	(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    //   107: astore_1
    //   108: aload_1
    //   109: ifnull +35 -> 144
    //   112: aload_2
    //   113: aload_1
    //   114: iconst_0
    //   115: invokevirtual 142	com/bumptech/glide/disklrucache/DiskLruCache$Editor:getFile	(I)Ljava/io/File;
    //   118: invokeinterface 148 2 0
    //   123: ifeq +7 -> 130
    //   126: aload_1
    //   127: invokevirtual 151	com/bumptech/glide/disklrucache/DiskLruCache$Editor:commit	()V
    //   130: aload_1
    //   131: invokevirtual 154	com/bumptech/glide/disklrucache/DiskLruCache$Editor:abortUnlessCommitted	()V
    //   134: goto +62 -> 196
    //   137: astore_2
    //   138: aload_1
    //   139: invokevirtual 154	com/bumptech/glide/disklrucache/DiskLruCache$Editor:abortUnlessCommitted	()V
    //   142: aload_2
    //   143: athrow
    //   144: new 95	java/lang/StringBuilder
    //   147: dup
    //   148: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   151: astore_1
    //   152: aload_1
    //   153: ldc -100
    //   155: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: pop
    //   159: aload_1
    //   160: aload_3
    //   161: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: pop
    //   165: new 158	java/lang/IllegalStateException
    //   168: dup
    //   169: aload_1
    //   170: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: invokespecial 160	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   176: athrow
    //   177: astore_1
    //   178: ldc 69
    //   180: iconst_5
    //   181: invokestatic 75	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   184: ifeq +12 -> 196
    //   187: ldc 69
    //   189: ldc -94
    //   191: aload_1
    //   192: invokestatic 81	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   195: pop
    //   196: aload_0
    //   197: getfield 29	com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper:e	Lcom/bumptech/glide/load/engine/cache/a;
    //   200: aload_3
    //   201: invokevirtual 135	com/bumptech/glide/load/engine/cache/a:b	(Ljava/lang/String;)V
    //   204: return
    //   205: astore_1
    //   206: aload_0
    //   207: getfield 29	com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper:e	Lcom/bumptech/glide/load/engine/cache/a;
    //   210: aload_3
    //   211: invokevirtual 135	com/bumptech/glide/load/engine/cache/a:b	(Ljava/lang/String;)V
    //   214: aload_1
    //   215: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	216	0	this	DiskLruCacheWrapper
    //   0	216	1	paramKey	Key
    //   0	216	2	paramWriter	DiskCache.Writer
    //   8	203	3	str	String
    //   33	56	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   112	130	137	finally
    //   76	88	177	java/io/IOException
    //   102	108	177	java/io/IOException
    //   130	134	177	java/io/IOException
    //   138	144	177	java/io/IOException
    //   144	177	177	java/io/IOException
    //   17	76	205	finally
    //   76	88	205	finally
    //   102	108	205	finally
    //   130	134	205	finally
    //   138	144	205	finally
    //   144	177	205	finally
    //   178	196	205	finally
  }
}
