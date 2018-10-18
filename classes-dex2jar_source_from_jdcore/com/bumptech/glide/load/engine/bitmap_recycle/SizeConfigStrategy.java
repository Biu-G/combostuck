package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.util.Util;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NavigableMap;
import java.util.Set;
import java.util.TreeMap;

@RequiresApi(19)
public class SizeConfigStrategy
  implements e
{
  private static final Bitmap.Config[] a;
  private static final Bitmap.Config[] b = a;
  private static final Bitmap.Config[] c = { Bitmap.Config.RGB_565 };
  private static final Bitmap.Config[] d = { Bitmap.Config.ARGB_4444 };
  private static final Bitmap.Config[] e = { Bitmap.Config.ALPHA_8 };
  private final b f = new b();
  private final d<a, Bitmap> g = new d();
  private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> h = new HashMap();
  
  static
  {
    Bitmap.Config[] arrayOfConfig2 = new Bitmap.Config[2];
    arrayOfConfig2[0] = Bitmap.Config.ARGB_8888;
    arrayOfConfig2[1] = null;
    Bitmap.Config[] arrayOfConfig1 = arrayOfConfig2;
    if (Build.VERSION.SDK_INT >= 26)
    {
      arrayOfConfig1 = (Bitmap.Config[])Arrays.copyOf(arrayOfConfig2, arrayOfConfig2.length + 1);
      arrayOfConfig1[(arrayOfConfig1.length - 1)] = Bitmap.Config.RGBA_F16;
    }
    a = arrayOfConfig1;
  }
  
  public SizeConfigStrategy() {}
  
  static String a(int paramInt, Bitmap.Config paramConfig)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append(paramInt);
    localStringBuilder.append("](");
    localStringBuilder.append(paramConfig);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  private NavigableMap<Integer, Integer> a(Bitmap.Config paramConfig)
  {
    NavigableMap localNavigableMap = (NavigableMap)h.get(paramConfig);
    Object localObject = localNavigableMap;
    if (localNavigableMap == null)
    {
      localObject = new TreeMap();
      h.put(paramConfig, localObject);
    }
    return localObject;
  }
  
  private void a(Integer paramInteger, Bitmap paramBitmap)
  {
    Object localObject = a(paramBitmap.getConfig());
    Integer localInteger = (Integer)((NavigableMap)localObject).get(paramInteger);
    if (localInteger != null)
    {
      if (localInteger.intValue() == 1)
      {
        ((NavigableMap)localObject).remove(paramInteger);
        return;
      }
      ((NavigableMap)localObject).put(paramInteger, Integer.valueOf(localInteger.intValue() - 1));
      return;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Tried to decrement empty size, size: ");
    ((StringBuilder)localObject).append(paramInteger);
    ((StringBuilder)localObject).append(", removed: ");
    ((StringBuilder)localObject).append(logBitmap(paramBitmap));
    ((StringBuilder)localObject).append(", this: ");
    ((StringBuilder)localObject).append(this);
    throw new NullPointerException(((StringBuilder)localObject).toString());
  }
  
  private a b(int paramInt, Bitmap.Config paramConfig)
  {
    a localA = f.a(paramInt, paramConfig);
    Bitmap.Config[] arrayOfConfig = b(paramConfig);
    int j = arrayOfConfig.length;
    int i = 0;
    while (i < j)
    {
      Bitmap.Config localConfig = arrayOfConfig[i];
      Integer localInteger = (Integer)a(localConfig).ceilingKey(Integer.valueOf(paramInt));
      if ((localInteger != null) && (localInteger.intValue() <= paramInt * 8))
      {
        if ((localInteger.intValue() == paramInt) && (localConfig == null ? paramConfig == null : localConfig.equals(paramConfig))) {
          break;
        }
        f.a(localA);
        return f.a(localInteger.intValue(), localConfig);
      }
      i += 1;
    }
    return localA;
  }
  
  private static Bitmap.Config[] b(Bitmap.Config paramConfig)
  {
    if ((Build.VERSION.SDK_INT >= 26) && (Bitmap.Config.RGBA_F16.equals(paramConfig))) {
      return b;
    }
    switch (1.a[paramConfig.ordinal()])
    {
    default: 
      return new Bitmap.Config[] { paramConfig };
    case 4: 
      return e;
    case 3: 
      return d;
    case 2: 
      return c;
    }
    return a;
  }
  
  @Nullable
  public Bitmap get(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    paramConfig = b(Util.getBitmapByteSize(paramInt1, paramInt2, paramConfig), paramConfig);
    Bitmap localBitmap = (Bitmap)g.a(paramConfig);
    if (localBitmap != null)
    {
      a(Integer.valueOf(a), localBitmap);
      if (localBitmap.getConfig() != null) {
        paramConfig = localBitmap.getConfig();
      } else {
        paramConfig = Bitmap.Config.ARGB_8888;
      }
      localBitmap.reconfigure(paramInt1, paramInt2, paramConfig);
    }
    return localBitmap;
  }
  
  public int getSize(Bitmap paramBitmap)
  {
    return Util.getBitmapByteSize(paramBitmap);
  }
  
  public String logBitmap(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return a(Util.getBitmapByteSize(paramInt1, paramInt2, paramConfig), paramConfig);
  }
  
  public String logBitmap(Bitmap paramBitmap)
  {
    return a(Util.getBitmapByteSize(paramBitmap), paramBitmap.getConfig());
  }
  
  public void put(Bitmap paramBitmap)
  {
    int i = Util.getBitmapByteSize(paramBitmap);
    a localA = f.a(i, paramBitmap.getConfig());
    g.a(localA, paramBitmap);
    paramBitmap = a(paramBitmap.getConfig());
    Integer localInteger = (Integer)paramBitmap.get(Integer.valueOf(a));
    int j = a;
    i = 1;
    if (localInteger != null) {
      i = 1 + localInteger.intValue();
    }
    paramBitmap.put(Integer.valueOf(j), Integer.valueOf(i));
  }
  
  @Nullable
  public Bitmap removeLast()
  {
    Bitmap localBitmap = (Bitmap)g.a();
    if (localBitmap != null) {
      a(Integer.valueOf(Util.getBitmapByteSize(localBitmap)), localBitmap);
    }
    return localBitmap;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SizeConfigStrategy{groupedMap=");
    localStringBuilder.append(g);
    localStringBuilder.append(", sortedSizes=(");
    Iterator localIterator = h.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuilder.append(localEntry.getKey());
      localStringBuilder.append('[');
      localStringBuilder.append(localEntry.getValue());
      localStringBuilder.append("], ");
    }
    if (!h.isEmpty()) {
      localStringBuilder.replace(localStringBuilder.length() - 2, localStringBuilder.length(), "");
    }
    localStringBuilder.append(")}");
    return localStringBuilder.toString();
  }
  
  @VisibleForTesting
  static final class a
    implements f
  {
    int a;
    private final SizeConfigStrategy.b b;
    private Bitmap.Config c;
    
    public a(SizeConfigStrategy.b paramB)
    {
      b = paramB;
    }
    
    public void a()
    {
      b.a(this);
    }
    
    public void a(int paramInt, Bitmap.Config paramConfig)
    {
      a = paramInt;
      c = paramConfig;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof a;
      boolean bool2 = false;
      if (bool1)
      {
        paramObject = (a)paramObject;
        bool1 = bool2;
        if (a == a)
        {
          bool1 = bool2;
          if (Util.bothNullOrEqual(c, c)) {
            bool1 = true;
          }
        }
        return bool1;
      }
      return false;
    }
    
    public int hashCode()
    {
      int j = a;
      int i;
      if (c != null) {
        i = c.hashCode();
      } else {
        i = 0;
      }
      return j * 31 + i;
    }
    
    public String toString()
    {
      return SizeConfigStrategy.a(a, c);
    }
  }
  
  @VisibleForTesting
  static class b
    extends c<SizeConfigStrategy.a>
  {
    b() {}
    
    protected SizeConfigStrategy.a a()
    {
      return new SizeConfigStrategy.a(this);
    }
    
    public SizeConfigStrategy.a a(int paramInt, Bitmap.Config paramConfig)
    {
      SizeConfigStrategy.a localA = (SizeConfigStrategy.a)c();
      localA.a(paramInt, paramConfig);
      return localA;
    }
  }
}
