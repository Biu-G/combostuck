package com.amap.api.mapcore2d;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

public abstract class eq
  extends ev
{
  protected Context a;
  protected cy b;
  
  public eq(Context paramContext, cy paramCy)
  {
    if (paramContext != null) {
      a = paramContext.getApplicationContext();
    }
    b = paramCy;
  }
  
  /* Error */
  private byte[] n()
  {
    // Byte code:
    //   0: new 30	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 31	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: aload_1
    //   9: ldc 33
    //   11: invokestatic 38	com/amap/api/mapcore2d/cz:a	(Ljava/lang/String;)[B
    //   14: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   17: aload_1
    //   18: iconst_1
    //   19: newarray byte
    //   21: dup
    //   22: iconst_0
    //   23: iconst_1
    //   24: bastore
    //   25: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   28: aload_1
    //   29: iconst_1
    //   30: newarray byte
    //   32: dup
    //   33: iconst_0
    //   34: iconst_0
    //   35: bastore
    //   36: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   39: aload_1
    //   40: invokevirtual 45	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   43: astore_2
    //   44: aload_1
    //   45: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   48: aload_2
    //   49: areturn
    //   50: astore_1
    //   51: aload_1
    //   52: ldc 50
    //   54: ldc 52
    //   56: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   59: aload_2
    //   60: areturn
    //   61: astore_2
    //   62: goto +30 -> 92
    //   65: astore_2
    //   66: aload_2
    //   67: ldc 50
    //   69: ldc 52
    //   71: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   74: aload_1
    //   75: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   78: goto +12 -> 90
    //   81: astore_1
    //   82: aload_1
    //   83: ldc 50
    //   85: ldc 52
    //   87: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   90: aconst_null
    //   91: areturn
    //   92: aload_1
    //   93: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   96: goto +12 -> 108
    //   99: astore_1
    //   100: aload_1
    //   101: ldc 50
    //   103: ldc 52
    //   105: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   108: aload_2
    //   109: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	110	0	this	eq
    //   7	38	1	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   50	25	1	localThrowable1	Throwable
    //   81	12	1	localThrowable2	Throwable
    //   99	2	1	localThrowable3	Throwable
    //   43	17	2	arrayOfByte	byte[]
    //   61	1	2	localObject	Object
    //   65	44	2	localThrowable4	Throwable
    // Exception table:
    //   from	to	target	type
    //   44	48	50	java/lang/Throwable
    //   8	44	61	finally
    //   66	74	61	finally
    //   8	44	65	java/lang/Throwable
    //   74	78	81	java/lang/Throwable
    //   92	96	99	java/lang/Throwable
  }
  
  /* Error */
  private byte[] o()
  {
    // Byte code:
    //   0: new 30	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 31	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: invokevirtual 60	com/amap/api/mapcore2d/eq:b	()[B
    //   12: astore_2
    //   13: aload_2
    //   14: ifnull +58 -> 72
    //   17: aload_2
    //   18: arraylength
    //   19: ifne +6 -> 25
    //   22: goto +50 -> 72
    //   25: aload_1
    //   26: iconst_1
    //   27: newarray byte
    //   29: dup
    //   30: iconst_0
    //   31: iconst_1
    //   32: bastore
    //   33: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   36: aload_1
    //   37: aload_0
    //   38: aload_2
    //   39: invokevirtual 63	com/amap/api/mapcore2d/eq:a	([B)[B
    //   42: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   45: aload_1
    //   46: aload_2
    //   47: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   50: aload_1
    //   51: invokevirtual 45	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   54: astore_2
    //   55: aload_1
    //   56: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   59: aload_2
    //   60: areturn
    //   61: astore_1
    //   62: aload_1
    //   63: ldc 50
    //   65: ldc 65
    //   67: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   70: aload_2
    //   71: areturn
    //   72: aload_1
    //   73: iconst_1
    //   74: newarray byte
    //   76: dup
    //   77: iconst_0
    //   78: iconst_0
    //   79: bastore
    //   80: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   83: aload_1
    //   84: invokevirtual 45	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   87: astore_2
    //   88: aload_1
    //   89: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   92: aload_2
    //   93: areturn
    //   94: astore_1
    //   95: aload_1
    //   96: ldc 50
    //   98: ldc 65
    //   100: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   103: aload_2
    //   104: areturn
    //   105: astore_2
    //   106: goto +36 -> 142
    //   109: astore_2
    //   110: aload_2
    //   111: ldc 50
    //   113: ldc 65
    //   115: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   118: aload_1
    //   119: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   122: goto +12 -> 134
    //   125: astore_1
    //   126: aload_1
    //   127: ldc 50
    //   129: ldc 65
    //   131: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   134: iconst_1
    //   135: newarray byte
    //   137: dup
    //   138: iconst_0
    //   139: iconst_0
    //   140: bastore
    //   141: areturn
    //   142: aload_1
    //   143: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   146: goto +12 -> 158
    //   149: astore_1
    //   150: aload_1
    //   151: ldc 50
    //   153: ldc 65
    //   155: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   158: aload_2
    //   159: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	160	0	this	eq
    //   7	49	1	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   61	28	1	localThrowable1	Throwable
    //   94	25	1	localThrowable2	Throwable
    //   125	18	1	localThrowable3	Throwable
    //   149	2	1	localThrowable4	Throwable
    //   12	92	2	arrayOfByte	byte[]
    //   105	1	2	localObject	Object
    //   109	50	2	localThrowable5	Throwable
    // Exception table:
    //   from	to	target	type
    //   55	59	61	java/lang/Throwable
    //   88	92	94	java/lang/Throwable
    //   8	13	105	finally
    //   17	22	105	finally
    //   25	55	105	finally
    //   72	88	105	finally
    //   110	118	105	finally
    //   8	13	109	java/lang/Throwable
    //   17	22	109	java/lang/Throwable
    //   25	55	109	java/lang/Throwable
    //   72	88	109	java/lang/Throwable
    //   118	122	125	java/lang/Throwable
    //   142	146	149	java/lang/Throwable
  }
  
  /* Error */
  private byte[] p()
  {
    // Byte code:
    //   0: new 30	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 31	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: invokevirtual 69	com/amap/api/mapcore2d/eq:c	()[B
    //   12: astore_2
    //   13: aload_2
    //   14: ifnull +67 -> 81
    //   17: aload_2
    //   18: arraylength
    //   19: ifne +6 -> 25
    //   22: goto +59 -> 81
    //   25: aload_1
    //   26: iconst_1
    //   27: newarray byte
    //   29: dup
    //   30: iconst_0
    //   31: iconst_1
    //   32: bastore
    //   33: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   36: aload_0
    //   37: getfield 21	com/amap/api/mapcore2d/eq:a	Landroid/content/Context;
    //   40: aload_2
    //   41: invokestatic 74	com/amap/api/mapcore2d/cs:a	(Landroid/content/Context;[B)[B
    //   44: astore_2
    //   45: aload_1
    //   46: aload_0
    //   47: aload_2
    //   48: invokevirtual 63	com/amap/api/mapcore2d/eq:a	([B)[B
    //   51: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   54: aload_1
    //   55: aload_2
    //   56: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   59: aload_1
    //   60: invokevirtual 45	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   63: astore_2
    //   64: aload_1
    //   65: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   68: aload_2
    //   69: areturn
    //   70: astore_1
    //   71: aload_1
    //   72: ldc 50
    //   74: ldc 76
    //   76: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   79: aload_2
    //   80: areturn
    //   81: aload_1
    //   82: iconst_1
    //   83: newarray byte
    //   85: dup
    //   86: iconst_0
    //   87: iconst_0
    //   88: bastore
    //   89: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   92: aload_1
    //   93: invokevirtual 45	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   96: astore_2
    //   97: aload_1
    //   98: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   101: aload_2
    //   102: areturn
    //   103: astore_1
    //   104: aload_1
    //   105: ldc 50
    //   107: ldc 76
    //   109: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   112: aload_2
    //   113: areturn
    //   114: astore_2
    //   115: goto +36 -> 151
    //   118: astore_2
    //   119: aload_2
    //   120: ldc 50
    //   122: ldc 76
    //   124: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   127: aload_1
    //   128: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   131: goto +12 -> 143
    //   134: astore_1
    //   135: aload_1
    //   136: ldc 50
    //   138: ldc 76
    //   140: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   143: iconst_1
    //   144: newarray byte
    //   146: dup
    //   147: iconst_0
    //   148: iconst_0
    //   149: bastore
    //   150: areturn
    //   151: aload_1
    //   152: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   155: goto +12 -> 167
    //   158: astore_1
    //   159: aload_1
    //   160: ldc 50
    //   162: ldc 76
    //   164: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   167: aload_2
    //   168: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	169	0	this	eq
    //   7	58	1	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   70	28	1	localThrowable1	Throwable
    //   103	25	1	localThrowable2	Throwable
    //   134	18	1	localThrowable3	Throwable
    //   158	2	1	localThrowable4	Throwable
    //   12	101	2	arrayOfByte	byte[]
    //   114	1	2	localObject	Object
    //   118	50	2	localThrowable5	Throwable
    // Exception table:
    //   from	to	target	type
    //   64	68	70	java/lang/Throwable
    //   97	101	103	java/lang/Throwable
    //   8	13	114	finally
    //   17	22	114	finally
    //   25	64	114	finally
    //   81	97	114	finally
    //   119	127	114	finally
    //   8	13	118	java/lang/Throwable
    //   17	22	118	java/lang/Throwable
    //   25	64	118	java/lang/Throwable
    //   81	97	118	java/lang/Throwable
    //   127	131	134	java/lang/Throwable
    //   151	155	158	java/lang/Throwable
  }
  
  protected byte[] a(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    return new byte[] { (byte)(i / 256), (byte)(i % 256) };
  }
  
  /* Error */
  public final byte[] a_()
  {
    // Byte code:
    //   0: new 30	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 31	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: aload_1
    //   9: aload_0
    //   10: invokespecial 79	com/amap/api/mapcore2d/eq:n	()[B
    //   13: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   16: aload_1
    //   17: aload_0
    //   18: invokevirtual 82	com/amap/api/mapcore2d/eq:i	()[B
    //   21: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   24: aload_1
    //   25: aload_0
    //   26: invokespecial 84	com/amap/api/mapcore2d/eq:o	()[B
    //   29: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   32: aload_1
    //   33: aload_0
    //   34: invokespecial 86	com/amap/api/mapcore2d/eq:p	()[B
    //   37: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   40: aload_1
    //   41: invokevirtual 45	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   44: astore_2
    //   45: aload_1
    //   46: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   49: aload_2
    //   50: areturn
    //   51: astore_1
    //   52: aload_1
    //   53: ldc 50
    //   55: ldc 88
    //   57: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   60: aload_2
    //   61: areturn
    //   62: astore_2
    //   63: goto +30 -> 93
    //   66: astore_2
    //   67: aload_2
    //   68: ldc 50
    //   70: ldc 88
    //   72: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   75: aload_1
    //   76: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   79: goto +12 -> 91
    //   82: astore_1
    //   83: aload_1
    //   84: ldc 50
    //   86: ldc 88
    //   88: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   91: aconst_null
    //   92: areturn
    //   93: aload_1
    //   94: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   97: goto +12 -> 109
    //   100: astore_1
    //   101: aload_1
    //   102: ldc 50
    //   104: ldc 88
    //   106: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   109: aload_2
    //   110: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	this	eq
    //   7	39	1	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   51	25	1	localThrowable1	Throwable
    //   82	12	1	localThrowable2	Throwable
    //   100	2	1	localThrowable3	Throwable
    //   44	17	2	arrayOfByte	byte[]
    //   62	1	2	localObject	Object
    //   66	44	2	localThrowable4	Throwable
    // Exception table:
    //   from	to	target	type
    //   45	49	51	java/lang/Throwable
    //   8	45	62	finally
    //   67	75	62	finally
    //   8	45	66	java/lang/Throwable
    //   75	79	82	java/lang/Throwable
    //   93	97	100	java/lang/Throwable
  }
  
  public abstract byte[] b();
  
  public abstract byte[] c();
  
  protected String d()
  {
    return "2.1";
  }
  
  public Map<String, String> f()
  {
    String str1 = cp.f(a);
    String str2 = cs.a();
    Object localObject1 = a;
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("key=");
    ((StringBuilder)localObject2).append(str1);
    localObject1 = cs.a((Context)localObject1, str2, ((StringBuilder)localObject2).toString());
    localObject2 = new HashMap();
    ((Map)localObject2).put("ts", str2);
    ((Map)localObject2).put("key", str1);
    ((Map)localObject2).put("scode", localObject1);
    return localObject2;
  }
  
  public boolean h()
  {
    return true;
  }
  
  /* Error */
  public byte[] i()
  {
    // Byte code:
    //   0: new 30	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 31	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: aload_1
    //   9: iconst_1
    //   10: newarray byte
    //   12: dup
    //   13: iconst_0
    //   14: iconst_3
    //   15: bastore
    //   16: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   19: aload_0
    //   20: invokevirtual 137	com/amap/api/mapcore2d/eq:h	()Z
    //   23: ifeq +32 -> 55
    //   26: aload_0
    //   27: getfield 21	com/amap/api/mapcore2d/eq:a	Landroid/content/Context;
    //   30: aload_0
    //   31: invokevirtual 140	com/amap/api/mapcore2d/eq:k	()Z
    //   34: invokestatic 143	com/amap/api/mapcore2d/cs:a	(Landroid/content/Context;Z)[B
    //   37: astore_2
    //   38: aload_1
    //   39: aload_0
    //   40: aload_2
    //   41: invokevirtual 63	com/amap/api/mapcore2d/eq:a	([B)[B
    //   44: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   47: aload_1
    //   48: aload_2
    //   49: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   52: goto +20 -> 72
    //   55: aload_1
    //   56: iconst_2
    //   57: newarray byte
    //   59: dup
    //   60: iconst_0
    //   61: ldc -112
    //   63: bastore
    //   64: dup
    //   65: iconst_1
    //   66: ldc -112
    //   68: bastore
    //   69: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   72: aload_0
    //   73: invokevirtual 146	com/amap/api/mapcore2d/eq:d	()Ljava/lang/String;
    //   76: invokestatic 38	com/amap/api/mapcore2d/cz:a	(Ljava/lang/String;)[B
    //   79: astore_2
    //   80: aload_2
    //   81: ifnull +25 -> 106
    //   84: aload_2
    //   85: arraylength
    //   86: ifle +20 -> 106
    //   89: aload_1
    //   90: aload_0
    //   91: aload_2
    //   92: invokevirtual 63	com/amap/api/mapcore2d/eq:a	([B)[B
    //   95: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   98: aload_1
    //   99: aload_2
    //   100: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   103: goto +20 -> 123
    //   106: aload_1
    //   107: iconst_2
    //   108: newarray byte
    //   110: dup
    //   111: iconst_0
    //   112: ldc -112
    //   114: bastore
    //   115: dup
    //   116: iconst_1
    //   117: ldc -112
    //   119: bastore
    //   120: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   123: aload_0
    //   124: invokevirtual 149	com/amap/api/mapcore2d/eq:j	()Ljava/lang/String;
    //   127: invokestatic 38	com/amap/api/mapcore2d/cz:a	(Ljava/lang/String;)[B
    //   130: astore_2
    //   131: aload_2
    //   132: ifnull +25 -> 157
    //   135: aload_2
    //   136: arraylength
    //   137: ifle +20 -> 157
    //   140: aload_1
    //   141: aload_0
    //   142: aload_2
    //   143: invokevirtual 63	com/amap/api/mapcore2d/eq:a	([B)[B
    //   146: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   149: aload_1
    //   150: aload_2
    //   151: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   154: goto +20 -> 174
    //   157: aload_1
    //   158: iconst_2
    //   159: newarray byte
    //   161: dup
    //   162: iconst_0
    //   163: ldc -112
    //   165: bastore
    //   166: dup
    //   167: iconst_1
    //   168: ldc -112
    //   170: bastore
    //   171: invokevirtual 42	java/io/ByteArrayOutputStream:write	([B)V
    //   174: aload_1
    //   175: invokevirtual 45	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   178: astore_2
    //   179: aload_1
    //   180: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   183: aload_2
    //   184: areturn
    //   185: astore_1
    //   186: aload_1
    //   187: ldc 50
    //   189: ldc 76
    //   191: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   194: aload_2
    //   195: areturn
    //   196: astore_2
    //   197: goto +36 -> 233
    //   200: astore_2
    //   201: aload_2
    //   202: ldc 50
    //   204: ldc -105
    //   206: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   209: aload_1
    //   210: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   213: goto +12 -> 225
    //   216: astore_1
    //   217: aload_1
    //   218: ldc 50
    //   220: ldc 76
    //   222: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   225: iconst_1
    //   226: newarray byte
    //   228: dup
    //   229: iconst_0
    //   230: iconst_0
    //   231: bastore
    //   232: areturn
    //   233: aload_1
    //   234: invokevirtual 48	java/io/ByteArrayOutputStream:close	()V
    //   237: goto +12 -> 249
    //   240: astore_1
    //   241: aload_1
    //   242: ldc 50
    //   244: ldc 76
    //   246: invokestatic 57	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   249: aload_2
    //   250: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	251	0	this	eq
    //   7	173	1	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   185	25	1	localThrowable1	Throwable
    //   216	18	1	localThrowable2	Throwable
    //   240	2	1	localThrowable3	Throwable
    //   37	158	2	arrayOfByte	byte[]
    //   196	1	2	localObject	Object
    //   200	50	2	localThrowable4	Throwable
    // Exception table:
    //   from	to	target	type
    //   179	183	185	java/lang/Throwable
    //   8	52	196	finally
    //   55	72	196	finally
    //   72	80	196	finally
    //   84	103	196	finally
    //   106	123	196	finally
    //   123	131	196	finally
    //   135	154	196	finally
    //   157	174	196	finally
    //   174	179	196	finally
    //   201	209	196	finally
    //   8	52	200	java/lang/Throwable
    //   55	72	200	java/lang/Throwable
    //   72	80	200	java/lang/Throwable
    //   84	103	200	java/lang/Throwable
    //   106	123	200	java/lang/Throwable
    //   123	131	200	java/lang/Throwable
    //   135	154	200	java/lang/Throwable
    //   157	174	200	java/lang/Throwable
    //   174	179	200	java/lang/Throwable
    //   209	213	216	java/lang/Throwable
    //   233	237	240	java/lang/Throwable
  }
  
  public String j()
  {
    return String.format("platform=Android&sdkversion=%s&product=%s", new Object[] { b.c(), b.a() });
  }
  
  protected boolean k()
  {
    return false;
  }
}
