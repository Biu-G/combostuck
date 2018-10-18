package com.amap.api.mapcore2d;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class dm
{
  private static Map<Class<? extends dl>, dl> d = new HashMap();
  private dr a;
  private SQLiteDatabase b;
  private dl c;
  
  public dm(Context paramContext, dl paramDl)
  {
    try
    {
      a = new dr(paramContext.getApplicationContext(), paramDl.a(), null, paramDl.b(), paramDl);
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    c = paramDl;
  }
  
  private ContentValues a(Object paramObject, dn paramDn)
  {
    ContentValues localContentValues = new ContentValues();
    paramDn = a(paramObject.getClass(), paramDn.b());
    int j = paramDn.length;
    int i = 0;
    while (i < j)
    {
      Field localField = paramDn[i];
      localField.setAccessible(true);
      a(paramObject, localField, localContentValues);
      i += 1;
    }
    return localContentValues;
  }
  
  private SQLiteDatabase a(boolean paramBoolean)
  {
    try
    {
      if (b == null) {
        b = a.getReadableDatabase();
      }
    }
    catch (Throwable localThrowable)
    {
      if (!paramBoolean) {
        dd.a(localThrowable, "DBOperation", "getReadAbleDataBase");
      } else {
        localThrowable.printStackTrace();
      }
    }
    return b;
  }
  
  public static dl a(Class<? extends dl> paramClass)
    throws IllegalAccessException, InstantiationException
  {
    try
    {
      if (d.get(paramClass) == null) {
        d.put(paramClass, paramClass.newInstance());
      }
      paramClass = (dl)d.get(paramClass);
      return paramClass;
    }
    finally {}
  }
  
  private <T> T a(Cursor paramCursor, Class<T> paramClass, dn paramDn)
    throws IllegalAccessException, InstantiationException, NoSuchMethodException, InvocationTargetException
  {
    paramDn = a(paramClass, paramDn.b());
    int i = 0;
    paramClass = paramClass.getDeclaredConstructor(new Class[0]);
    paramClass.setAccessible(true);
    paramClass = paramClass.newInstance(new Object[0]);
    int j = paramDn.length;
    while (i < j)
    {
      Object localObject1 = paramDn[i];
      localObject1.setAccessible(true);
      Object localObject2 = localObject1.getAnnotation(do.class);
      if (localObject2 != null)
      {
        localObject2 = (do)localObject2;
        int k = ((do)localObject2).b();
        int m = paramCursor.getColumnIndex(((do)localObject2).a());
        switch (k)
        {
        default: 
          break;
        case 7: 
          localObject1.set(paramClass, paramCursor.getBlob(m));
          break;
        case 6: 
          localObject1.set(paramClass, paramCursor.getString(m));
          break;
        case 5: 
          localObject1.set(paramClass, Long.valueOf(paramCursor.getLong(m)));
          break;
        case 4: 
          localObject1.set(paramClass, Double.valueOf(paramCursor.getDouble(m)));
          break;
        case 3: 
          localObject1.set(paramClass, Float.valueOf(paramCursor.getFloat(m)));
          break;
        case 2: 
          localObject1.set(paramClass, Integer.valueOf(paramCursor.getInt(m)));
          break;
        case 1: 
          localObject1.set(paramClass, Short.valueOf(paramCursor.getShort(m)));
        }
      }
      i += 1;
    }
    return paramClass;
  }
  
  private <T> String a(dn paramDn)
  {
    if (paramDn == null) {
      return null;
    }
    return paramDn.a();
  }
  
  public static String a(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 1;
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (i != 0)
      {
        localStringBuilder.append(str);
        localStringBuilder.append(" = '");
        localStringBuilder.append((String)paramMap.get(str));
        localStringBuilder.append("'");
        i = 0;
      }
      else
      {
        localStringBuilder.append(" and ");
        localStringBuilder.append(str);
        localStringBuilder.append(" = '");
        localStringBuilder.append((String)paramMap.get(str));
        localStringBuilder.append("'");
      }
    }
    return localStringBuilder.toString();
  }
  
  private <T> void a(SQLiteDatabase paramSQLiteDatabase, T paramT)
  {
    dn localDn = b(paramT.getClass());
    String str = a(localDn);
    if (TextUtils.isEmpty(str)) {
      return;
    }
    if (paramT != null)
    {
      if (paramSQLiteDatabase == null) {
        return;
      }
      paramT = a(paramT, localDn);
      if (paramT == null) {
        return;
      }
      paramSQLiteDatabase.insert(str, null, paramT);
      return;
    }
  }
  
  private void a(Object paramObject, Field paramField, ContentValues paramContentValues)
  {
    Object localObject = paramField.getAnnotation(do.class);
    if (localObject == null) {
      return;
    }
    localObject = (do)localObject;
    switch (((do)localObject).b())
    {
    default: 
      return;
    }
    try
    {
      paramObject = (byte[])paramField.get(paramObject);
      paramContentValues.put(((do)localObject).a(), paramObject);
      return;
    }
    catch (IllegalAccessException paramObject)
    {
      long l;
      double d1;
      float f;
      int i;
      short s;
      paramObject.printStackTrace();
    }
    paramObject = (String)paramField.get(paramObject);
    paramContentValues.put(((do)localObject).a(), paramObject);
    return;
    l = paramField.getLong(paramObject);
    paramContentValues.put(((do)localObject).a(), Long.valueOf(l));
    return;
    d1 = paramField.getDouble(paramObject);
    paramContentValues.put(((do)localObject).a(), Double.valueOf(d1));
    return;
    f = paramField.getFloat(paramObject);
    paramContentValues.put(((do)localObject).a(), Float.valueOf(f));
    return;
    i = paramField.getInt(paramObject);
    paramContentValues.put(((do)localObject).a(), Integer.valueOf(i));
    return;
    s = paramField.getShort(paramObject);
    paramContentValues.put(((do)localObject).a(), Short.valueOf(s));
    return;
  }
  
  private boolean a(Annotation paramAnnotation)
  {
    return paramAnnotation != null;
  }
  
  private Field[] a(Class<?> paramClass, boolean paramBoolean)
  {
    if (paramClass == null) {
      return null;
    }
    if (paramBoolean) {
      return paramClass.getSuperclass().getDeclaredFields();
    }
    return paramClass.getDeclaredFields();
  }
  
  private SQLiteDatabase b(boolean paramBoolean)
  {
    try
    {
      if ((b == null) || (b.isReadOnly()))
      {
        if (b != null) {
          b.close();
        }
        b = a.getWritableDatabase();
      }
    }
    catch (Throwable localThrowable)
    {
      dd.a(localThrowable, "DBOperation", "getWriteDatabase");
    }
    return b;
  }
  
  private <T> dn b(Class<T> paramClass)
  {
    paramClass = paramClass.getAnnotation(dn.class);
    if (!a(paramClass)) {
      return null;
    }
    return (dn)paramClass;
  }
  
  /* Error */
  public <T> List<T> a(String paramString, Class<T> paramClass, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 53	com/amap/api/mapcore2d/dm:c	Lcom/amap/api/mapcore2d/dl;
    //   4: astore 6
    //   6: aload 6
    //   8: monitorenter
    //   9: new 337	java/util/ArrayList
    //   12: dup
    //   13: invokespecial 338	java/util/ArrayList:<init>	()V
    //   16: astore 7
    //   18: aload_0
    //   19: aload_2
    //   20: invokespecial 253	com/amap/api/mapcore2d/dm:b	(Ljava/lang/Class;)Lcom/amap/api/mapcore2d/dn;
    //   23: astore 8
    //   25: aload_0
    //   26: aload 8
    //   28: invokespecial 255	com/amap/api/mapcore2d/dm:a	(Lcom/amap/api/mapcore2d/dn;)Ljava/lang/String;
    //   31: astore 5
    //   33: aload_0
    //   34: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   37: ifnonnull +12 -> 49
    //   40: aload_0
    //   41: aload_0
    //   42: iload_3
    //   43: invokespecial 340	com/amap/api/mapcore2d/dm:a	(Z)Landroid/database/sqlite/SQLiteDatabase;
    //   46: putfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   49: aload_0
    //   50: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   53: ifnull +413 -> 466
    //   56: aload 5
    //   58: invokestatic 261	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   61: istore 4
    //   63: iload 4
    //   65: ifne +401 -> 466
    //   68: aload_1
    //   69: ifnonnull +6 -> 75
    //   72: goto +394 -> 466
    //   75: aload_0
    //   76: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   79: aload 5
    //   81: aconst_null
    //   82: aload_1
    //   83: aconst_null
    //   84: aconst_null
    //   85: aconst_null
    //   86: aconst_null
    //   87: invokevirtual 344	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   90: astore 5
    //   92: aload 5
    //   94: ifnonnull +104 -> 198
    //   97: aload 5
    //   99: astore_1
    //   100: aload_0
    //   101: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   104: invokevirtual 325	android/database/sqlite/SQLiteDatabase:close	()V
    //   107: aload 5
    //   109: astore_1
    //   110: aload_0
    //   111: aconst_null
    //   112: putfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   115: aload 5
    //   117: ifnull +28 -> 145
    //   120: aload 5
    //   122: invokeinterface 345 1 0
    //   127: goto +18 -> 145
    //   130: astore_1
    //   131: iload_3
    //   132: ifne +13 -> 145
    //   135: aload_1
    //   136: ldc_w 347
    //   139: ldc_w 349
    //   142: invokestatic 94	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   145: aload_0
    //   146: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   149: ifnull +33 -> 182
    //   152: aload_0
    //   153: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   156: invokevirtual 325	android/database/sqlite/SQLiteDatabase:close	()V
    //   159: aload_0
    //   160: aconst_null
    //   161: putfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   164: goto +18 -> 182
    //   167: astore_1
    //   168: iload_3
    //   169: ifne +13 -> 182
    //   172: aload_1
    //   173: ldc_w 347
    //   176: ldc_w 349
    //   179: invokestatic 94	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   182: aload 6
    //   184: monitorexit
    //   185: aload 7
    //   187: areturn
    //   188: astore_1
    //   189: aload 5
    //   191: astore_2
    //   192: aload_1
    //   193: astore 5
    //   195: goto +119 -> 314
    //   198: aload 5
    //   200: astore_1
    //   201: aload 5
    //   203: invokeinterface 352 1 0
    //   208: ifeq +26 -> 234
    //   211: aload 5
    //   213: astore_1
    //   214: aload 7
    //   216: aload_0
    //   217: aload 5
    //   219: aload_2
    //   220: aload 8
    //   222: invokespecial 354	com/amap/api/mapcore2d/dm:a	(Landroid/database/Cursor;Ljava/lang/Class;Lcom/amap/api/mapcore2d/dn;)Ljava/lang/Object;
    //   225: invokeinterface 360 2 0
    //   230: pop
    //   231: goto -33 -> 198
    //   234: aload 5
    //   236: ifnull +28 -> 264
    //   239: aload 5
    //   241: invokeinterface 345 1 0
    //   246: goto +18 -> 264
    //   249: astore_1
    //   250: iload_3
    //   251: ifne +13 -> 264
    //   254: aload_1
    //   255: ldc_w 347
    //   258: ldc_w 349
    //   261: invokestatic 94	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   264: aload_0
    //   265: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   268: ifnull +192 -> 460
    //   271: aload_0
    //   272: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   275: invokevirtual 325	android/database/sqlite/SQLiteDatabase:close	()V
    //   278: aload_0
    //   279: aconst_null
    //   280: putfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   283: goto +177 -> 460
    //   286: astore_1
    //   287: iload_3
    //   288: ifne +172 -> 460
    //   291: aload_1
    //   292: ldc_w 347
    //   295: ldc_w 349
    //   298: invokestatic 94	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   301: goto +159 -> 460
    //   304: astore_2
    //   305: aconst_null
    //   306: astore_1
    //   307: goto +28 -> 335
    //   310: astore 5
    //   312: aconst_null
    //   313: astore_2
    //   314: iload_3
    //   315: ifne +87 -> 402
    //   318: aload_2
    //   319: astore_1
    //   320: aload 5
    //   322: ldc_w 347
    //   325: ldc_w 349
    //   328: invokestatic 94	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   331: goto +71 -> 402
    //   334: astore_2
    //   335: aload_1
    //   336: ifnull +27 -> 363
    //   339: aload_1
    //   340: invokeinterface 345 1 0
    //   345: goto +18 -> 363
    //   348: astore_1
    //   349: iload_3
    //   350: ifne +13 -> 363
    //   353: aload_1
    //   354: ldc_w 347
    //   357: ldc_w 349
    //   360: invokestatic 94	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   363: aload_0
    //   364: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   367: ifnull +33 -> 400
    //   370: aload_0
    //   371: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   374: invokevirtual 325	android/database/sqlite/SQLiteDatabase:close	()V
    //   377: aload_0
    //   378: aconst_null
    //   379: putfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   382: goto +18 -> 400
    //   385: astore_1
    //   386: iload_3
    //   387: ifne +13 -> 400
    //   390: aload_1
    //   391: ldc_w 347
    //   394: ldc_w 349
    //   397: invokestatic 94	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   400: aload_2
    //   401: athrow
    //   402: aload_2
    //   403: ifnull +27 -> 430
    //   406: aload_2
    //   407: invokeinterface 345 1 0
    //   412: goto +18 -> 430
    //   415: astore_1
    //   416: iload_3
    //   417: ifne +13 -> 430
    //   420: aload_1
    //   421: ldc_w 347
    //   424: ldc_w 349
    //   427: invokestatic 94	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   430: aload_0
    //   431: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   434: ifnull +26 -> 460
    //   437: aload_0
    //   438: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   441: invokevirtual 325	android/database/sqlite/SQLiteDatabase:close	()V
    //   444: aload_0
    //   445: aconst_null
    //   446: putfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   449: goto +11 -> 460
    //   452: astore_1
    //   453: iload_3
    //   454: ifne +6 -> 460
    //   457: goto -166 -> 291
    //   460: aload 6
    //   462: monitorexit
    //   463: aload 7
    //   465: areturn
    //   466: aload 6
    //   468: monitorexit
    //   469: aload 7
    //   471: areturn
    //   472: astore_1
    //   473: aload 6
    //   475: monitorexit
    //   476: aload_1
    //   477: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	478	0	this	dm
    //   0	478	1	paramString	String
    //   0	478	2	paramClass	Class<T>
    //   0	478	3	paramBoolean	boolean
    //   61	3	4	bool	boolean
    //   31	209	5	localObject	Object
    //   310	11	5	localThrowable	Throwable
    //   4	470	6	localDl	dl
    //   16	454	7	localArrayList	java.util.ArrayList
    //   23	198	8	localDn	dn
    // Exception table:
    //   from	to	target	type
    //   120	127	130	java/lang/Throwable
    //   145	164	167	java/lang/Throwable
    //   100	107	188	java/lang/Throwable
    //   110	115	188	java/lang/Throwable
    //   201	211	188	java/lang/Throwable
    //   214	231	188	java/lang/Throwable
    //   239	246	249	java/lang/Throwable
    //   264	283	286	java/lang/Throwable
    //   75	92	304	finally
    //   75	92	310	java/lang/Throwable
    //   100	107	334	finally
    //   110	115	334	finally
    //   201	211	334	finally
    //   214	231	334	finally
    //   320	331	334	finally
    //   339	345	348	java/lang/Throwable
    //   363	382	385	java/lang/Throwable
    //   406	412	415	java/lang/Throwable
    //   430	449	452	java/lang/Throwable
    //   9	49	472	finally
    //   49	63	472	finally
    //   120	127	472	finally
    //   135	145	472	finally
    //   145	164	472	finally
    //   172	182	472	finally
    //   182	185	472	finally
    //   239	246	472	finally
    //   254	264	472	finally
    //   264	283	472	finally
    //   291	301	472	finally
    //   339	345	472	finally
    //   353	363	472	finally
    //   363	382	472	finally
    //   390	400	472	finally
    //   400	402	472	finally
    //   406	412	472	finally
    //   420	430	472	finally
    //   430	449	472	finally
    //   460	463	472	finally
    //   466	469	472	finally
    //   473	476	472	finally
  }
  
  public <T> void a(T paramT)
  {
    a(paramT, false);
  }
  
  public void a(Object paramObject, String paramString)
  {
    synchronized (c)
    {
      List localList = b(paramString, paramObject.getClass());
      if ((localList != null) && (localList.size() != 0)) {
        a(paramString, paramObject);
      } else {
        a(paramObject);
      }
      return;
    }
  }
  
  /* Error */
  public <T> void a(T paramT, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 53	com/amap/api/mapcore2d/dm:c	Lcom/amap/api/mapcore2d/dl;
    //   4: astore_3
    //   5: aload_3
    //   6: monitorenter
    //   7: aload_0
    //   8: aload_0
    //   9: iload_2
    //   10: invokespecial 380	com/amap/api/mapcore2d/dm:b	(Z)Landroid/database/sqlite/SQLiteDatabase;
    //   13: putfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   16: aload_0
    //   17: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   20: ifnonnull +6 -> 26
    //   23: aload_3
    //   24: monitorexit
    //   25: return
    //   26: aload_0
    //   27: aload_0
    //   28: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   31: aload_1
    //   32: invokespecial 382	com/amap/api/mapcore2d/dm:a	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V
    //   35: aload_0
    //   36: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   39: ifnull +50 -> 89
    //   42: aload_0
    //   43: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   46: invokevirtual 325	android/database/sqlite/SQLiteDatabase:close	()V
    //   49: aload_0
    //   50: aconst_null
    //   51: putfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   54: goto +35 -> 89
    //   57: astore_1
    //   58: goto +34 -> 92
    //   61: astore_1
    //   62: aload_1
    //   63: ldc_w 347
    //   66: ldc_w 384
    //   69: invokestatic 94	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   72: aload_0
    //   73: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   76: ifnull +13 -> 89
    //   79: aload_0
    //   80: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   83: invokevirtual 325	android/database/sqlite/SQLiteDatabase:close	()V
    //   86: goto -37 -> 49
    //   89: aload_3
    //   90: monitorexit
    //   91: return
    //   92: aload_0
    //   93: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   96: ifnull +15 -> 111
    //   99: aload_0
    //   100: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   103: invokevirtual 325	android/database/sqlite/SQLiteDatabase:close	()V
    //   106: aload_0
    //   107: aconst_null
    //   108: putfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   111: aload_1
    //   112: athrow
    //   113: astore_1
    //   114: aload_3
    //   115: monitorexit
    //   116: aload_1
    //   117: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	118	0	this	dm
    //   0	118	1	paramT	T
    //   0	118	2	paramBoolean	boolean
    //   4	111	3	localDl	dl
    // Exception table:
    //   from	to	target	type
    //   26	35	57	finally
    //   62	72	57	finally
    //   26	35	61	java/lang/Throwable
    //   7	25	113	finally
    //   35	49	113	finally
    //   49	54	113	finally
    //   72	86	113	finally
    //   89	91	113	finally
    //   92	111	113	finally
    //   111	113	113	finally
    //   114	116	113	finally
  }
  
  /* Error */
  public <T> void a(String paramString, Class<T> paramClass)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 53	com/amap/api/mapcore2d/dm:c	Lcom/amap/api/mapcore2d/dl;
    //   4: astore_3
    //   5: aload_3
    //   6: monitorenter
    //   7: aload_0
    //   8: aload_0
    //   9: aload_2
    //   10: invokespecial 253	com/amap/api/mapcore2d/dm:b	(Ljava/lang/Class;)Lcom/amap/api/mapcore2d/dn;
    //   13: invokespecial 255	com/amap/api/mapcore2d/dm:a	(Lcom/amap/api/mapcore2d/dn;)Ljava/lang/String;
    //   16: astore_2
    //   17: aload_2
    //   18: invokestatic 261	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   21: ifeq +6 -> 27
    //   24: aload_3
    //   25: monitorexit
    //   26: return
    //   27: aload_0
    //   28: aload_0
    //   29: iconst_0
    //   30: invokespecial 380	com/amap/api/mapcore2d/dm:b	(Z)Landroid/database/sqlite/SQLiteDatabase;
    //   33: putfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   36: aload_0
    //   37: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   40: ifnonnull +6 -> 46
    //   43: aload_3
    //   44: monitorexit
    //   45: return
    //   46: aload_0
    //   47: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   50: aload_2
    //   51: aload_1
    //   52: aconst_null
    //   53: invokevirtual 390	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   56: pop
    //   57: aload_0
    //   58: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   61: ifnull +50 -> 111
    //   64: aload_0
    //   65: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   68: invokevirtual 325	android/database/sqlite/SQLiteDatabase:close	()V
    //   71: aload_0
    //   72: aconst_null
    //   73: putfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   76: goto +35 -> 111
    //   79: astore_1
    //   80: goto +34 -> 114
    //   83: astore_1
    //   84: aload_1
    //   85: ldc_w 347
    //   88: ldc_w 392
    //   91: invokestatic 94	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   94: aload_0
    //   95: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   98: ifnull +13 -> 111
    //   101: aload_0
    //   102: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   105: invokevirtual 325	android/database/sqlite/SQLiteDatabase:close	()V
    //   108: goto -37 -> 71
    //   111: aload_3
    //   112: monitorexit
    //   113: return
    //   114: aload_0
    //   115: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   118: ifnull +15 -> 133
    //   121: aload_0
    //   122: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   125: invokevirtual 325	android/database/sqlite/SQLiteDatabase:close	()V
    //   128: aload_0
    //   129: aconst_null
    //   130: putfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   133: aload_1
    //   134: athrow
    //   135: astore_1
    //   136: aload_3
    //   137: monitorexit
    //   138: aload_1
    //   139: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	140	0	this	dm
    //   0	140	1	paramString	String
    //   0	140	2	paramClass	Class<T>
    //   4	133	3	localDl	dl
    // Exception table:
    //   from	to	target	type
    //   46	57	79	finally
    //   84	94	79	finally
    //   46	57	83	java/lang/Throwable
    //   7	26	135	finally
    //   27	45	135	finally
    //   57	71	135	finally
    //   71	76	135	finally
    //   94	108	135	finally
    //   111	113	135	finally
    //   114	133	135	finally
    //   133	135	135	finally
    //   136	138	135	finally
  }
  
  public <T> void a(String paramString, Object paramObject)
  {
    a(paramString, paramObject, false);
  }
  
  /* Error */
  public <T> void a(String paramString, Object paramObject, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 53	com/amap/api/mapcore2d/dm:c	Lcom/amap/api/mapcore2d/dl;
    //   4: astore 4
    //   6: aload 4
    //   8: monitorenter
    //   9: aload_2
    //   10: ifnonnull +7 -> 17
    //   13: aload 4
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: aload_2
    //   19: invokevirtual 61	java/lang/Object:getClass	()Ljava/lang/Class;
    //   22: invokespecial 253	com/amap/api/mapcore2d/dm:b	(Ljava/lang/Class;)Lcom/amap/api/mapcore2d/dn;
    //   25: astore 6
    //   27: aload_0
    //   28: aload 6
    //   30: invokespecial 255	com/amap/api/mapcore2d/dm:a	(Lcom/amap/api/mapcore2d/dn;)Ljava/lang/String;
    //   33: astore 5
    //   35: aload 5
    //   37: invokestatic 261	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   40: ifeq +7 -> 47
    //   43: aload 4
    //   45: monitorexit
    //   46: return
    //   47: aload_0
    //   48: aload_2
    //   49: aload 6
    //   51: invokespecial 263	com/amap/api/mapcore2d/dm:a	(Ljava/lang/Object;Lcom/amap/api/mapcore2d/dn;)Landroid/content/ContentValues;
    //   54: astore_2
    //   55: aload_2
    //   56: ifnonnull +7 -> 63
    //   59: aload 4
    //   61: monitorexit
    //   62: return
    //   63: aload_0
    //   64: aload_0
    //   65: iload_3
    //   66: invokespecial 380	com/amap/api/mapcore2d/dm:b	(Z)Landroid/database/sqlite/SQLiteDatabase;
    //   69: putfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   72: aload_0
    //   73: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   76: ifnonnull +7 -> 83
    //   79: aload 4
    //   81: monitorexit
    //   82: return
    //   83: aload_0
    //   84: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   87: aload 5
    //   89: aload_2
    //   90: aload_1
    //   91: aconst_null
    //   92: invokevirtual 401	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   95: pop
    //   96: aload_0
    //   97: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   100: ifnull +61 -> 161
    //   103: aload_0
    //   104: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   107: invokevirtual 325	android/database/sqlite/SQLiteDatabase:close	()V
    //   110: aload_0
    //   111: aconst_null
    //   112: putfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   115: goto +46 -> 161
    //   118: astore_1
    //   119: goto +46 -> 165
    //   122: astore_1
    //   123: iload_3
    //   124: ifne +16 -> 140
    //   127: aload_1
    //   128: ldc_w 347
    //   131: ldc_w 403
    //   134: invokestatic 94	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   137: goto +7 -> 144
    //   140: aload_1
    //   141: invokevirtual 51	java/lang/Throwable:printStackTrace	()V
    //   144: aload_0
    //   145: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   148: ifnull +13 -> 161
    //   151: aload_0
    //   152: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   155: invokevirtual 325	android/database/sqlite/SQLiteDatabase:close	()V
    //   158: goto -48 -> 110
    //   161: aload 4
    //   163: monitorexit
    //   164: return
    //   165: aload_0
    //   166: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   169: ifnull +15 -> 184
    //   172: aload_0
    //   173: getfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   176: invokevirtual 325	android/database/sqlite/SQLiteDatabase:close	()V
    //   179: aload_0
    //   180: aconst_null
    //   181: putfield 81	com/amap/api/mapcore2d/dm:b	Landroid/database/sqlite/SQLiteDatabase;
    //   184: aload_1
    //   185: athrow
    //   186: aload 4
    //   188: monitorexit
    //   189: aload_1
    //   190: athrow
    //   191: astore_1
    //   192: goto -6 -> 186
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	195	0	this	dm
    //   0	195	1	paramString	String
    //   0	195	2	paramObject	Object
    //   0	195	3	paramBoolean	boolean
    //   4	183	4	localDl	dl
    //   33	55	5	str	String
    //   25	25	6	localDn	dn
    // Exception table:
    //   from	to	target	type
    //   83	96	118	finally
    //   127	137	118	finally
    //   140	144	118	finally
    //   83	96	122	java/lang/Throwable
    //   13	16	191	finally
    //   17	46	191	finally
    //   47	55	191	finally
    //   59	62	191	finally
    //   63	82	191	finally
    //   96	110	191	finally
    //   110	115	191	finally
    //   144	158	191	finally
    //   161	164	191	finally
    //   165	184	191	finally
    //   184	186	191	finally
    //   186	189	191	finally
  }
  
  public <T> List<T> b(String paramString, Class<T> paramClass)
  {
    return a(paramString, paramClass, false);
  }
}
