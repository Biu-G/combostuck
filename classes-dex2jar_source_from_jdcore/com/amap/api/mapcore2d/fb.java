package com.amap.api.mapcore2d;

import android.content.Context;
import android.text.TextUtils;

public class fb
{
  private Context a;
  private String b;
  private String c;
  private String d;
  private String e;
  
  public fb(Context paramContext, String paramString1, String paramString2, String paramString3)
    throws co
  {
    if ((!TextUtils.isEmpty(paramString3)) && (paramString3.length() <= 256))
    {
      a = paramContext.getApplicationContext();
      c = paramString1;
      d = paramString2;
      b = paramString3;
      return;
    }
    throw new co("无效的参数 - IllegalArgumentException");
  }
  
  public void a(String paramString)
    throws co
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramString.length() <= 65536))
    {
      e = paramString;
      return;
    }
    throw new co("无效的参数 - IllegalArgumentException");
  }
  
  /* Error */
  public byte[] a()
  {
    // Byte code:
    //   0: iconst_0
    //   1: newarray byte
    //   3: astore 4
    //   5: new 59	java/io/ByteArrayOutputStream
    //   8: dup
    //   9: invokespecial 60	java/io/ByteArrayOutputStream:<init>	()V
    //   12: astore_2
    //   13: aload_2
    //   14: astore_1
    //   15: aload_2
    //   16: aload_0
    //   17: getfield 40	com/amap/api/mapcore2d/fb:c	Ljava/lang/String;
    //   20: invokestatic 65	com/amap/api/mapcore2d/cz:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   23: aload_2
    //   24: astore_1
    //   25: aload_2
    //   26: aload_0
    //   27: getfield 42	com/amap/api/mapcore2d/fb:d	Ljava/lang/String;
    //   30: invokestatic 65	com/amap/api/mapcore2d/cz:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   33: aload_2
    //   34: astore_1
    //   35: aload_2
    //   36: aload_0
    //   37: getfield 44	com/amap/api/mapcore2d/fb:b	Ljava/lang/String;
    //   40: invokestatic 65	com/amap/api/mapcore2d/cz:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   43: aload_2
    //   44: astore_1
    //   45: aload_2
    //   46: aload_0
    //   47: getfield 38	com/amap/api/mapcore2d/fb:a	Landroid/content/Context;
    //   50: invokestatic 71	com/amap/api/mapcore2d/ct:m	(Landroid/content/Context;)I
    //   53: invokestatic 75	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   56: invokestatic 65	com/amap/api/mapcore2d/cz:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   59: aload_2
    //   60: astore_1
    //   61: new 77	java/text/SimpleDateFormat
    //   64: dup
    //   65: ldc 79
    //   67: invokespecial 80	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   70: new 82	java/util/Date
    //   73: dup
    //   74: invokespecial 83	java/util/Date:<init>	()V
    //   77: invokevirtual 87	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   80: pop
    //   81: aload_2
    //   82: astore_1
    //   83: aload_2
    //   84: aload_0
    //   85: invokestatic 93	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   88: bipush 14
    //   90: invokevirtual 97	java/util/Calendar:get	(I)I
    //   93: invokevirtual 100	com/amap/api/mapcore2d/fb:a	(I)[B
    //   96: invokevirtual 104	java/io/ByteArrayOutputStream:write	([B)V
    //   99: aload_2
    //   100: astore_1
    //   101: aload_2
    //   102: aload_0
    //   103: aload_0
    //   104: getfield 54	com/amap/api/mapcore2d/fb:e	Ljava/lang/String;
    //   107: invokevirtual 107	com/amap/api/mapcore2d/fb:b	(Ljava/lang/String;)[B
    //   110: invokevirtual 104	java/io/ByteArrayOutputStream:write	([B)V
    //   113: aload_2
    //   114: astore_1
    //   115: aload_2
    //   116: aload_0
    //   117: getfield 54	com/amap/api/mapcore2d/fb:e	Ljava/lang/String;
    //   120: invokestatic 109	com/amap/api/mapcore2d/cz:a	(Ljava/lang/String;)[B
    //   123: invokevirtual 104	java/io/ByteArrayOutputStream:write	([B)V
    //   126: aload_2
    //   127: astore_1
    //   128: aload_2
    //   129: invokevirtual 112	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   132: astore_3
    //   133: aload_2
    //   134: invokevirtual 115	java/io/ByteArrayOutputStream:close	()V
    //   137: goto +8 -> 145
    //   140: astore_1
    //   141: aload_1
    //   142: invokevirtual 118	java/lang/Throwable:printStackTrace	()V
    //   145: aload_3
    //   146: areturn
    //   147: astore_3
    //   148: goto +12 -> 160
    //   151: astore_1
    //   152: aconst_null
    //   153: astore_2
    //   154: goto +40 -> 194
    //   157: astore_3
    //   158: aconst_null
    //   159: astore_2
    //   160: aload_2
    //   161: astore_1
    //   162: aload_3
    //   163: ldc 120
    //   165: ldc 122
    //   167: invokestatic 127	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   170: aload_2
    //   171: ifnull +15 -> 186
    //   174: aload_2
    //   175: invokevirtual 115	java/io/ByteArrayOutputStream:close	()V
    //   178: aload 4
    //   180: areturn
    //   181: astore_1
    //   182: aload_1
    //   183: invokevirtual 118	java/lang/Throwable:printStackTrace	()V
    //   186: aload 4
    //   188: areturn
    //   189: astore_3
    //   190: aload_1
    //   191: astore_2
    //   192: aload_3
    //   193: astore_1
    //   194: aload_2
    //   195: ifnull +15 -> 210
    //   198: aload_2
    //   199: invokevirtual 115	java/io/ByteArrayOutputStream:close	()V
    //   202: goto +8 -> 210
    //   205: astore_2
    //   206: aload_2
    //   207: invokevirtual 118	java/lang/Throwable:printStackTrace	()V
    //   210: aload_1
    //   211: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	212	0	this	fb
    //   14	114	1	localObject1	Object
    //   140	2	1	localThrowable1	Throwable
    //   151	1	1	localObject2	Object
    //   161	1	1	localObject3	Object
    //   181	10	1	localThrowable2	Throwable
    //   193	18	1	localObject4	Object
    //   12	187	2	localObject5	Object
    //   205	2	2	localThrowable3	Throwable
    //   132	14	3	arrayOfByte1	byte[]
    //   147	1	3	localThrowable4	Throwable
    //   157	6	3	localThrowable5	Throwable
    //   189	4	3	localObject6	Object
    //   3	184	4	arrayOfByte2	byte[]
    // Exception table:
    //   from	to	target	type
    //   133	137	140	java/lang/Throwable
    //   15	23	147	java/lang/Throwable
    //   25	33	147	java/lang/Throwable
    //   35	43	147	java/lang/Throwable
    //   45	59	147	java/lang/Throwable
    //   61	81	147	java/lang/Throwable
    //   83	99	147	java/lang/Throwable
    //   101	113	147	java/lang/Throwable
    //   115	126	147	java/lang/Throwable
    //   128	133	147	java/lang/Throwable
    //   5	13	151	finally
    //   5	13	157	java/lang/Throwable
    //   174	178	181	java/lang/Throwable
    //   15	23	189	finally
    //   25	33	189	finally
    //   35	43	189	finally
    //   45	59	189	finally
    //   61	81	189	finally
    //   83	99	189	finally
    //   101	113	189	finally
    //   115	126	189	finally
    //   128	133	189	finally
    //   162	170	189	finally
    //   198	202	205	java/lang/Throwable
  }
  
  public byte[] a(int paramInt)
  {
    return new byte[] { (byte)(paramInt >> 24 & 0xFF), (byte)(paramInt >> 16 & 0xFF), (byte)(paramInt >> 8 & 0xFF), (byte)(paramInt & 0xFF) };
  }
  
  public byte[] b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return new byte[] { 0, 0 };
    }
    int i = paramString.length();
    return new byte[] { (byte)(i / 256), (byte)(i % 256) };
  }
}
