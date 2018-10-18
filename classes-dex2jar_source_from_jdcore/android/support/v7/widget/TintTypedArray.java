package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleableRes;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.content.res.ResourcesCompat.FontCallback;
import android.support.v7.content.res.AppCompatResources;
import android.util.AttributeSet;
import android.util.TypedValue;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class TintTypedArray
{
  private final Context a;
  private final TypedArray b;
  private TypedValue c;
  
  private TintTypedArray(Context paramContext, TypedArray paramTypedArray)
  {
    a = paramContext;
    b = paramTypedArray;
  }
  
  public static TintTypedArray obtainStyledAttributes(Context paramContext, int paramInt, int[] paramArrayOfInt)
  {
    return new TintTypedArray(paramContext, paramContext.obtainStyledAttributes(paramInt, paramArrayOfInt));
  }
  
  public static TintTypedArray obtainStyledAttributes(Context paramContext, AttributeSet paramAttributeSet, int[] paramArrayOfInt)
  {
    return new TintTypedArray(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt));
  }
  
  public static TintTypedArray obtainStyledAttributes(Context paramContext, AttributeSet paramAttributeSet, int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    return new TintTypedArray(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt, paramInt1, paramInt2));
  }
  
  public boolean getBoolean(int paramInt, boolean paramBoolean)
  {
    return b.getBoolean(paramInt, paramBoolean);
  }
  
  @RequiresApi(21)
  public int getChangingConfigurations()
  {
    return b.getChangingConfigurations();
  }
  
  public int getColor(int paramInt1, int paramInt2)
  {
    return b.getColor(paramInt1, paramInt2);
  }
  
  public ColorStateList getColorStateList(int paramInt)
  {
    if (b.hasValue(paramInt))
    {
      int i = b.getResourceId(paramInt, 0);
      if (i != 0)
      {
        ColorStateList localColorStateList = AppCompatResources.getColorStateList(a, i);
        if (localColorStateList != null) {
          return localColorStateList;
        }
      }
    }
    return b.getColorStateList(paramInt);
  }
  
  public float getDimension(int paramInt, float paramFloat)
  {
    return b.getDimension(paramInt, paramFloat);
  }
  
  public int getDimensionPixelOffset(int paramInt1, int paramInt2)
  {
    return b.getDimensionPixelOffset(paramInt1, paramInt2);
  }
  
  public int getDimensionPixelSize(int paramInt1, int paramInt2)
  {
    return b.getDimensionPixelSize(paramInt1, paramInt2);
  }
  
  public Drawable getDrawable(int paramInt)
  {
    if (b.hasValue(paramInt))
    {
      int i = b.getResourceId(paramInt, 0);
      if (i != 0) {
        return AppCompatResources.getDrawable(a, i);
      }
    }
    return b.getDrawable(paramInt);
  }
  
  public Drawable getDrawableIfKnown(int paramInt)
  {
    if (b.hasValue(paramInt))
    {
      paramInt = b.getResourceId(paramInt, 0);
      if (paramInt != 0) {
        return AppCompatDrawableManager.get().a(a, paramInt, true);
      }
    }
    return null;
  }
  
  public float getFloat(int paramInt, float paramFloat)
  {
    return b.getFloat(paramInt, paramFloat);
  }
  
  @Nullable
  public Typeface getFont(@StyleableRes int paramInt1, int paramInt2, @Nullable ResourcesCompat.FontCallback paramFontCallback)
  {
    paramInt1 = b.getResourceId(paramInt1, 0);
    if (paramInt1 == 0) {
      return null;
    }
    if (c == null) {
      c = new TypedValue();
    }
    return ResourcesCompat.getFont(a, paramInt1, c, paramInt2, paramFontCallback);
  }
  
  public float getFraction(int paramInt1, int paramInt2, int paramInt3, float paramFloat)
  {
    return b.getFraction(paramInt1, paramInt2, paramInt3, paramFloat);
  }
  
  public int getIndex(int paramInt)
  {
    return b.getIndex(paramInt);
  }
  
  public int getIndexCount()
  {
    return b.getIndexCount();
  }
  
  public int getInt(int paramInt1, int paramInt2)
  {
    return b.getInt(paramInt1, paramInt2);
  }
  
  public int getInteger(int paramInt1, int paramInt2)
  {
    return b.getInteger(paramInt1, paramInt2);
  }
  
  public int getLayoutDimension(int paramInt1, int paramInt2)
  {
    return b.getLayoutDimension(paramInt1, paramInt2);
  }
  
  public int getLayoutDimension(int paramInt, String paramString)
  {
    return b.getLayoutDimension(paramInt, paramString);
  }
  
  public String getNonResourceString(int paramInt)
  {
    return b.getNonResourceString(paramInt);
  }
  
  public String getPositionDescription()
  {
    return b.getPositionDescription();
  }
  
  public int getResourceId(int paramInt1, int paramInt2)
  {
    return b.getResourceId(paramInt1, paramInt2);
  }
  
  public Resources getResources()
  {
    return b.getResources();
  }
  
  public String getString(int paramInt)
  {
    return b.getString(paramInt);
  }
  
  public CharSequence getText(int paramInt)
  {
    return b.getText(paramInt);
  }
  
  public CharSequence[] getTextArray(int paramInt)
  {
    return b.getTextArray(paramInt);
  }
  
  public int getType(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return b.getType(paramInt);
    }
    if (c == null) {
      c = new TypedValue();
    }
    b.getValue(paramInt, c);
    return c.type;
  }
  
  public boolean getValue(int paramInt, TypedValue paramTypedValue)
  {
    return b.getValue(paramInt, paramTypedValue);
  }
  
  public boolean hasValue(int paramInt)
  {
    return b.hasValue(paramInt);
  }
  
  public int length()
  {
    return b.length();
  }
  
  public TypedValue peekValue(int paramInt)
  {
    return b.peekValue(paramInt);
  }
  
  public void recycle()
  {
    b.recycle();
  }
}
