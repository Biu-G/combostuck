package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.styleable;
import android.util.AttributeSet;
import android.widget.SeekBar;

class i
  extends h
{
  private final SeekBar a;
  private Drawable b;
  private ColorStateList c = null;
  private PorterDuff.Mode d = null;
  private boolean e = false;
  private boolean f = false;
  
  i(SeekBar paramSeekBar)
  {
    super(paramSeekBar);
    a = paramSeekBar;
  }
  
  private void d()
  {
    if ((b != null) && ((e) || (f)))
    {
      b = DrawableCompat.wrap(b.mutate());
      if (e) {
        DrawableCompat.setTintList(b, c);
      }
      if (f) {
        DrawableCompat.setTintMode(b, d);
      }
      if (b.isStateful()) {
        b.setState(a.getDrawableState());
      }
    }
  }
  
  void a(Canvas paramCanvas)
  {
    if (b != null)
    {
      int k = a.getMax();
      int j = 1;
      if (k > 1)
      {
        int i = b.getIntrinsicWidth();
        int m = b.getIntrinsicHeight();
        if (i >= 0) {
          i /= 2;
        } else {
          i = 1;
        }
        if (m >= 0) {
          j = m / 2;
        }
        b.setBounds(-i, -j, i, j);
        float f1 = (a.getWidth() - a.getPaddingLeft() - a.getPaddingRight()) / k;
        j = paramCanvas.save();
        paramCanvas.translate(a.getPaddingLeft(), a.getHeight() / 2);
        i = 0;
        while (i <= k)
        {
          b.draw(paramCanvas);
          paramCanvas.translate(f1, 0.0F);
          i += 1;
        }
        paramCanvas.restoreToCount(j);
      }
    }
  }
  
  void a(@Nullable Drawable paramDrawable)
  {
    if (b != null) {
      b.setCallback(null);
    }
    b = paramDrawable;
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(a);
      DrawableCompat.setLayoutDirection(paramDrawable, ViewCompat.getLayoutDirection(a));
      if (paramDrawable.isStateful()) {
        paramDrawable.setState(a.getDrawableState());
      }
      d();
    }
    a.invalidate();
  }
  
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    super.a(paramAttributeSet, paramInt);
    paramAttributeSet = TintTypedArray.obtainStyledAttributes(a.getContext(), paramAttributeSet, R.styleable.AppCompatSeekBar, paramInt, 0);
    Drawable localDrawable = paramAttributeSet.getDrawableIfKnown(R.styleable.AppCompatSeekBar_android_thumb);
    if (localDrawable != null) {
      a.setThumb(localDrawable);
    }
    a(paramAttributeSet.getDrawable(R.styleable.AppCompatSeekBar_tickMark));
    if (paramAttributeSet.hasValue(R.styleable.AppCompatSeekBar_tickMarkTintMode))
    {
      d = DrawableUtils.parseTintMode(paramAttributeSet.getInt(R.styleable.AppCompatSeekBar_tickMarkTintMode, -1), d);
      f = true;
    }
    if (paramAttributeSet.hasValue(R.styleable.AppCompatSeekBar_tickMarkTint))
    {
      c = paramAttributeSet.getColorStateList(R.styleable.AppCompatSeekBar_tickMarkTint);
      e = true;
    }
    paramAttributeSet.recycle();
    d();
  }
  
  void b()
  {
    if (b != null) {
      b.jumpToCurrentState();
    }
  }
  
  void c()
  {
    Drawable localDrawable = b;
    if ((localDrawable != null) && (localDrawable.isStateful()) && (localDrawable.setState(a.getDrawableState()))) {
      a.invalidateDrawable(localDrawable);
    }
  }
}
