package android.support.v7.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources.NotFoundException;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.ResourcesCompat.FontCallback;
import android.support.v4.widget.AutoSizeableTextView;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.appcompat.R.styleable;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import java.lang.ref.WeakReference;

class j
{
  private final TextView a;
  private ad b;
  private ad c;
  private ad d;
  private ad e;
  private ad f;
  private ad g;
  @NonNull
  private final k h;
  private int i = 0;
  private Typeface j;
  private boolean k;
  
  j(TextView paramTextView)
  {
    a = paramTextView;
    h = new k(a);
  }
  
  private static ad a(Context paramContext, AppCompatDrawableManager paramAppCompatDrawableManager, int paramInt)
  {
    paramContext = paramAppCompatDrawableManager.a(paramContext, paramInt);
    if (paramContext != null)
    {
      paramAppCompatDrawableManager = new ad();
      d = true;
      a = paramContext;
      return paramAppCompatDrawableManager;
    }
    return null;
  }
  
  private void a(Context paramContext, TintTypedArray paramTintTypedArray)
  {
    i = paramTintTypedArray.getInt(R.styleable.TextAppearance_android_textStyle, i);
    boolean bool2 = paramTintTypedArray.hasValue(R.styleable.TextAppearance_android_fontFamily);
    bool1 = true;
    if ((!bool2) && (!paramTintTypedArray.hasValue(R.styleable.TextAppearance_fontFamily)))
    {
      if (paramTintTypedArray.hasValue(R.styleable.TextAppearance_android_typeface))
      {
        k = false;
        switch (paramTintTypedArray.getInt(R.styleable.TextAppearance_android_typeface, 1))
        {
        default: 
          return;
        case 3: 
          j = Typeface.MONOSPACE;
          return;
        case 2: 
          j = Typeface.SERIF;
          return;
        }
        j = Typeface.SANS_SERIF;
      }
      return;
    }
    j = null;
    int m;
    if (paramTintTypedArray.hasValue(R.styleable.TextAppearance_fontFamily)) {
      m = R.styleable.TextAppearance_fontFamily;
    } else {
      m = R.styleable.TextAppearance_android_fontFamily;
    }
    if (!paramContext.isRestricted()) {
      paramContext = new ResourcesCompat.FontCallback()
      {
        public void onFontRetrievalFailed(int paramAnonymousInt) {}
        
        public void onFontRetrieved(@NonNull Typeface paramAnonymousTypeface)
        {
          a(a, paramAnonymousTypeface);
        }
      };
    }
    try
    {
      j = paramTintTypedArray.getFont(m, i, paramContext);
      if (j != null) {
        break label238;
      }
    }
    catch (UnsupportedOperationException|Resources.NotFoundException paramContext)
    {
      for (;;)
      {
        continue;
        bool1 = false;
      }
    }
    k = bool1;
    if (j == null)
    {
      paramContext = paramTintTypedArray.getString(m);
      if (paramContext != null) {
        j = Typeface.create(paramContext, i);
      }
    }
  }
  
  private void a(Drawable paramDrawable, ad paramAd)
  {
    if ((paramDrawable != null) && (paramAd != null)) {
      AppCompatDrawableManager.a(paramDrawable, paramAd, a.getDrawableState());
    }
  }
  
  private void b(int paramInt, float paramFloat)
  {
    h.a(paramInt, paramFloat);
  }
  
  void a()
  {
    Drawable[] arrayOfDrawable;
    if ((b != null) || (c != null) || (d != null) || (e != null))
    {
      arrayOfDrawable = a.getCompoundDrawables();
      a(arrayOfDrawable[0], b);
      a(arrayOfDrawable[1], c);
      a(arrayOfDrawable[2], d);
      a(arrayOfDrawable[3], e);
    }
    if ((Build.VERSION.SDK_INT >= 17) && ((f != null) || (g != null)))
    {
      arrayOfDrawable = a.getCompoundDrawablesRelative();
      a(arrayOfDrawable[0], f);
      a(arrayOfDrawable[2], g);
    }
  }
  
