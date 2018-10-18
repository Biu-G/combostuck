package android.support.v7.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class ActivityChooserModel
  extends DataSetObservable
{
  static final String a = "ActivityChooserModel";
  private static final Object e = new Object();
  private static final Map<String, ActivityChooserModel> f = new HashMap();
  final Context b;
  final String c;
  boolean d = true;
  private final Object g = new Object();
  private final List<ActivityResolveInfo> h = new ArrayList();
  private final List<HistoricalRecord> i = new ArrayList();
  private Intent j;
  private ActivitySorter k = new a();
  private int l = 50;
  private boolean m = false;
  private boolean n = true;
  private boolean o = false;
  private OnChooseActivityListener p;
  
  private ActivityChooserModel(Context paramContext, String paramString)
  {
    b = paramContext.getApplicationContext();
    if ((!TextUtils.isEmpty(paramString)) && (!paramString.endsWith(".xml")))
    {
      paramContext = new StringBuilder();
      paramContext.append(paramString);
      paramContext.append(".xml");
      c = paramContext.toString();
      return;
    }
    c = paramString;
  }
  
  public static ActivityChooserModel a(Context paramContext, String paramString)
  {
    synchronized (e)
    {
      ActivityChooserModel localActivityChooserModel2 = (ActivityChooserModel)f.get(paramString);
      ActivityChooserModel localActivityChooserModel1 = localActivityChooserModel2;
      if (localActivityChooserModel2 == null)
      {
        localActivityChooserModel1 = new ActivityChooserModel(paramContext, paramString);
        f.put(paramString, localActivityChooserModel1);
      }
      return localActivityChooserModel1;
    }
  }
  
  private boolean a(HistoricalRecord paramHistoricalRecord)
  {
    boolean bool = i.add(paramHistoricalRecord);
    if (bool)
    {
      n = true;
      i();
      d();
      f();
      notifyChanged();
    }
    return bool;
  }
  
  private void d()
  {
    if (m)
    {
      if (!n) {
        return;
      }
      n = false;
      if (!TextUtils.isEmpty(c)) {
        new b().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[] { new ArrayList(i), c });
      }
      return;
    }
    throw new IllegalStateException("No preceding call to #readHistoricalData");
  }
  
  private void e()
  {
    boolean bool1 = g();
    boolean bool2 = h();
    i();
    if ((bool1 | bool2))
    {
      f();
      notifyChanged();
    }
  }
  
  private boolean f()
  {
    if ((k != null) && (j != null) && (!h.isEmpty()) && (!i.isEmpty()))
    {
      k.sort(j, h, Collections.unmodifiableList(i));
      return true;
    }
    return false;
  }
  
  private boolean g()
  {
    boolean bool = o;
    int i1 = 0;
    if ((bool) && (j != null))
    {
      o = false;
      h.clear();
      List localList = b.getPackageManager().queryIntentActivities(j, 0);
      int i2 = localList.size();
      while (i1 < i2)
      {
        ResolveInfo localResolveInfo = (ResolveInfo)localList.get(i1);
        h.add(new ActivityResolveInfo(localResolveInfo));
        i1 += 1;
      }
      return true;
    }
    return false;
  }
  
  private boolean h()
  {
    if ((d) && (n) && (!TextUtils.isEmpty(c)))
    {
      d = false;
      m = true;
      j();
      return true;
    }
    return false;
  }
  
  private void i()
  {
    int i2 = i.size() - l;
    if (i2 <= 0) {
      return;
    }
    n = true;
    int i1 = 0;
    while (i1 < i2)
    {
      HistoricalRecord localHistoricalRecord = (HistoricalRecord)i.remove(0);
      i1 += 1;
    }
  }
  
  /* Error */
  private void j()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 101	android/support/v7/widget/ActivityChooserModel:b	Landroid/content/Context;
    //   4: aload_0
    //   5: getfield 128	android/support/v7/widget/ActivityChooserModel:c	Ljava/lang/String;
    //   8: invokevirtual 239	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore_2
    //   12: invokestatic 245	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   15: astore_3
    //   16: aload_3
    //   17: aload_2
    //   18: ldc -9
    //   20: invokeinterface 253 3 0
    //   25: iconst_0
    //   26: istore_1
    //   27: iload_1
    //   28: iconst_1
    //   29: if_icmpeq +18 -> 47
    //   32: iload_1
    //   33: iconst_2
    //   34: if_icmpeq +13 -> 47
    //   37: aload_3
    //   38: invokeinterface 256 1 0
    //   43: istore_1
    //   44: goto -17 -> 27
    //   47: ldc_w 258
    //   50: aload_3
    //   51: invokeinterface 261 1 0
    //   56: invokevirtual 264	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   59: ifeq +130 -> 189
    //   62: aload_0
    //   63: getfield 80	android/support/v7/widget/ActivityChooserModel:i	Ljava/util/List;
    //   66: astore 4
    //   68: aload 4
    //   70: invokeinterface 202 1 0
    //   75: aload_3
    //   76: invokeinterface 256 1 0
    //   81: istore_1
    //   82: iload_1
    //   83: iconst_1
    //   84: if_icmpne +12 -> 96
    //   87: aload_2
    //   88: ifnull +222 -> 310
    //   91: aload_2
    //   92: invokevirtual 269	java/io/FileInputStream:close	()V
    //   95: return
    //   96: iload_1
    //   97: iconst_3
    //   98: if_icmpeq -23 -> 75
    //   101: iload_1
    //   102: iconst_4
    //   103: if_icmpne +6 -> 109
    //   106: goto -31 -> 75
    //   109: ldc_w 271
    //   112: aload_3
    //   113: invokeinterface 261 1 0
    //   118: invokevirtual 264	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   121: ifeq +57 -> 178
    //   124: aload 4
    //   126: new 15	android/support/v7/widget/ActivityChooserModel$HistoricalRecord
    //   129: dup
    //   130: aload_3
    //   131: aconst_null
    //   132: ldc_w 273
    //   135: invokeinterface 277 3 0
    //   140: aload_3
    //   141: aconst_null
    //   142: ldc_w 279
    //   145: invokeinterface 277 3 0
    //   150: invokestatic 285	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   153: aload_3
    //   154: aconst_null
    //   155: ldc_w 287
    //   158: invokeinterface 277 3 0
    //   163: invokestatic 293	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   166: invokespecial 296	android/support/v7/widget/ActivityChooserModel$HistoricalRecord:<init>	(Ljava/lang/String;JF)V
    //   169: invokeinterface 148 2 0
    //   174: pop
    //   175: goto -100 -> 75
    //   178: new 233	org/xmlpull/v1/XmlPullParserException
    //   181: dup
    //   182: ldc_w 298
    //   185: invokespecial 299	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   188: athrow
    //   189: new 233	org/xmlpull/v1/XmlPullParserException
    //   192: dup
    //   193: ldc_w 301
    //   196: invokespecial 299	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   199: athrow
    //   200: astore_3
    //   201: goto +110 -> 311
    //   204: astore_3
    //   205: getstatic 303	android/support/v7/widget/ActivityChooserModel:a	Ljava/lang/String;
    //   208: astore 4
    //   210: new 117	java/lang/StringBuilder
    //   213: dup
    //   214: invokespecial 118	java/lang/StringBuilder:<init>	()V
    //   217: astore 5
    //   219: aload 5
    //   221: ldc_w 305
    //   224: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   227: pop
    //   228: aload 5
    //   230: aload_0
    //   231: getfield 128	android/support/v7/widget/ActivityChooserModel:c	Ljava/lang/String;
    //   234: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   237: pop
    //   238: aload 4
    //   240: aload 5
    //   242: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   245: aload_3
    //   246: invokestatic 310	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   249: pop
    //   250: aload_2
    //   251: ifnull +59 -> 310
    //   254: goto -163 -> 91
    //   257: astore_3
    //   258: getstatic 303	android/support/v7/widget/ActivityChooserModel:a	Ljava/lang/String;
    //   261: astore 4
    //   263: new 117	java/lang/StringBuilder
    //   266: dup
    //   267: invokespecial 118	java/lang/StringBuilder:<init>	()V
    //   270: astore 5
    //   272: aload 5
    //   274: ldc_w 305
    //   277: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   280: pop
    //   281: aload 5
    //   283: aload_0
    //   284: getfield 128	android/support/v7/widget/ActivityChooserModel:c	Ljava/lang/String;
    //   287: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: pop
    //   291: aload 4
    //   293: aload 5
    //   295: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   298: aload_3
    //   299: invokestatic 310	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   302: pop
    //   303: aload_2
    //   304: ifnull +6 -> 310
    //   307: goto -216 -> 91
    //   310: return
    //   311: aload_2
    //   312: ifnull +7 -> 319
    //   315: aload_2
    //   316: invokevirtual 269	java/io/FileInputStream:close	()V
    //   319: aload_3
    //   320: athrow
    //   321: astore_2
    //   322: return
    //   323: astore_2
    //   324: return
    //   325: astore_2
    //   326: goto -7 -> 319
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	329	0	this	ActivityChooserModel
    //   26	78	1	i1	int
    //   11	305	2	localFileInputStream	java.io.FileInputStream
    //   321	1	2	localFileNotFoundException	java.io.FileNotFoundException
    //   323	1	2	localIOException1	java.io.IOException
    //   325	1	2	localIOException2	java.io.IOException
    //   15	139	3	localXmlPullParser	org.xmlpull.v1.XmlPullParser
    //   200	1	3	localObject1	Object
    //   204	42	3	localIOException3	java.io.IOException
    //   257	63	3	localXmlPullParserException	org.xmlpull.v1.XmlPullParserException
    //   66	226	4	localObject2	Object
    //   217	77	5	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   12	25	200	finally
    //   37	44	200	finally
    //   47	75	200	finally
    //   75	82	200	finally
    //   109	175	200	finally
    //   178	189	200	finally
    //   189	200	200	finally
    //   205	250	200	finally
    //   258	303	200	finally
    //   12	25	204	java/io/IOException
    //   37	44	204	java/io/IOException
    //   47	75	204	java/io/IOException
    //   75	82	204	java/io/IOException
    //   109	175	204	java/io/IOException
    //   178	189	204	java/io/IOException
    //   189	200	204	java/io/IOException
    //   12	25	257	org/xmlpull/v1/XmlPullParserException
    //   37	44	257	org/xmlpull/v1/XmlPullParserException
    //   47	75	257	org/xmlpull/v1/XmlPullParserException
    //   75	82	257	org/xmlpull/v1/XmlPullParserException
    //   109	175	257	org/xmlpull/v1/XmlPullParserException
    //   178	189	257	org/xmlpull/v1/XmlPullParserException
    //   189	200	257	org/xmlpull/v1/XmlPullParserException
    //   0	12	321	java/io/FileNotFoundException
    //   91	95	323	java/io/IOException
    //   315	319	325	java/io/IOException
  }
  
  public int a()
  {
    synchronized (g)
    {
      e();
      int i1 = h.size();
      return i1;
    }
  }
  
  public int a(ResolveInfo paramResolveInfo)
  {
    for (;;)
    {
      int i1;
      synchronized (g)
      {
        e();
        List localList = h;
        int i2 = localList.size();
        i1 = 0;
        if (i1 < i2)
        {
          if (getresolveInfo == paramResolveInfo) {
            return i1;
          }
        }
        else {
          return -1;
        }
      }
      i1 += 1;
    }
  }
  
  public ResolveInfo a(int paramInt)
  {
    synchronized (g)
    {
      e();
      ResolveInfo localResolveInfo = h.get(paramInt)).resolveInfo;
      return localResolveInfo;
    }
  }
  
  public void a(Intent paramIntent)
  {
    synchronized (g)
    {
      if (j == paramIntent) {
        return;
      }
      j = paramIntent;
      o = true;
      e();
      return;
    }
  }
  
  public void a(OnChooseActivityListener paramOnChooseActivityListener)
  {
    synchronized (g)
    {
      p = paramOnChooseActivityListener;
      return;
    }
  }
  
  public Intent b(int paramInt)
  {
    synchronized (g)
    {
      if (j == null) {
        return null;
      }
      e();
      Object localObject2 = (ActivityResolveInfo)h.get(paramInt);
      localObject2 = new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
      Intent localIntent1 = new Intent(j);
      localIntent1.setComponent((ComponentName)localObject2);
      if (p != null)
      {
        Intent localIntent2 = new Intent(localIntent1);
        if (p.onChooseActivity(this, localIntent2)) {
          return null;
        }
      }
      a(new HistoricalRecord((ComponentName)localObject2, System.currentTimeMillis(), 1.0F));
      return localIntent1;
    }
  }
  
  public ResolveInfo b()
  {
    synchronized (g)
    {
      e();
      if (!h.isEmpty())
      {
        ResolveInfo localResolveInfo = h.get(0)).resolveInfo;
        return localResolveInfo;
      }
      return null;
    }
  }
  
  public int c()
  {
    synchronized (g)
    {
      e();
      int i1 = i.size();
      return i1;
    }
  }
  
  public void c(int paramInt)
  {
    for (;;)
    {
      synchronized (g)
      {
        e();
        ActivityResolveInfo localActivityResolveInfo1 = (ActivityResolveInfo)h.get(paramInt);
        ActivityResolveInfo localActivityResolveInfo2 = (ActivityResolveInfo)h.get(0);
        if (localActivityResolveInfo2 != null)
        {
          f1 = weight - weight + 5.0F;
          a(new HistoricalRecord(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name), System.currentTimeMillis(), f1));
          return;
        }
      }
      float f1 = 1.0F;
    }
  }
  
  public static abstract interface ActivityChooserModelClient
  {
    public abstract void setActivityChooserModel(ActivityChooserModel paramActivityChooserModel);
  }
  
  public static final class ActivityResolveInfo
    implements Comparable<ActivityResolveInfo>
  {
    public final ResolveInfo resolveInfo;
    public float weight;
    
    public ActivityResolveInfo(ResolveInfo paramResolveInfo)
    {
      resolveInfo = paramResolveInfo;
    }
    
    public int compareTo(ActivityResolveInfo paramActivityResolveInfo)
    {
      return Float.floatToIntBits(weight) - Float.floatToIntBits(weight);
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (ActivityResolveInfo)paramObject;
      return Float.floatToIntBits(weight) == Float.floatToIntBits(weight);
    }
    
    public int hashCode()
    {
      return Float.floatToIntBits(weight) + 31;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("[");
      localStringBuilder.append("resolveInfo:");
      localStringBuilder.append(resolveInfo.toString());
      localStringBuilder.append("; weight:");
      localStringBuilder.append(new BigDecimal(weight));
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
  }
  
  public static abstract interface ActivitySorter
  {
    public abstract void sort(Intent paramIntent, List<ActivityChooserModel.ActivityResolveInfo> paramList, List<ActivityChooserModel.HistoricalRecord> paramList1);
  }
  
  public static final class HistoricalRecord
  {
    public final ComponentName activity;
    public final long time;
    public final float weight;
    
    public HistoricalRecord(ComponentName paramComponentName, long paramLong, float paramFloat)
    {
      activity = paramComponentName;
      time = paramLong;
      weight = paramFloat;
    }
    
    public HistoricalRecord(String paramString, long paramLong, float paramFloat)
    {
      this(ComponentName.unflattenFromString(paramString), paramLong, paramFloat);
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (HistoricalRecord)paramObject;
      if (activity == null)
      {
        if (activity != null) {
          return false;
        }
      }
      else if (!activity.equals(activity)) {
        return false;
      }
      if (time != time) {
        return false;
      }
      return Float.floatToIntBits(weight) == Float.floatToIntBits(weight);
    }
    
    public int hashCode()
    {
      int i;
      if (activity == null) {
        i = 0;
      } else {
        i = activity.hashCode();
      }
      return ((i + 31) * 31 + (int)(time ^ time >>> 32)) * 31 + Float.floatToIntBits(weight);
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("[");
      localStringBuilder.append("; activity:");
      localStringBuilder.append(activity);
      localStringBuilder.append("; time:");
      localStringBuilder.append(time);
      localStringBuilder.append("; weight:");
      localStringBuilder.append(new BigDecimal(weight));
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
  }
  
  public static abstract interface OnChooseActivityListener
  {
    public abstract boolean onChooseActivity(ActivityChooserModel paramActivityChooserModel, Intent paramIntent);
  }
  
  private static final class a
    implements ActivityChooserModel.ActivitySorter
  {
    private final Map<ComponentName, ActivityChooserModel.ActivityResolveInfo> a = new HashMap();
    
    a() {}
    
    public void sort(Intent paramIntent, List<ActivityChooserModel.ActivityResolveInfo> paramList, List<ActivityChooserModel.HistoricalRecord> paramList1)
    {
      paramIntent = a;
      paramIntent.clear();
      int j = paramList.size();
      int i = 0;
      Object localObject;
      while (i < j)
      {
        localObject = (ActivityChooserModel.ActivityResolveInfo)paramList.get(i);
        weight = 0.0F;
        paramIntent.put(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name), localObject);
        i += 1;
      }
      i = paramList1.size() - 1;
      float f2;
      for (float f1 = 1.0F; i >= 0; f1 = f2)
      {
        localObject = (ActivityChooserModel.HistoricalRecord)paramList1.get(i);
        ActivityChooserModel.ActivityResolveInfo localActivityResolveInfo = (ActivityChooserModel.ActivityResolveInfo)paramIntent.get(activity);
        f2 = f1;
        if (localActivityResolveInfo != null)
        {
          weight += weight * f1;
          f2 = f1 * 0.95F;
        }
        i -= 1;
      }
      Collections.sort(paramList);
    }
  }
  
  private final class b
    extends AsyncTask<Object, Void, Void>
  {
    b() {}
    
    /* Error */
    public Void a(Object... paramVarArgs)
    {
      // Byte code:
      //   0: aload_1
      //   1: iconst_0
      //   2: aaload
      //   3: checkcast 29	java/util/List
      //   6: astore 4
      //   8: aload_1
      //   9: iconst_1
      //   10: aaload
      //   11: checkcast 31	java/lang/String
      //   14: astore 5
      //   16: aload_0
      //   17: getfield 14	android/support/v7/widget/ActivityChooserModel$b:a	Landroid/support/v7/widget/ActivityChooserModel;
      //   20: getfield 34	android/support/v7/widget/ActivityChooserModel:b	Landroid/content/Context;
      //   23: aload 5
      //   25: iconst_0
      //   26: invokevirtual 40	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
      //   29: astore_1
      //   30: invokestatic 46	android/util/Xml:newSerializer	()Lorg/xmlpull/v1/XmlSerializer;
      //   33: astore 5
      //   35: aload 5
      //   37: aload_1
      //   38: aconst_null
      //   39: invokeinterface 52 3 0
      //   44: aload 5
      //   46: ldc 54
      //   48: iconst_1
      //   49: invokestatic 60	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
      //   52: invokeinterface 64 3 0
      //   57: aload 5
      //   59: aconst_null
      //   60: ldc 66
      //   62: invokeinterface 70 3 0
      //   67: pop
      //   68: aload 4
      //   70: invokeinterface 74 1 0
      //   75: istore_3
      //   76: iconst_0
      //   77: istore_2
      //   78: iload_2
      //   79: iload_3
      //   80: if_icmpge +102 -> 182
      //   83: aload 4
      //   85: iconst_0
      //   86: invokeinterface 78 2 0
      //   91: checkcast 80	android/support/v7/widget/ActivityChooserModel$HistoricalRecord
      //   94: astore 6
      //   96: aload 5
      //   98: aconst_null
      //   99: ldc 82
      //   101: invokeinterface 70 3 0
      //   106: pop
      //   107: aload 5
      //   109: aconst_null
      //   110: ldc 84
      //   112: aload 6
      //   114: getfield 87	android/support/v7/widget/ActivityChooserModel$HistoricalRecord:activity	Landroid/content/ComponentName;
      //   117: invokevirtual 93	android/content/ComponentName:flattenToString	()Ljava/lang/String;
      //   120: invokeinterface 97 4 0
      //   125: pop
      //   126: aload 5
      //   128: aconst_null
      //   129: ldc 99
      //   131: aload 6
      //   133: getfield 102	android/support/v7/widget/ActivityChooserModel$HistoricalRecord:time	J
      //   136: invokestatic 105	java/lang/String:valueOf	(J)Ljava/lang/String;
      //   139: invokeinterface 97 4 0
      //   144: pop
      //   145: aload 5
      //   147: aconst_null
      //   148: ldc 107
      //   150: aload 6
      //   152: getfield 110	android/support/v7/widget/ActivityChooserModel$HistoricalRecord:weight	F
      //   155: invokestatic 113	java/lang/String:valueOf	(F)Ljava/lang/String;
      //   158: invokeinterface 97 4 0
      //   163: pop
      //   164: aload 5
      //   166: aconst_null
      //   167: ldc 82
      //   169: invokeinterface 116 3 0
      //   174: pop
      //   175: iload_2
      //   176: iconst_1
      //   177: iadd
      //   178: istore_2
      //   179: goto -101 -> 78
      //   182: aload 5
      //   184: aconst_null
      //   185: ldc 66
      //   187: invokeinterface 116 3 0
      //   192: pop
      //   193: aload 5
      //   195: invokeinterface 119 1 0
      //   200: aload_0
      //   201: getfield 14	android/support/v7/widget/ActivityChooserModel$b:a	Landroid/support/v7/widget/ActivityChooserModel;
      //   204: iconst_1
      //   205: putfield 123	android/support/v7/widget/ActivityChooserModel:d	Z
      //   208: aload_1
      //   209: ifnull +209 -> 418
      //   212: aload_1
      //   213: invokevirtual 128	java/io/FileOutputStream:close	()V
      //   216: aconst_null
      //   217: areturn
      //   218: astore 4
      //   220: goto +200 -> 420
      //   223: astore 4
      //   225: getstatic 131	android/support/v7/widget/ActivityChooserModel:a	Ljava/lang/String;
      //   228: astore 5
      //   230: new 133	java/lang/StringBuilder
      //   233: dup
      //   234: invokespecial 134	java/lang/StringBuilder:<init>	()V
      //   237: astore 6
      //   239: aload 6
      //   241: ldc -120
      //   243: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   246: pop
      //   247: aload 6
      //   249: aload_0
      //   250: getfield 14	android/support/v7/widget/ActivityChooserModel$b:a	Landroid/support/v7/widget/ActivityChooserModel;
      //   253: getfield 143	android/support/v7/widget/ActivityChooserModel:c	Ljava/lang/String;
      //   256: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   259: pop
      //   260: aload 5
      //   262: aload 6
      //   264: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   267: aload 4
      //   269: invokestatic 152	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   272: pop
      //   273: aload_0
      //   274: getfield 14	android/support/v7/widget/ActivityChooserModel$b:a	Landroid/support/v7/widget/ActivityChooserModel;
      //   277: iconst_1
      //   278: putfield 123	android/support/v7/widget/ActivityChooserModel:d	Z
      //   281: aload_1
      //   282: ifnull +136 -> 418
      //   285: goto -73 -> 212
      //   288: astore 4
      //   290: getstatic 131	android/support/v7/widget/ActivityChooserModel:a	Ljava/lang/String;
      //   293: astore 5
      //   295: new 133	java/lang/StringBuilder
      //   298: dup
      //   299: invokespecial 134	java/lang/StringBuilder:<init>	()V
      //   302: astore 6
      //   304: aload 6
      //   306: ldc -120
      //   308: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   311: pop
      //   312: aload 6
      //   314: aload_0
      //   315: getfield 14	android/support/v7/widget/ActivityChooserModel$b:a	Landroid/support/v7/widget/ActivityChooserModel;
      //   318: getfield 143	android/support/v7/widget/ActivityChooserModel:c	Ljava/lang/String;
      //   321: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   324: pop
      //   325: aload 5
      //   327: aload 6
      //   329: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   332: aload 4
      //   334: invokestatic 152	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   337: pop
      //   338: aload_0
      //   339: getfield 14	android/support/v7/widget/ActivityChooserModel$b:a	Landroid/support/v7/widget/ActivityChooserModel;
      //   342: iconst_1
      //   343: putfield 123	android/support/v7/widget/ActivityChooserModel:d	Z
      //   346: aload_1
      //   347: ifnull +71 -> 418
      //   350: goto -138 -> 212
      //   353: astore 4
      //   355: getstatic 131	android/support/v7/widget/ActivityChooserModel:a	Ljava/lang/String;
      //   358: astore 5
      //   360: new 133	java/lang/StringBuilder
      //   363: dup
      //   364: invokespecial 134	java/lang/StringBuilder:<init>	()V
      //   367: astore 6
      //   369: aload 6
      //   371: ldc -120
      //   373: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   376: pop
      //   377: aload 6
      //   379: aload_0
      //   380: getfield 14	android/support/v7/widget/ActivityChooserModel$b:a	Landroid/support/v7/widget/ActivityChooserModel;
      //   383: getfield 143	android/support/v7/widget/ActivityChooserModel:c	Ljava/lang/String;
      //   386: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   389: pop
      //   390: aload 5
      //   392: aload 6
      //   394: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   397: aload 4
      //   399: invokestatic 152	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   402: pop
      //   403: aload_0
      //   404: getfield 14	android/support/v7/widget/ActivityChooserModel$b:a	Landroid/support/v7/widget/ActivityChooserModel;
      //   407: iconst_1
      //   408: putfield 123	android/support/v7/widget/ActivityChooserModel:d	Z
      //   411: aload_1
      //   412: ifnull +6 -> 418
      //   415: goto -203 -> 212
      //   418: aconst_null
      //   419: areturn
      //   420: aload_0
      //   421: getfield 14	android/support/v7/widget/ActivityChooserModel$b:a	Landroid/support/v7/widget/ActivityChooserModel;
      //   424: iconst_1
      //   425: putfield 123	android/support/v7/widget/ActivityChooserModel:d	Z
      //   428: aload_1
      //   429: ifnull +7 -> 436
      //   432: aload_1
      //   433: invokevirtual 128	java/io/FileOutputStream:close	()V
      //   436: aload 4
      //   438: athrow
      //   439: astore_1
      //   440: getstatic 131	android/support/v7/widget/ActivityChooserModel:a	Ljava/lang/String;
      //   443: astore 4
      //   445: new 133	java/lang/StringBuilder
      //   448: dup
      //   449: invokespecial 134	java/lang/StringBuilder:<init>	()V
      //   452: astore 6
      //   454: aload 6
      //   456: ldc -120
      //   458: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   461: pop
      //   462: aload 6
      //   464: aload 5
      //   466: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   469: pop
      //   470: aload 4
      //   472: aload 6
      //   474: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   477: aload_1
      //   478: invokestatic 152	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   481: pop
      //   482: aconst_null
      //   483: areturn
      //   484: astore_1
      //   485: aconst_null
      //   486: areturn
      //   487: astore_1
      //   488: goto -52 -> 436
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	491	0	this	b
      //   0	491	1	paramVarArgs	Object[]
      //   77	102	2	i	int
      //   75	6	3	j	int
      //   6	78	4	localList	List
      //   218	1	4	localObject1	Object
      //   223	45	4	localIOException	java.io.IOException
      //   288	45	4	localIllegalStateException	IllegalStateException
      //   353	84	4	localIllegalArgumentException	IllegalArgumentException
      //   443	28	4	str	String
      //   14	451	5	localObject2	Object
      //   94	379	6	localObject3	Object
      // Exception table:
      //   from	to	target	type
      //   35	76	218	finally
      //   83	175	218	finally
      //   182	200	218	finally
      //   225	273	218	finally
      //   290	338	218	finally
      //   355	403	218	finally
      //   35	76	223	java/io/IOException
      //   83	175	223	java/io/IOException
      //   182	200	223	java/io/IOException
      //   35	76	288	java/lang/IllegalStateException
      //   83	175	288	java/lang/IllegalStateException
      //   182	200	288	java/lang/IllegalStateException
      //   35	76	353	java/lang/IllegalArgumentException
      //   83	175	353	java/lang/IllegalArgumentException
      //   182	200	353	java/lang/IllegalArgumentException
      //   16	30	439	java/io/FileNotFoundException
      //   212	216	484	java/io/IOException
      //   432	436	487	java/io/IOException
    }
  }
}
