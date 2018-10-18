package android.support.design.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ScrimInsetsFrameLayout
  extends FrameLayout
{
  Drawable a;
  Rect b;
  private Rect c = new Rect();
  
  public ScrimInsetsFrameLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ScrimInsetsFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ScrimInsetsFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = ThemeEnforcement.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.ScrimInsetsFrameLayout, paramInt, R.style.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
    a = paramContext.getDrawable(R.styleable.ScrimInsetsFrameLayout_insetForeground);
    paramContext.recycle();
    setWillNotDraw(true);
    ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener()
    {
      public WindowInsetsCompat onApplyWindowInsets(View paramAnonymousView, WindowInsetsCompat paramAnonymousWindowInsetsCompat)
      {
        if (b == null) {
          b = new Rect();
        }
        b.set(paramAnonymousWindowInsetsCompat.getSystemWindowInsetLeft(), paramAnonymousWindowInsetsCompat.getSystemWindowInsetTop(), paramAnonymousWindowInsetsCompat.getSystemWindowInsetRight(), paramAnonymousWindowInsetsCompat.getSystemWindowInsetBottom());
        onInsetsChanged(paramAnonymousWindowInsetsCompat);
        paramAnonymousView = ScrimInsetsFrameLayout.this;
        boolean bool;
        if ((paramAnonymousWindowInsetsCompat.hasSystemWindowInsets()) && (a != null)) {
          bool = false;
        } else {
          bool = true;
        }
        paramAnonymousView.setWillNotDraw(bool);
        ViewCompat.postInvalidateOnAnimation(ScrimInsetsFrameLayout.this);
        return paramAnonymousWindowInsetsCompat.consumeSystemWindowInsets();
      }
    });
  }
  
  public void draw(@NonNull Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i = getWidth();
    int j = getHeight();
    if ((b != null) && (a != null))
    {
      int k = paramCanvas.save();
      paramCanvas.translate(getScrollX(), getScrollY());
      c.set(0, 0, i, b.top);
      a.setBounds(c);
      a.draw(paramCanvas);
      c.set(0, j - b.bottom, i, j);
      a.setBounds(c);
      a.draw(paramCanvas);
      c.set(0, b.top, b.left, j - b.bottom);
      a.setBounds(c);
      a.draw(paramCanvas);
      c.set(i - b.right, b.top, i, j - b.bottom);
      a.setBounds(c);
      a.draw(paramCanvas);
      paramCanvas.restoreToCount(k);
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (a != null) {
      a.setCallback(this);
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (a != null) {
      a.setCallback(null);
    }
  }
  
  protected void onInsetsChanged(WindowInsetsCompat paramWindowInsetsCompat) {}
}