  void a(int paramInt)
  {
    h.a(paramInt);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  void a(int paramInt, float paramFloat)
  {
    if ((!AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) && (!c())) {
      b(paramInt, paramFloat);
    }
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws IllegalArgumentException
  {
    h.a(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  void a(Context paramContext, int paramInt)
  {
    TintTypedArray localTintTypedArray = TintTypedArray.obtainStyledAttributes(paramContext, paramInt, R.styleable.TextAppearance);
    if (localTintTypedArray.hasValue(R.styleable.TextAppearance_textAllCaps)) {
      a(localTintTypedArray.getBoolean(R.styleable.TextAppearance_textAllCaps, false));
    }
    if ((Build.VERSION.SDK_INT < 23) && (localTintTypedArray.hasValue(R.styleable.TextAppearance_android_textColor)))
    {
      ColorStateList localColorStateList = localTintTypedArray.getColorStateList(R.styleable.TextAppearance_android_textColor);
      if (localColorStateList != null) {
        a.setTextColor(localColorStateList);
      }
    }
    if ((localTintTypedArray.hasValue(R.styleable.TextAppearance_android_textSize)) && (localTintTypedArray.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, -1) == 0)) {
      a.setTextSize(0, 0.0F);
    }
    a(paramContext, localTintTypedArray);
    localTintTypedArray.recycle();
    if (j != null) {
      a.setTypeface(j, i);
    }
  }
  
  @SuppressLint({"NewApi"})
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    Context localContext = a.getContext();
    Object localObject1 = AppCompatDrawableManager.get();
    Object localObject2 = TintTypedArray.obtainStyledAttributes(localContext, paramAttributeSet, R.styleable.AppCompatTextHelper, paramInt, 0);
    int m = ((TintTypedArray)localObject2).getResourceId(R.styleable.AppCompatTextHelper_android_textAppearance, -1);
    if (((TintTypedArray)localObject2).hasValue(R.styleable.AppCompatTextHelper_android_drawableLeft)) {
      b = a(localContext, (AppCompatDrawableManager)localObject1, ((TintTypedArray)localObject2).getResourceId(R.styleable.AppCompatTextHelper_android_drawableLeft, 0));
    }
    if (((TintTypedArray)localObject2).hasValue(R.styleable.AppCompatTextHelper_android_drawableTop)) {
      c = a(localContext, (AppCompatDrawableManager)localObject1, ((TintTypedArray)localObject2).getResourceId(R.styleable.AppCompatTextHelper_android_drawableTop, 0));
    }
    if (((TintTypedArray)localObject2).hasValue(R.styleable.AppCompatTextHelper_android_drawableRight)) {
      d = a(localContext, (AppCompatDrawableManager)localObject1, ((TintTypedArray)localObject2).getResourceId(R.styleable.AppCompatTextHelper_android_drawableRight, 0));
    }
    if (((TintTypedArray)localObject2).hasValue(R.styleable.AppCompatTextHelper_android_drawableBottom)) {
      e = a(localContext, (AppCompatDrawableManager)localObject1, ((TintTypedArray)localObject2).getResourceId(R.styleable.AppCompatTextHelper_android_drawableBottom, 0));
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      if (((TintTypedArray)localObject2).hasValue(R.styleable.AppCompatTextHelper_android_drawableStart)) {
        f = a(localContext, (AppCompatDrawableManager)localObject1, ((TintTypedArray)localObject2).getResourceId(R.styleable.AppCompatTextHelper_android_drawableStart, 0));
      }
      if (((TintTypedArray)localObject2).hasValue(R.styleable.AppCompatTextHelper_android_drawableEnd)) {
        g = a(localContext, (AppCompatDrawableManager)localObject1, ((TintTypedArray)localObject2).getResourceId(R.styleable.AppCompatTextHelper_android_drawableEnd, 0));
      }
    }
    ((TintTypedArray)localObject2).recycle();
    boolean bool2 = a.getTransformationMethod() instanceof PasswordTransformationMethod;
    int n = 1;
    localObject2 = null;
    Object localObject3 = null;
    ColorStateList localColorStateList1 = null;
    boolean bool1;
    if (m != -1)
    {
      localObject3 = TintTypedArray.obtainStyledAttributes(localContext, m, R.styleable.TextAppearance);
      if ((!bool2) && (((TintTypedArray)localObject3).hasValue(R.styleable.TextAppearance_textAllCaps)))
      {
        bool1 = ((TintTypedArray)localObject3).getBoolean(R.styleable.TextAppearance_textAllCaps, false);
        m = 1;
      }
      else
      {
        m = 0;
        bool1 = false;
      }
      a(localContext, (TintTypedArray)localObject3);
      if (Build.VERSION.SDK_INT < 23)
      {
        if (((TintTypedArray)localObject3).hasValue(R.styleable.TextAppearance_android_textColor)) {
          localObject2 = ((TintTypedArray)localObject3).getColorStateList(R.styleable.TextAppearance_android_textColor);
        } else {
          localObject2 = null;
        }
        if (((TintTypedArray)localObject3).hasValue(R.styleable.TextAppearance_android_textColorHint)) {
          localObject1 = ((TintTypedArray)localObject3).getColorStateList(R.styleable.TextAppearance_android_textColorHint);
        } else {
          localObject1 = null;
        }
        if (((TintTypedArray)localObject3).hasValue(R.styleable.TextAppearance_android_textColorLink)) {
          localColorStateList1 = ((TintTypedArray)localObject3).getColorStateList(R.styleable.TextAppearance_android_textColorLink);
        }
      }
      else
      {
        localColorStateList1 = null;
        localObject1 = localColorStateList1;
      }
      ((TintTypedArray)localObject3).recycle();
    }
    else
    {
      localColorStateList1 = null;
      localObject1 = localColorStateList1;
      m = 0;
      bool1 = false;
      localObject2 = localObject3;
    }
    TintTypedArray localTintTypedArray = TintTypedArray.obtainStyledAttributes(localContext, paramAttributeSet, R.styleable.TextAppearance, paramInt, 0);
    if ((!bool2) && (localTintTypedArray.hasValue(R.styleable.TextAppearance_textAllCaps)))
    {
      bool1 = localTintTypedArray.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
      m = n;
    }
    Object localObject4 = localObject2;
    ColorStateList localColorStateList2 = localColorStateList1;
    localObject3 = localObject1;
    if (Build.VERSION.SDK_INT < 23)
    {
      if (localTintTypedArray.hasValue(R.styleable.TextAppearance_android_textColor)) {
        localObject2 = localTintTypedArray.getColorStateList(R.styleable.TextAppearance_android_textColor);
      }
      if (localTintTypedArray.hasValue(R.styleable.TextAppearance_android_textColorHint)) {
        localObject1 = localTintTypedArray.getColorStateList(R.styleable.TextAppearance_android_textColorHint);
      }
      localObject4 = localObject2;
      localColorStateList2 = localColorStateList1;
      localObject3 = localObject1;
      if (localTintTypedArray.hasValue(R.styleable.TextAppearance_android_textColorLink))
      {
        localColorStateList2 = localTintTypedArray.getColorStateList(R.styleable.TextAppearance_android_textColorLink);
        localObject3 = localObject1;
        localObject4 = localObject2;
      }
    }
    if ((Build.VERSION.SDK_INT >= 28) && (localTintTypedArray.hasValue(R.styleable.TextAppearance_android_textSize)) && (localTintTypedArray.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, -1) == 0)) {
      a.setTextSize(0, 0.0F);
    }
    a(localContext, localTintTypedArray);
    localTintTypedArray.recycle();
    if (localObject4 != null) {
      a.setTextColor(localObject4);
    }
    if (localObject3 != null) {
      a.setHintTextColor((ColorStateList)localObject3);
    }
    if (localColorStateList2 != null) {
      a.setLinkTextColor(localColorStateList2);
    }
    if ((!bool2) && (m != 0)) {
      a(bool1);
    }
    if (j != null) {
      a.setTypeface(j, i);
    }
    h.a(paramAttributeSet, paramInt);
    if ((AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) && (h.a() != 0))
    {
      localObject1 = h.e();
      if (localObject1.length > 0) {
        if (a.getAutoSizeStepGranularity() != -1.0F) {
          a.setAutoSizeTextTypeUniformWithConfiguration(h.c(), h.d(), h.b(), 0);
        } else {
          a.setAutoSizeTextTypeUniformWithPresetSizes((int[])localObject1, 0);
        }
      }
    }
    paramAttributeSet = TintTypedArray.obtainStyledAttributes(localContext, paramAttributeSet, R.styleable.AppCompatTextView);
    paramInt = paramAttributeSet.getDimensionPixelSize(R.styleable.AppCompatTextView_firstBaselineToTopHeight, -1);
    m = paramAttributeSet.getDimensionPixelSize(R.styleable.AppCompatTextView_lastBaselineToBottomHeight, -1);
    n = paramAttributeSet.getDimensionPixelSize(R.styleable.AppCompatTextView_lineHeight, -1);
    paramAttributeSet.recycle();
    if (paramInt != -1) {
      TextViewCompat.setFirstBaselineToTopHeight(a, paramInt);
    }
    if (m != -1) {
      TextViewCompat.setLastBaselineToBottomHeight(a, m);
    }
    if (n != -1) {
      TextViewCompat.setLineHeight(a, n);
    }
  }
  
  void a(WeakReference<TextView> paramWeakReference, Typeface paramTypeface)
  {
    if (k)
    {
      j = paramTypeface;
      paramWeakReference = (TextView)paramWeakReference.get();
      if (paramWeakReference != null) {
        paramWeakReference.setTypeface(paramTypeface, i);
      }
    }
  }
  
  void a(boolean paramBoolean)
  {
    a.setAllCaps(paramBoolean);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  void a(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
      b();
    }
  }
  
  void a(@NonNull int[] paramArrayOfInt, int paramInt)
    throws IllegalArgumentException
  {
    h.a(paramArrayOfInt, paramInt);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  void b()
  {
    h.f();
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  boolean c()
  {
    return h.g();
  }
  
  int d()
  {
    return h.a();
  }
  
  int e()
  {
    return h.b();
  }
  
  int f()
  {
    return h.c();
  }
  
  int g()
  {
    return h.d();
  }
  
  int[] h()
  {
    return h.e();
  }
}
