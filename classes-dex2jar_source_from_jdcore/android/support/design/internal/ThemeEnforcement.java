package android.support.design.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.AttrRes;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.annotation.StyleableRes;
import android.support.design.R.attr;
import android.support.design.R.styleable;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public final class ThemeEnforcement
{
  private static final int[] a = { R.attr.colorPrimary };
  private static final int[] b = { R.attr.colorSecondary };
  
  private ThemeEnforcement() {}
  
  private static void a(Context paramContext, AttributeSet paramAttributeSet, @AttrRes int paramInt1, @StyleRes int paramInt2)
  {
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ThemeEnforcement, paramInt1, paramInt2);
    boolean bool = paramAttributeSet.getBoolean(R.styleable.ThemeEnforcement_enforceMaterialTheme, false);
    paramAttributeSet.recycle();
    if (bool) {
      checkMaterialTheme(paramContext);
    }
    checkAppCompatTheme(paramContext);
  }
  
  private static void a(Context paramContext, AttributeSet paramAttributeSet, @StyleableRes int[] paramArrayOfInt1, @AttrRes int paramInt1, @StyleRes int paramInt2, @StyleableRes int... paramVarArgs)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ThemeEnforcement, paramInt1, paramInt2);
    if (!localTypedArray.getBoolean(R.styleable.ThemeEnforcement_enforceTextAppearance, false))
    {
      localTypedArray.recycle();
      return;
    }
    boolean bool;
    if ((paramVarArgs != null) && (paramVarArgs.length != 0)) {
      bool = b(paramContext, paramAttributeSet, paramArrayOfInt1, paramInt1, paramInt2, paramVarArgs);
    } else if (localTypedArray.getResourceId(R.styleable.ThemeEnforcement_android_textAppearance, -1) != -1) {
      bool = true;
    } else {
      bool = false;
    }
    localTypedArray.recycle();
    if (bool) {
      return;
    }
    throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
  }
  
  private static void a(Context paramContext, int[] paramArrayOfInt, String paramString)
  {
    if (a(paramContext, paramArrayOfInt)) {
      return;
    }
    paramContext = new StringBuilder();
    paramContext.append("The style on this component requires your app theme to be ");
    paramContext.append(paramString);
    paramContext.append(" (or a descendant).");
    throw new IllegalArgumentException(paramContext.toString());
  }
  
  private static boolean a(Context paramContext, int[] paramArrayOfInt)
  {
    paramContext = paramContext.obtainStyledAttributes(paramArrayOfInt);
    boolean bool = paramContext.hasValue(0);
    paramContext.recycle();
    return bool;
  }
  
  private static boolean b(Context paramContext, AttributeSet paramAttributeSet, @StyleableRes int[] paramArrayOfInt1, @AttrRes int paramInt1, @StyleRes int paramInt2, @StyleableRes int... paramVarArgs)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt1, paramInt1, paramInt2);
    paramInt2 = paramVarArgs.length;
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      if (paramContext.getResourceId(paramVarArgs[paramInt1], -1) == -1)
      {
        paramContext.recycle();
        return false;
      }
      paramInt1 += 1;
    }
    paramContext.recycle();
    return true;
  }
  
  public static void checkAppCompatTheme(Context paramContext)
  {
    a(paramContext, a, "Theme.AppCompat");
  }
  
  public static void checkMaterialTheme(Context paramContext)
  {
    a(paramContext, b, "Theme.MaterialComponents");
  }
  
  public static boolean isAppCompatTheme(Context paramContext)
  {
    return a(paramContext, a);
  }
  
  public static boolean isMaterialTheme(Context paramContext)
  {
    return a(paramContext, b);
  }
  
  public static TypedArray obtainStyledAttributes(Context paramContext, AttributeSet paramAttributeSet, @StyleableRes int[] paramArrayOfInt1, @AttrRes int paramInt1, @StyleRes int paramInt2, @StyleableRes int... paramVarArgs)
  {
    a(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext, paramAttributeSet, paramArrayOfInt1, paramInt1, paramInt2, paramVarArgs);
    return paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt1, paramInt1, paramInt2);
  }
  
  public static TintTypedArray obtainTintedStyledAttributes(Context paramContext, AttributeSet paramAttributeSet, @StyleableRes int[] paramArrayOfInt1, @AttrRes int paramInt1, @StyleRes int paramInt2, @StyleableRes int... paramVarArgs)
  {
    a(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext, paramAttributeSet, paramArrayOfInt1, paramInt1, paramInt2, paramVarArgs);
    return TintTypedArray.obtainStyledAttributes(paramContext, paramAttributeSet, paramArrayOfInt1, paramInt1, paramInt2);
  }
}
