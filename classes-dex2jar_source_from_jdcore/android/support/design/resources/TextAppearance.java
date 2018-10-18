package android.support.design.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.support.annotation.FontRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.annotation.VisibleForTesting;
import android.support.design.R.styleable;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.content.res.ResourcesCompat.FontCallback;
import android.text.TextPaint;
import android.util.Log;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class TextAppearance
{
  @FontRes
  private final int a;
  private boolean b = false;
  @Nullable
  private Typeface c;
  @Nullable
  public final String fontFamily;
  @Nullable
  public final ColorStateList shadowColor;
  public final float shadowDx;
  public final float shadowDy;
  public final float shadowRadius;
  public final boolean textAllCaps;
  @Nullable
  public final ColorStateList textColor;
  @Nullable
  public final ColorStateList textColorHint;
  @Nullable
  public final ColorStateList textColorLink;
  public final float textSize;
  public final int textStyle;
  public final int typeface;
  
  public TextAppearance(Context paramContext, @StyleRes int paramInt)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramInt, R.styleable.TextAppearance);
    textSize = localTypedArray.getDimension(R.styleable.TextAppearance_android_textSize, 0.0F);
    textColor = MaterialResources.getColorStateList(paramContext, localTypedArray, R.styleable.TextAppearance_android_textColor);
    textColorHint = MaterialResources.getColorStateList(paramContext, localTypedArray, R.styleable.TextAppearance_android_textColorHint);
    textColorLink = MaterialResources.getColorStateList(paramContext, localTypedArray, R.styleable.TextAppearance_android_textColorLink);
    textStyle = localTypedArray.getInt(R.styleable.TextAppearance_android_textStyle, 0);
    typeface = localTypedArray.getInt(R.styleable.TextAppearance_android_typeface, 1);
    paramInt = MaterialResources.a(localTypedArray, R.styleable.TextAppearance_fontFamily, R.styleable.TextAppearance_android_fontFamily);
    a = localTypedArray.getResourceId(paramInt, 0);
    fontFamily = localTypedArray.getString(paramInt);
    textAllCaps = localTypedArray.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
    shadowColor = MaterialResources.getColorStateList(paramContext, localTypedArray, R.styleable.TextAppearance_android_shadowColor);
    shadowDx = localTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0F);
    shadowDy = localTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0F);
    shadowRadius = localTypedArray.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0F);
    localTypedArray.recycle();
  }
  
  private void a()
  {
    if (c == null) {
      c = Typeface.create(fontFamily, textStyle);
    }
    if (c == null)
    {
      switch (typeface)
      {
      default: 
        c = Typeface.DEFAULT;
        break;
      case 3: 
        c = Typeface.MONOSPACE;
        break;
      case 2: 
        c = Typeface.SERIF;
        break;
      case 1: 
        c = Typeface.SANS_SERIF;
      }
      if (c != null) {
        c = Typeface.create(c, textStyle);
      }
    }
  }
  
  @NonNull
  @VisibleForTesting
  public Typeface getFont(Context paramContext)
  {
    if (b) {
      return c;
    }
    if (!paramContext.isRestricted()) {}
    try
    {
      try
      {
        c = ResourcesCompat.getFont(paramContext, a);
        if (c != null) {
          c = Typeface.create(c, textStyle);
        }
      }
      catch (Exception paramContext)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Error loading font ");
        localStringBuilder.append(fontFamily);
        Log.d("TextAppearance", localStringBuilder.toString(), paramContext);
      }
    }
    catch (UnsupportedOperationException|Resources.NotFoundException paramContext)
    {
      for (;;) {}
    }
    a();
    b = true;
    return c;
  }
  
  public void getFontAsync(Context paramContext, final TextPaint paramTextPaint, @NonNull final ResourcesCompat.FontCallback paramFontCallback)
  {
    if (b)
    {
      updateTextPaintMeasureState(paramTextPaint, c);
      return;
    }
    a();
    if (paramContext.isRestricted())
    {
      b = true;
      updateTextPaintMeasureState(paramTextPaint, c);
      return;
    }
    try
    {
      ResourcesCompat.getFont(paramContext, a, new ResourcesCompat.FontCallback()
      {
        public void onFontRetrievalFailed(int paramAnonymousInt)
        {
          TextAppearance.a(TextAppearance.this);
          TextAppearance.a(TextAppearance.this, true);
          paramFontCallback.onFontRetrievalFailed(paramAnonymousInt);
        }
        
        public void onFontRetrieved(@NonNull Typeface paramAnonymousTypeface)
        {
          TextAppearance.a(TextAppearance.this, Typeface.create(paramAnonymousTypeface, textStyle));
          updateTextPaintMeasureState(paramTextPaint, paramAnonymousTypeface);
          TextAppearance.a(TextAppearance.this, true);
          paramFontCallback.onFontRetrieved(paramAnonymousTypeface);
        }
      }, null);
      return;
    }
    catch (Exception paramContext)
    {
      paramTextPaint = new StringBuilder();
      paramTextPaint.append("Error loading font ");
      paramTextPaint.append(fontFamily);
      Log.d("TextAppearance", paramTextPaint.toString(), paramContext);
      return;
    }
    catch (UnsupportedOperationException|Resources.NotFoundException paramContext) {}
  }
  
  public void updateDrawState(Context paramContext, TextPaint paramTextPaint, ResourcesCompat.FontCallback paramFontCallback)
  {
    updateMeasureState(paramContext, paramTextPaint, paramFontCallback);
    int i;
    if (textColor != null) {
      i = textColor.getColorForState(drawableState, textColor.getDefaultColor());
    } else {
      i = -16777216;
    }
    paramTextPaint.setColor(i);
    float f1 = shadowRadius;
    float f2 = shadowDx;
    float f3 = shadowDy;
    if (shadowColor != null) {
      i = shadowColor.getColorForState(drawableState, shadowColor.getDefaultColor());
    } else {
      i = 0;
    }
    paramTextPaint.setShadowLayer(f1, f2, f3, i);
  }
  
  public void updateMeasureState(Context paramContext, TextPaint paramTextPaint, @Nullable ResourcesCompat.FontCallback paramFontCallback)
  {
    if (TextAppearanceConfig.shouldLoadFontSynchronously())
    {
      updateTextPaintMeasureState(paramTextPaint, getFont(paramContext));
      return;
    }
    getFontAsync(paramContext, paramTextPaint, paramFontCallback);
    if (!b) {
      updateTextPaintMeasureState(paramTextPaint, c);
    }
  }
  
  public void updateTextPaintMeasureState(@NonNull TextPaint paramTextPaint, @NonNull Typeface paramTypeface)
  {
    paramTextPaint.setTypeface(paramTypeface);
    int i = textStyle;
    i = paramTypeface.getStyle() & i;
    boolean bool;
    if ((i & 0x1) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    paramTextPaint.setFakeBoldText(bool);
    float f;
    if ((i & 0x2) != 0) {
      f = -0.25F;
    } else {
      f = 0.0F;
    }
    paramTextPaint.setTextSkewX(f);
    paramTextPaint.setTextSize(textSize);
  }
}
