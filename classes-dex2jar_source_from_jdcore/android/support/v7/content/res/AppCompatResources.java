package android.support.v7.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.res.ColorStateListInflaterCompat;
import android.support.v7.widget.AppCompatDrawableManager;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.util.WeakHashMap;

public final class AppCompatResources
{
  private static final ThreadLocal<TypedValue> a = new ThreadLocal();
  private static final WeakHashMap<Context, SparseArray<a>> b = new WeakHashMap(0);
  private static final Object c = new Object();
  
  private AppCompatResources() {}
  
  @Nullable
  private static ColorStateList a(Context paramContext, int paramInt)
  {
    if (c(paramContext, paramInt)) {
      return null;
    }
    Resources localResources = paramContext.getResources();
    XmlResourceParser localXmlResourceParser = localResources.getXml(paramInt);
    try
    {
      paramContext = ColorStateListInflaterCompat.createFromXml(localResources, localXmlResourceParser, paramContext.getTheme());
      return paramContext;
    }
    catch (Exception paramContext)
    {
      Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", paramContext);
    }
    return null;
  }
  
  @NonNull
  private static TypedValue a()
  {
    TypedValue localTypedValue2 = (TypedValue)a.get();
    TypedValue localTypedValue1 = localTypedValue2;
    if (localTypedValue2 == null)
    {
      localTypedValue1 = new TypedValue();
      a.set(localTypedValue1);
    }
    return localTypedValue1;
  }
  
  private static void a(@NonNull Context paramContext, @ColorRes int paramInt, @NonNull ColorStateList paramColorStateList)
  {
    synchronized (c)
    {
      SparseArray localSparseArray2 = (SparseArray)b.get(paramContext);
      SparseArray localSparseArray1 = localSparseArray2;
      if (localSparseArray2 == null)
      {
        localSparseArray1 = new SparseArray();
        b.put(paramContext, localSparseArray1);
      }
      localSparseArray1.append(paramInt, new a(paramColorStateList, paramContext.getResources().getConfiguration()));
      return;
    }
  }
  
  @Nullable
  private static ColorStateList b(@NonNull Context paramContext, @ColorRes int paramInt)
  {
    synchronized (c)
    {
      SparseArray localSparseArray = (SparseArray)b.get(paramContext);
      if ((localSparseArray != null) && (localSparseArray.size() > 0))
      {
        a localA = (a)localSparseArray.get(paramInt);
        if (localA != null)
        {
          if (b.equals(paramContext.getResources().getConfiguration()))
          {
            paramContext = a;
            return paramContext;
          }
          localSparseArray.remove(paramInt);
        }
      }
      return null;
    }
  }
  
  private static boolean c(@NonNull Context paramContext, @ColorRes int paramInt)
  {
    paramContext = paramContext.getResources();
    TypedValue localTypedValue = a();
    paramContext.getValue(paramInt, localTypedValue, true);
    return (type >= 28) && (type <= 31);
  }
  
  public static ColorStateList getColorStateList(@NonNull Context paramContext, @ColorRes int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return paramContext.getColorStateList(paramInt);
    }
    ColorStateList localColorStateList = b(paramContext, paramInt);
    if (localColorStateList != null) {
      return localColorStateList;
    }
    localColorStateList = a(paramContext, paramInt);
    if (localColorStateList != null)
    {
      a(paramContext, paramInt, localColorStateList);
      return localColorStateList;
    }
    return ContextCompat.getColorStateList(paramContext, paramInt);
  }
  
  @Nullable
  public static Drawable getDrawable(@NonNull Context paramContext, @DrawableRes int paramInt)
  {
    return AppCompatDrawableManager.get().getDrawable(paramContext, paramInt);
  }
  
  private static class a
  {
    final ColorStateList a;
    final Configuration b;
    
    a(@NonNull ColorStateList paramColorStateList, @NonNull Configuration paramConfiguration)
    {
      a = paramColorStateList;
      b = paramConfiguration;
    }
  }
}
