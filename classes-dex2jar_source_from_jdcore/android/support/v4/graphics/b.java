package android.support.v4.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.FontResourcesParserCompat.FontFamilyFilesResourceEntry;
import android.support.v4.content.res.FontResourcesParserCompat.FontFileResourceEntry;
import android.support.v4.provider.FontsContractCompat.FontInfo;
import android.support.v4.util.SimpleArrayMap;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

@RequiresApi(24)
@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
class b
  extends c
{
  private static final Class a;
  private static final Constructor b;
  private static final Method c;
  private static final Method d;
  
  static
  {
    Object localObject4 = null;
    Class localClass;
    Object localObject3;
    Object localObject2;
    Object localObject1;
    try
    {
      localClass = Class.forName("android.graphics.FontFamily");
      Constructor localConstructor = localClass.getConstructor(new Class[0]);
      localObject3 = localClass.getMethod("addFontWeightStyle", new Class[] { ByteBuffer.class, Integer.TYPE, List.class, Integer.TYPE, Boolean.TYPE });
      localObject2 = Typeface.class.getMethod("createFromFamiliesWithDefault", new Class[] { Array.newInstance(localClass, 1).getClass() });
    }
    catch (ClassNotFoundException|NoSuchMethodException localClassNotFoundException)
    {
      Log.e("TypefaceCompatApi24Impl", localClassNotFoundException.getClass().getName(), localClassNotFoundException);
      localClass = null;
      localObject1 = localClass;
      localObject3 = localObject1;
      localObject2 = localObject1;
      localObject1 = localObject4;
    }
    b = (Constructor)localObject1;
    a = localClass;
    c = (Method)localObject3;
    d = (Method)localObject2;
  }
  
  b() {}
  
  private static Typeface a(Object paramObject)
  {
    try
    {
      Object localObject = Array.newInstance(a, 1);
      Array.set(localObject, 0, paramObject);
      paramObject = (Typeface)d.invoke(null, new Object[] { localObject });
      return paramObject;
    }
    catch (IllegalAccessException|InvocationTargetException paramObject)
    {
      throw new RuntimeException(paramObject);
    }
  }
  
  public static boolean a()
  {
    if (c == null) {
      Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
    }
    return c != null;
  }
  
  private static boolean a(Object paramObject, ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    try
    {
      paramBoolean = ((Boolean)c.invoke(paramObject, new Object[] { paramByteBuffer, Integer.valueOf(paramInt1), null, Integer.valueOf(paramInt2), Boolean.valueOf(paramBoolean) })).booleanValue();
      return paramBoolean;
    }
    catch (IllegalAccessException|InvocationTargetException paramObject)
    {
      throw new RuntimeException(paramObject);
    }
  }
  
  private static Object b()
  {
    try
    {
      Object localObject = b.newInstance(new Object[0]);
      return localObject;
    }
    catch (IllegalAccessException|InstantiationException|InvocationTargetException localIllegalAccessException)
    {
      throw new RuntimeException(localIllegalAccessException);
    }
  }
  
  public Typeface createFromFontFamilyFilesResourceEntry(Context paramContext, FontResourcesParserCompat.FontFamilyFilesResourceEntry paramFontFamilyFilesResourceEntry, Resources paramResources, int paramInt)
  {
    Object localObject1 = b();
    paramFontFamilyFilesResourceEntry = paramFontFamilyFilesResourceEntry.getEntries();
    int i = paramFontFamilyFilesResourceEntry.length;
    paramInt = 0;
    while (paramInt < i)
    {
      Object localObject2 = paramFontFamilyFilesResourceEntry[paramInt];
      ByteBuffer localByteBuffer = TypefaceCompatUtil.copyToDirectBuffer(paramContext, paramResources, localObject2.getResourceId());
      if (localByteBuffer == null) {
        return null;
      }
      if (!a(localObject1, localByteBuffer, localObject2.getTtcIndex(), localObject2.getWeight(), localObject2.isItalic())) {
        return null;
      }
      paramInt += 1;
    }
    return a(localObject1);
  }
  
  public Typeface createFromFontInfo(Context paramContext, @Nullable CancellationSignal paramCancellationSignal, @NonNull FontsContractCompat.FontInfo[] paramArrayOfFontInfo, int paramInt)
  {
    Object localObject = b();
    SimpleArrayMap localSimpleArrayMap = new SimpleArrayMap();
    int j = paramArrayOfFontInfo.length;
    int i = 0;
    while (i < j)
    {
      FontsContractCompat.FontInfo localFontInfo = paramArrayOfFontInfo[i];
      Uri localUri = localFontInfo.getUri();
      ByteBuffer localByteBuffer2 = (ByteBuffer)localSimpleArrayMap.get(localUri);
      ByteBuffer localByteBuffer1 = localByteBuffer2;
      if (localByteBuffer2 == null)
      {
        localByteBuffer1 = TypefaceCompatUtil.mmap(paramContext, paramCancellationSignal, localUri);
        localSimpleArrayMap.put(localUri, localByteBuffer1);
      }
      if (!a(localObject, localByteBuffer1, localFontInfo.getTtcIndex(), localFontInfo.getWeight(), localFontInfo.isItalic())) {
        return null;
      }
      i += 1;
    }
    return Typeface.create(a(localObject), paramInt);
  }
}
