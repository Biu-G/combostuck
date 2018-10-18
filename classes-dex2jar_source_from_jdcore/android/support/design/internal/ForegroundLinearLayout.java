package android.support.design.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.design.R.styleable;
import android.support.v7.widget.LinearLayoutCompat;
import android.util.AttributeSet;
import android.view.Gravity;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ForegroundLinearLayout
  extends LinearLayoutCompat
{
  boolean a = false;
  private Drawable b;
  private final Rect c = new Rect();
  private final Rect d = new Rect();
  private int e = 119;
  protected boolean mForegroundInPadding = true;
  
  public ForegroundLinearLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ForegroundLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ForegroundLinearLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = ThemeEnforcement.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.ForegroundLinearLayout, paramInt, 0, new int[0]);
    e = paramContext.getInt(R.styleable.ForegroundLinearLayout_android_foregroundGravity, e);
    paramAttributeSet = paramContext.getDrawable(R.styleable.ForegroundLinearLayout_android_foreground);
    if (paramAttributeSet != null) {
      setForeground(paramAttributeSet);
    }
    mForegroundInPadding = paramContext.getBoolean(R.styleable.ForegroundLinearLayout_foregroundInsidePadding, true);
    paramContext.recycle();
  }
  
  public void draw(@NonNull Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if (b != null)
    {
      Drawable localDrawable = b;
      if (a)
      {
        a = false;
        Rect localRect1 = c;
        Rect localRect2 = d;
        int i = getRight() - getLeft();
        int j = getBottom() - getTop();
        if (mForegroundInPadding) {
          localRect1.set(0, 0, i, j);
        } else {
          localRect1.set(getPaddingLeft(), getPaddingTop(), i - getPaddingRight(), j - getPaddingBottom());
        }
        Gravity.apply(e, localDrawable.getIntrinsicWidth(), localDrawable.getIntrinsicHeight(), localRect1, localRect2);
        localDrawable.setBounds(localRect2);
      }
      localDrawable.draw(paramCanvas);
    }
  }
  
  @TargetApi(21)
  @RequiresApi(21)
  public void drawableHotspotChanged(float paramFloat1, float paramFloat2)
  {
    super.drawableHotspotChanged(paramFloat1, paramFloat2);
    if (b != null) {
      b.setHotspot(paramFloat1, paramFloat2);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if ((b != null) && (b.isStateful())) {
      b.setState(getDrawableState());
    }
  }
  
  public Drawable getForeground()
  {
    return b;
  }
  
  public int getForegroundGravity()
  {
    return e;
  }
  
  @RequiresApi(11)
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    if (b != null) {
      b.jumpToCurrentState();
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    a = (paramBoolean | a);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    a = true;
  }
  
  public void setForeground(Drawable paramDrawable)
  {
    if (b != paramDrawable)
    {
      if (b != null)
      {
        b.setCallback(null);
        unscheduleDrawable(b);
      }
      b = paramDrawable;
      if (paramDrawable != null)
      {
        setWillNotDraw(false);
        paramDrawable.setCallback(this);
        if (paramDrawable.isStateful()) {
          paramDrawable.setState(getDrawableState());
        }
        if (e == 119) {
          paramDrawable.getPadding(new Rect());
        }
      }
      else
      {
        setWillNotDraw(true);
      }
      requestLayout();
      invalidate();
    }
  }
  
  public void setForegroundGravity(int paramInt)
  {
    if (e != paramInt)
    {
      int i = paramInt;
      if ((0x800007 & paramInt) == 0) {
        i = paramInt | 0x800003;
      }
      paramInt = i;
      if ((i & 0x70) == 0) {
        paramInt = i | 0x30;
      }
      e = paramInt;
      if ((e == 119) && (b != null))
      {
        Rect localRect = new Rect();
        b.getPadding(localRect);
      }
      requestLayout();
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == b);
  }
}
