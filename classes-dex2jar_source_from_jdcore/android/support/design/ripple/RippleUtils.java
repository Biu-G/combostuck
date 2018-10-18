package android.support.design.ripple;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build.VERSION;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.ColorUtils;
import android.util.StateSet;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class RippleUtils
{
  public static final boolean USE_FRAMEWORK_RIPPLE;
  private static final int[] a = { 16842919 };
  private static final int[] b = { 16843623, 16842908 };
  private static final int[] c = { 16842908 };
  private static final int[] d = { 16843623 };
  private static final int[] e = { 16842913, 16842919 };
  private static final int[] f = { 16842913, 16843623, 16842908 };
  private static final int[] g = { 16842913, 16842908 };
  private static final int[] h = { 16842913, 16843623 };
  private static final int[] i = { 16842913 };
  
  static
  {
    boolean bool;
    if (Build.VERSION.SDK_INT >= 21) {
      bool = true;
    } else {
      bool = false;
    }
    USE_FRAMEWORK_RIPPLE = bool;
  }
  
  private RippleUtils() {}
  
  @TargetApi(21)
  @ColorInt
  private static int a(@ColorInt int paramInt)
  {
    return ColorUtils.setAlphaComponent(paramInt, Math.min(Color.alpha(paramInt) * 2, 255));
  }
  
  @ColorInt
  private static int a(@Nullable ColorStateList paramColorStateList, int[] paramArrayOfInt)
  {
    int j;
    if (paramColorStateList != null) {
      j = paramColorStateList.getColorForState(paramArrayOfInt, paramColorStateList.getDefaultColor());
    } else {
      j = 0;
    }
    int k = j;
    if (USE_FRAMEWORK_RIPPLE) {
      k = a(j);
    }
    return k;
  }
  
  @NonNull
  public static ColorStateList convertToRippleDrawableColor(@Nullable ColorStateList paramColorStateList)
  {
    if (USE_FRAMEWORK_RIPPLE)
    {
      arrayOfInt1 = i;
      j = a(paramColorStateList, e);
      arrayOfInt2 = StateSet.NOTHING;
      k = a(paramColorStateList, a);
      return new ColorStateList(new int[][] { arrayOfInt1, arrayOfInt2 }, new int[] { j, k });
    }
    int[] arrayOfInt1 = e;
    int j = a(paramColorStateList, e);
    int[] arrayOfInt2 = f;
    int k = a(paramColorStateList, f);
    int[] arrayOfInt3 = g;
    int m = a(paramColorStateList, g);
    int[] arrayOfInt4 = h;
    int n = a(paramColorStateList, h);
    int[] arrayOfInt5 = i;
    int[] arrayOfInt6 = a;
    int i1 = a(paramColorStateList, a);
    int[] arrayOfInt7 = b;
    int i2 = a(paramColorStateList, b);
    int[] arrayOfInt8 = c;
    int i3 = a(paramColorStateList, c);
    int[] arrayOfInt9 = d;
    int i4 = a(paramColorStateList, d);
    return new ColorStateList(new int[][] { arrayOfInt1, arrayOfInt2, arrayOfInt3, arrayOfInt4, arrayOfInt5, arrayOfInt6, arrayOfInt7, arrayOfInt8, arrayOfInt9, StateSet.NOTHING }, new int[] { j, k, m, n, 0, i1, i2, i3, i4, 0 });
  }
}
