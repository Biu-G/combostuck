package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.DrawableRes;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.annotation.RestrictTo;
import android.support.v4.text.PrecomputedTextCompat;
import android.support.v4.text.PrecomputedTextCompat.Params;
import android.support.v4.view.TintableBackgroundView;
import android.support.v4.widget.AutoSizeableTextView;
import android.support.v4.widget.TextViewCompat;
import android.util.AttributeSet;
import android.view.ActionMode.Callback;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

public class AppCompatTextView
  extends TextView
  implements TintableBackgroundView, AutoSizeableTextView
{
  private final d a = new d(this);
  private final j b;
  @Nullable
  private Future<PrecomputedTextCompat> c;
  
  public AppCompatTextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AppCompatTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842884);
  }
  
  public AppCompatTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(TintContextWrapper.wrap(paramContext), paramAttributeSet, paramInt);
    a.a(paramAttributeSet, paramInt);
    b = new j(this);
    b.a(paramAttributeSet, paramInt);
    b.a();
  }
  
  private void a()
  {
    if (c != null) {}
    try
    {
      Future localFuture = c;
      c = null;
      TextViewCompat.setPrecomputedText(this, (PrecomputedTextCompat)localFuture.get());
      return;
    }
    catch (InterruptedException|ExecutionException localInterruptedException) {}
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (a != null) {
      a.c();
    }
    if (b != null) {
      b.a();
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public int getAutoSizeMaxTextSize()
  {
    if (PLATFORM_SUPPORTS_AUTOSIZE) {
      return super.getAutoSizeMaxTextSize();
    }
    if (b != null) {
      return b.g();
    }
    return -1;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public int getAutoSizeMinTextSize()
  {
    if (PLATFORM_SUPPORTS_AUTOSIZE) {
      return super.getAutoSizeMinTextSize();
    }
    if (b != null) {
      return b.f();
    }
    return -1;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public int getAutoSizeStepGranularity()
  {
    if (PLATFORM_SUPPORTS_AUTOSIZE) {
      return super.getAutoSizeStepGranularity();
    }
    if (b != null) {
      return b.e();
    }
    return -1;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public int[] getAutoSizeTextAvailableSizes()
  {
    if (PLATFORM_SUPPORTS_AUTOSIZE) {
      return super.getAutoSizeTextAvailableSizes();
    }
    if (b != null) {
      return b.h();
    }
    return new int[0];
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public int getAutoSizeTextType()
  {
    boolean bool = PLATFORM_SUPPORTS_AUTOSIZE;
    int i = 0;
    if (bool)
    {
      if (super.getAutoSizeTextType() == 1) {
        i = 1;
      }
      return i;
    }
    if (b != null) {
      return b.d();
    }
    return 0;
  }
  
  public int getFirstBaselineToTopHeight()
  {
    return TextViewCompat.getFirstBaselineToTopHeight(this);
  }
  
  public int getLastBaselineToBottomHeight()
  {
    return TextViewCompat.getLastBaselineToBottomHeight(this);
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public ColorStateList getSupportBackgroundTintList()
  {
    if (a != null) {
      return a.a();
    }
    return null;
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (a != null) {
      return a.b();
    }
    return null;
  }
  
  public CharSequence getText()
  {
    a();
    return super.getText();
  }
  
  @NonNull
  public PrecomputedTextCompat.Params getTextMetricsParamsCompat()
  {
    return TextViewCompat.getTextMetricsParams(this);
  }
  
  public InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
  {
    return f.a(super.onCreateInputConnection(paramEditorInfo), paramEditorInfo, this);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (b != null) {
      b.a(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    a();
    super.onMeasure(paramInt1, paramInt2);
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
    if ((b != null) && (!PLATFORM_SUPPORTS_AUTOSIZE) && (b.c())) {
      b.b();
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setAutoSizeTextTypeUniformWithConfiguration(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws IllegalArgumentException
  {
    if (PLATFORM_SUPPORTS_AUTOSIZE)
    {
      super.setAutoSizeTextTypeUniformWithConfiguration(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    if (b != null) {
      b.a(paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull int[] paramArrayOfInt, int paramInt)
    throws IllegalArgumentException
  {
    if (PLATFORM_SUPPORTS_AUTOSIZE)
    {
      super.setAutoSizeTextTypeUniformWithPresetSizes(paramArrayOfInt, paramInt);
      return;
    }
    if (b != null) {
      b.a(paramArrayOfInt, paramInt);
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setAutoSizeTextTypeWithDefaults(int paramInt)
  {
    if (PLATFORM_SUPPORTS_AUTOSIZE)
    {
      super.setAutoSizeTextTypeWithDefaults(paramInt);
      return;
    }
    if (b != null) {
      b.a(paramInt);
    }
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (a != null) {
      a.a(paramDrawable);
    }
  }
  
  public void setBackgroundResource(@DrawableRes int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (a != null) {
      a.a(paramInt);
    }
  }
  
  public void setCustomSelectionActionModeCallback(ActionMode.Callback paramCallback)
  {
    super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(this, paramCallback));
  }
  
  public void setFirstBaselineToTopHeight(@IntRange(from=0L) @Px int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 28)
    {
      super.setFirstBaselineToTopHeight(paramInt);
      return;
    }
    TextViewCompat.setFirstBaselineToTopHeight(this, paramInt);
  }
  
  public void setLastBaselineToBottomHeight(@IntRange(from=0L) @Px int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 28)
    {
      super.setLastBaselineToBottomHeight(paramInt);
      return;
    }
    TextViewCompat.setLastBaselineToBottomHeight(this, paramInt);
  }
  
  public void setLineHeight(@IntRange(from=0L) @Px int paramInt)
  {
    TextViewCompat.setLineHeight(this, paramInt);
  }
  
  public void setPrecomputedText(@NonNull PrecomputedTextCompat paramPrecomputedTextCompat)
  {
    TextViewCompat.setPrecomputedText(this, paramPrecomputedTextCompat);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setSupportBackgroundTintList(@Nullable ColorStateList paramColorStateList)
  {
    if (a != null) {
      a.a(paramColorStateList);
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode paramMode)
  {
    if (a != null) {
      a.a(paramMode);
    }
  }
  
  public void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    if (b != null) {
      b.a(paramContext, paramInt);
    }
  }
  
  public void setTextFuture(@NonNull Future<PrecomputedTextCompat> paramFuture)
  {
    c = paramFuture;
    requestLayout();
  }
  
  public void setTextMetricsParamsCompat(@NonNull PrecomputedTextCompat.Params paramParams)
  {
    TextViewCompat.setTextMetricsParams(this, paramParams);
  }
  
  public void setTextSize(int paramInt, float paramFloat)
  {
    if (PLATFORM_SUPPORTS_AUTOSIZE)
    {
      super.setTextSize(paramInt, paramFloat);
      return;
    }
    if (b != null) {
      b.a(paramInt, paramFloat);
    }
  }
}
