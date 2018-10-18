package android.support.design.button;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.design.R.styleable;
import android.support.design.internal.ViewUtils;
import android.support.design.resources.MaterialResources;
import android.support.design.ripple.RippleUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewCompat;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
class b
{
  private static final boolean a;
  private final MaterialButton b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  @Nullable
  private PorterDuff.Mode i;
  @Nullable
  private ColorStateList j;
  @Nullable
  private ColorStateList k;
  @Nullable
  private ColorStateList l;
  private final Paint m = new Paint(1);
  private final Rect n = new Rect();
  private final RectF o = new RectF();
  @Nullable
  private GradientDrawable p;
  @Nullable
  private Drawable q;
  @Nullable
  private GradientDrawable r;
  @Nullable
  private Drawable s;
  @Nullable
  private GradientDrawable t;
  @Nullable
  private GradientDrawable u;
  @Nullable
  private GradientDrawable v;
  private boolean w = false;
  
  static
  {
    boolean bool;
    if (Build.VERSION.SDK_INT >= 21) {
      bool = true;
    } else {
      bool = false;
    }
    a = bool;
  }
  
  public b(MaterialButton paramMaterialButton)
  {
    b = paramMaterialButton;
  }
  
  private InsetDrawable a(Drawable paramDrawable)
  {
    return new InsetDrawable(paramDrawable, c, e, d, f);
  }
  
  private Drawable i()
  {
    p = new GradientDrawable();
    p.setCornerRadius(g + 1.0E-5F);
    p.setColor(-1);
    q = DrawableCompat.wrap(p);
    DrawableCompat.setTintList(q, j);
    if (i != null) {
      DrawableCompat.setTintMode(q, i);
    }
    r = new GradientDrawable();
    r.setCornerRadius(g + 1.0E-5F);
    r.setColor(-1);
    s = DrawableCompat.wrap(r);
    DrawableCompat.setTintList(s, l);
    return a(new LayerDrawable(new Drawable[] { q, s }));
  }
  
  private void j()
  {
    if (t != null)
    {
      DrawableCompat.setTintList(t, j);
      if (i != null) {
        DrawableCompat.setTintMode(t, i);
      }
    }
  }
  
  @TargetApi(21)
  private Drawable k()
  {
    t = new GradientDrawable();
    t.setCornerRadius(g + 1.0E-5F);
    t.setColor(-1);
    j();
    u = new GradientDrawable();
    u.setCornerRadius(g + 1.0E-5F);
    u.setColor(0);
    u.setStroke(h, k);
    InsetDrawable localInsetDrawable = a(new LayerDrawable(new Drawable[] { t, u }));
    v = new GradientDrawable();
    v.setCornerRadius(g + 1.0E-5F);
    v.setColor(-1);
    return new a(RippleUtils.convertToRippleDrawableColor(l), localInsetDrawable, v);
  }
  
  private void l()
  {
    if ((a) && (u != null))
    {
      b.setInternalBackground(k());
      return;
    }
    if (!a) {
      b.invalidate();
    }
  }
  
  @Nullable
  private GradientDrawable m()
  {
    if ((a) && (b.getBackground() != null)) {
      return (GradientDrawable)((LayerDrawable)((InsetDrawable)((RippleDrawable)b.getBackground()).getDrawable(0)).getDrawable()).getDrawable(1);
    }
    return null;
  }
  
  @Nullable
  private GradientDrawable n()
  {
    if ((a) && (b.getBackground() != null)) {
      return (GradientDrawable)((LayerDrawable)((InsetDrawable)((RippleDrawable)b.getBackground()).getDrawable(0)).getDrawable()).getDrawable(0);
    }
    return null;
  }
  
  void a()
  {
    w = true;
    b.setSupportBackgroundTintList(j);
    b.setSupportBackgroundTintMode(i);
  }
  
  void a(int paramInt)
  {
    if ((a) && (t != null))
    {
      t.setColor(paramInt);
      return;
    }
    if ((!a) && (p != null)) {
      p.setColor(paramInt);
    }
  }
  
  void a(int paramInt1, int paramInt2)
  {
    if (v != null) {
      v.setBounds(c, e, paramInt2 - d, paramInt1 - f);
    }
  }
  
  void a(@Nullable ColorStateList paramColorStateList)
  {
    if (j != paramColorStateList)
    {
      j = paramColorStateList;
      if (a)
      {
        j();
        return;
      }
      if (q != null) {
        DrawableCompat.setTintList(q, j);
      }
    }
  }
  
