package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.List;

class c
{
  private static final a a = new a();
  private final a b;
  private final b c;
  private final ArrayPool d;
  private final ContentResolver e;
  private final List<ImageHeaderParser> f;
  
  c(List<ImageHeaderParser> paramList, a paramA, b paramB, ArrayPool paramArrayPool, ContentResolver paramContentResolver)
  {
    b = paramA;
    c = paramB;
    d = paramArrayPool;
    e = paramContentResolver;
    f = paramList;
  }
  
  c(List<ImageHeaderParser> paramList, b paramB, ArrayPool paramArrayPool, ContentResolver paramContentResolver)
  {
    this(paramList, a, paramB, paramArrayPool, paramContentResolver);
  }
  
  private boolean a(File paramFile)
  {
    return (b.a(paramFile)) && (0L < b.b(paramFile));
  }
  
  @Nullable
  private String c(@NonNull Uri paramUri)
  {
    paramUri = c.a(paramUri);
    if (paramUri != null) {
      try
      {
        if (paramUri.moveToFirst())
        {
          String str = paramUri.getString(0);
          return str;
        }
      }
      finally
      {
        if (paramUri != null) {
          paramUri.close();
        }
      }
    }
    if (paramUri != null) {
      paramUri.close();
    }
    return null;
  }
  
  /* Error */
  int a(Uri paramUri)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 36	com/bumptech/glide/load/data/mediastore/c:e	Landroid/content/ContentResolver;
    //   4: aload_1
    //   5: invokevirtual 84	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   8: astore 4
    //   10: aload 4
    //   12: astore_3
    //   13: aload_0
    //   14: getfield 38	com/bumptech/glide/load/data/mediastore/c:f	Ljava/util/List;
    //   17: aload 4
    //   19: aload_0
    //   20: getfield 34	com/bumptech/glide/load/data/mediastore/c:d	Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    //   23: invokestatic 90	com/bumptech/glide/load/ImageHeaderParserUtils:getOrientation	(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
    //   26: istore_2
    //   27: aload 4
    //   29: ifnull +8 -> 37
    //   32: aload 4
    //   34: invokevirtual 93	java/io/InputStream:close	()V
    //   37: iload_2
    //   38: ireturn
    //   39: astore 5
    //   41: goto +14 -> 55
    //   44: astore_1
    //   45: aconst_null
    //   46: astore_3
    //   47: goto +82 -> 129
    //   50: astore 5
    //   52: aconst_null
    //   53: astore 4
    //   55: aload 4
    //   57: astore_3
    //   58: ldc 95
    //   60: iconst_3
    //   61: invokestatic 101	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   64: ifeq +52 -> 116
    //   67: aload 4
    //   69: astore_3
    //   70: new 103	java/lang/StringBuilder
    //   73: dup
    //   74: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   77: astore 6
    //   79: aload 4
    //   81: astore_3
    //   82: aload 6
    //   84: ldc 106
    //   86: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: pop
    //   90: aload 4
    //   92: astore_3
    //   93: aload 6
    //   95: aload_1
    //   96: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   99: pop
    //   100: aload 4
    //   102: astore_3
    //   103: ldc 95
    //   105: aload 6
    //   107: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: aload 5
    //   112: invokestatic 120	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   115: pop
    //   116: aload 4
    //   118: ifnull +8 -> 126
    //   121: aload 4
    //   123: invokevirtual 93	java/io/InputStream:close	()V
    //   126: iconst_m1
    //   127: ireturn
    //   128: astore_1
    //   129: aload_3
    //   130: ifnull +7 -> 137
    //   133: aload_3
    //   134: invokevirtual 93	java/io/InputStream:close	()V
    //   137: aload_1
    //   138: athrow
    //   139: astore_1
    //   140: iload_2
    //   141: ireturn
    //   142: astore_1
    //   143: goto -17 -> 126
    //   146: astore_3
    //   147: goto -10 -> 137
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	150	0	this	c
    //   0	150	1	paramUri	Uri
    //   26	115	2	i	int
    //   12	122	3	localInputStream1	InputStream
    //   146	1	3	localIOException1	java.io.IOException
    //   8	114	4	localInputStream2	InputStream
    //   39	1	5	localIOException2	java.io.IOException
    //   50	61	5	localIOException3	java.io.IOException
    //   77	29	6	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   13	27	39	java/io/IOException
    //   13	27	39	java/lang/NullPointerException
    //   0	10	44	finally
    //   0	10	50	java/io/IOException
    //   0	10	50	java/lang/NullPointerException
    //   13	27	128	finally
    //   58	67	128	finally
    //   70	79	128	finally
    //   82	90	128	finally
    //   93	100	128	finally
    //   103	116	128	finally
    //   32	37	139	java/io/IOException
    //   121	126	142	java/io/IOException
    //   133	137	146	java/io/IOException
  }
  
  public InputStream b(Uri paramUri)
    throws FileNotFoundException
  {
    Object localObject = c(paramUri);
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      return null;
    }
    localObject = b.a((String)localObject);
    if (!a((File)localObject)) {
      return null;
    }
    localObject = Uri.fromFile((File)localObject);
    try
    {
      InputStream localInputStream = e.openInputStream((Uri)localObject);
      return localInputStream;
    }
    catch (NullPointerException localNullPointerException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("NPE opening uri: ");
      localStringBuilder.append(paramUri);
      localStringBuilder.append(" -> ");
      localStringBuilder.append(localObject);
      throw ((FileNotFoundException)new FileNotFoundException(localStringBuilder.toString()).initCause(localNullPointerException));
    }
  }
}