  public void a(TypedArray paramTypedArray)
  {
    int i2 = R.styleable.MaterialButton_android_insetLeft;
    int i1 = 0;
    c = paramTypedArray.getDimensionPixelOffset(i2, 0);
    d = paramTypedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetRight, 0);
    e = paramTypedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetTop, 0);
    f = paramTypedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetBottom, 0);
    g = paramTypedArray.getDimensionPixelSize(R.styleable.MaterialButton_cornerRadius, 0);
    h = paramTypedArray.getDimensionPixelSize(R.styleable.MaterialButton_strokeWidth, 0);
    i = ViewUtils.parseTintMode(paramTypedArray.getInt(R.styleable.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
    j = MaterialResources.getColorStateList(b.getContext(), paramTypedArray, R.styleable.MaterialButton_backgroundTint);
    k = MaterialResources.getColorStateList(b.getContext(), paramTypedArray, R.styleable.MaterialButton_strokeColor);
    l = MaterialResources.getColorStateList(b.getContext(), paramTypedArray, R.styleable.MaterialButton_rippleColor);
    m.setStyle(Paint.Style.STROKE);
    m.setStrokeWidth(h);
    paramTypedArray = m;
    if (k != null) {
      i1 = k.getColorForState(b.getDrawableState(), 0);
    }
    paramTypedArray.setColor(i1);
    i1 = ViewCompat.getPaddingStart(b);
    i2 = b.getPaddingTop();
    int i3 = ViewCompat.getPaddingEnd(b);
    int i4 = b.getPaddingBottom();
    MaterialButton localMaterialButton = b;
    if (a) {
      paramTypedArray = k();
    } else {
      paramTypedArray = i();
    }
    localMaterialButton.setInternalBackground(paramTypedArray);
    ViewCompat.setPaddingRelative(b, i1 + c, i2 + e, i3 + d, i4 + f);
  }
  
  void a(@Nullable Canvas paramCanvas)
  {
    if ((paramCanvas != null) && (k != null) && (h > 0))
    {
      n.set(b.getBackground().getBounds());
      o.set(n.left + h / 2.0F + c, n.top + h / 2.0F + e, n.right - h / 2.0F - d, n.bottom - h / 2.0F - f);
      float f1 = g - h / 2.0F;
      paramCanvas.drawRoundRect(o, f1, f1, m);
    }
  }
  
  void a(@Nullable PorterDuff.Mode paramMode)
  {
    if (i != paramMode)
    {
      i = paramMode;
      if (a)
      {
        j();
        return;
      }
      if ((q != null) && (i != null)) {
        DrawableCompat.setTintMode(q, i);
      }
    }
  }
  
  void b(int paramInt)
  {
    if (h != paramInt)
    {
      h = paramInt;
      m.setStrokeWidth(paramInt);
      l();
    }
  }
  
  void b(@Nullable ColorStateList paramColorStateList)
  {
    if (l != paramColorStateList)
    {
      l = paramColorStateList;
      if ((a) && ((b.getBackground() instanceof RippleDrawable)))
      {
        ((RippleDrawable)b.getBackground()).setColor(paramColorStateList);
        return;
      }
      if ((!a) && (s != null)) {
        DrawableCompat.setTintList(s, paramColorStateList);
      }
    }
  }
  
  boolean b()
  {
    return w;
  }
  
  ColorStateList c()
  {
    return j;
  }
  
  void c(int paramInt)
  {
    if (g != paramInt)
    {
      g = paramInt;
      GradientDrawable localGradientDrawable;
      float f1;
      if ((a) && (t != null) && (u != null) && (v != null))
      {
        if (Build.VERSION.SDK_INT == 21)
        {
          localGradientDrawable = n();
          f1 = paramInt + 1.0E-5F;
          localGradientDrawable.setCornerRadius(f1);
          m().setCornerRadius(f1);
        }
        localGradientDrawable = t;
        f1 = paramInt + 1.0E-5F;
        localGradientDrawable.setCornerRadius(f1);
        u.setCornerRadius(f1);
        v.setCornerRadius(f1);
        return;
      }
      if ((!a) && (p != null) && (r != null))
      {
        localGradientDrawable = p;
        f1 = paramInt + 1.0E-5F;
        localGradientDrawable.setCornerRadius(f1);
        r.setCornerRadius(f1);
        b.invalidate();
      }
    }
  }
  
  void c(@Nullable ColorStateList paramColorStateList)
  {
    if (k != paramColorStateList)
    {
      k = paramColorStateList;
      Paint localPaint = m;
      int i1 = 0;
      if (paramColorStateList != null) {
        i1 = paramColorStateList.getColorForState(b.getDrawableState(), 0);
      }
      localPaint.setColor(i1);
      l();
    }
  }
  
  PorterDuff.Mode d()
  {
    return i;
  }
  
  @Nullable
  ColorStateList e()
  {
    return l;
  }
  
  @Nullable
  ColorStateList f()
  {
    return k;
  }
  
  int g()
  {
    return h;
  }
  
  int h()
  {
    return g;
  }
}
