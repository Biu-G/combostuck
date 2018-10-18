package android.support.design.widget;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.support.annotation.ColorInt;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.design.animation.AnimationUtils;
import android.support.v4.math.MathUtils;
import android.support.v4.text.TextDirectionHeuristicCompat;
import android.support.v4.text.TextDirectionHeuristicsCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.widget.TintTypedArray;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.View;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public final class CollapsingTextHelper
{
  private static final boolean a;
  private static final Paint b;
  private boolean A;
  private Bitmap B;
  private Paint C;
  private float D;
  private float E;
  private float F;
  private float G;
  private int[] H;
  private boolean I;
  private final TextPaint J;
  private final TextPaint K;
  private TimeInterpolator L;
  private TimeInterpolator M;
  private float N;
  private float O;
  private float P;
  private int Q;
  private float R;
  private float S;
  private float T;
  private int U;
  private final View c;
  private boolean d;
  private float e;
  private final Rect f;
  private final Rect g;
  private final RectF h;
  private int i = 16;
  private int j = 16;
  private float k = 15.0F;
  private float l = 15.0F;
  private ColorStateList m;
  private ColorStateList n;
  private float o;
  private float p;
  private float q;
  private float r;
  private float s;
  private float t;
  private Typeface u;
  private Typeface v;
  private Typeface w;
  private CharSequence x;
  private CharSequence y;
  private boolean z;
  
  static
  {
    boolean bool;
    if (Build.VERSION.SDK_INT < 18) {
      bool = true;
    } else {
      bool = false;
    }
    a = bool;
    b = null;
    if (b != null)
    {
      b.setAntiAlias(true);
      b.setColor(-65281);
    }
  }
  
  public CollapsingTextHelper(View paramView)
  {
    c = paramView;
    J = new TextPaint(129);
    K = new TextPaint(J);
    g = new Rect();
    f = new Rect();
    h = new RectF();
  }
  
  private static float a(float paramFloat1, float paramFloat2, float paramFloat3, TimeInterpolator paramTimeInterpolator)
  {
    float f1 = paramFloat3;
    if (paramTimeInterpolator != null) {
      f1 = paramTimeInterpolator.getInterpolation(paramFloat3);
    }
    return AnimationUtils.lerp(paramFloat1, paramFloat2, f1);
  }
  
  private static int a(int paramInt1, int paramInt2, float paramFloat)
  {
    float f1 = 1.0F - paramFloat;
    float f2 = Color.alpha(paramInt1);
    float f3 = Color.alpha(paramInt2);
    float f4 = Color.red(paramInt1);
    float f5 = Color.red(paramInt2);
    float f6 = Color.green(paramInt1);
    float f7 = Color.green(paramInt2);
    float f8 = Color.blue(paramInt1);
    float f9 = Color.blue(paramInt2);
    return Color.argb((int)(f2 * f1 + f3 * paramFloat), (int)(f4 * f1 + f5 * paramFloat), (int)(f6 * f1 + f7 * paramFloat), (int)(f8 * f1 + f9 * paramFloat));
  }
  
  private Typeface a(int paramInt)
  {
    TypedArray localTypedArray = c.getContext().obtainStyledAttributes(paramInt, new int[] { 16843692 });
    try
    {
      Object localObject1 = localTypedArray.getString(0);
      if (localObject1 != null)
      {
        localObject1 = Typeface.create((String)localObject1, 0);
        return localObject1;
      }
      return null;
    }
    finally
    {
      localTypedArray.recycle();
    }
  }
  
  private void a(float paramFloat)
  {
    b(paramFloat);
    s = a(q, r, paramFloat, L);
    t = a(o, p, paramFloat, L);
    c(a(k, l, paramFloat, M));
    if (n != m) {
      J.setColor(a(c(), getCurrentCollapsedTextColor(), paramFloat));
    } else {
      J.setColor(getCurrentCollapsedTextColor());
    }
    J.setShadowLayer(a(R, N, paramFloat, null), a(S, O, paramFloat, null), a(T, P, paramFloat, null), a(U, Q, paramFloat));
    ViewCompat.postInvalidateOnAnimation(c);
  }
  
  private void a(TextPaint paramTextPaint)
  {
    paramTextPaint.setTextSize(l);
    paramTextPaint.setTypeface(u);
  }
  
  private static boolean a(float paramFloat1, float paramFloat2)
  {
    return Math.abs(paramFloat1 - paramFloat2) < 0.001F;
  }
  
  private static boolean a(Rect paramRect, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return (left == paramInt1) && (top == paramInt2) && (right == paramInt3) && (bottom == paramInt4);
  }
  
  private boolean a(CharSequence paramCharSequence)
  {
    int i2 = ViewCompat.getLayoutDirection(c);
    int i1 = 1;
    if (i2 != 1) {
      i1 = 0;
    }
    TextDirectionHeuristicCompat localTextDirectionHeuristicCompat;
    if (i1 != 0) {
      localTextDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL;
    } else {
      localTextDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
    }
    return localTextDirectionHeuristicCompat.isRtl(paramCharSequence, 0, paramCharSequence.length());
  }
  
  private void b()
  {
    a(e);
  }
  
  private void b(float paramFloat)
  {
    h.left = a(f.left, g.left, paramFloat, L);
    h.top = a(o, p, paramFloat, L);
    h.right = a(f.right, g.right, paramFloat, L);
    h.bottom = a(f.bottom, g.bottom, paramFloat, L);
  }
  
  @ColorInt
  private int c()
  {
    if (H != null) {
      return m.getColorForState(H, 0);
    }
    return m.getDefaultColor();
  }
  
  private void c(float paramFloat)
  {
    d(paramFloat);
    boolean bool;
    if ((a) && (F != 1.0F)) {
      bool = true;
    } else {
      bool = false;
    }
    A = bool;
    if (A) {
      e();
    }
    ViewCompat.postInvalidateOnAnimation(c);
  }
  
  private void d()
  {
    throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.e1expr(TypeTransformer.java:496)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:713)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:698)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s2stmt(TypeTransformer.java:820)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:843)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
  }
  
  private void d(float paramFloat)
  {
    if (x == null) {
      return;
    }
    float f2 = g.width();
    float f3 = f.width();
    boolean bool2 = a(paramFloat, l);
    boolean bool1 = true;
    float f1;
    int i1;
    if (bool2)
    {
      f1 = l;
      F = 1.0F;
      if (w != u)
      {
        w = u;
        i1 = 1;
      }
      else
      {
        i1 = 0;
      }
      paramFloat = f2;
    }
    else
    {
      f1 = k;
      if (w != v)
      {
        w = v;
        i1 = 1;
      }
      else
      {
        i1 = 0;
      }
      if (a(paramFloat, k)) {
        F = 1.0F;
      } else {
        F = (paramFloat / k);
      }
      paramFloat = l / k;
      if (f3 * paramFloat > f2) {
        paramFloat = Math.min(f2 / paramFloat, f3);
      } else {
        paramFloat = f3;
      }
    }
    int i2 = i1;
    if (paramFloat > 0.0F)
    {
      if ((G == f1) && (!I) && (i1 == 0)) {
        i1 = 0;
      } else {
        i1 = 1;
      }
      G = f1;
      I = false;
      i2 = i1;
    }
    if ((y == null) || (i2 != 0))
    {
      J.setTextSize(G);
      J.setTypeface(w);
      Object localObject = J;
      if (F == 1.0F) {
        bool1 = false;
      }
      ((TextPaint)localObject).setLinearText(bool1);
      localObject = TextUtils.ellipsize(x, J, paramFloat, TextUtils.TruncateAt.END);
      if (!TextUtils.equals((CharSequence)localObject, y))
      {
        y = ((CharSequence)localObject);
        z = a(y);
      }
    }
  }
  
  private void e()
  {
    if ((B == null) && (!f.isEmpty()))
    {
      if (TextUtils.isEmpty(y)) {
        return;
      }
      a(0.0F);
      D = J.ascent();
      E = J.descent();
      int i1 = Math.round(J.measureText(y, 0, y.length()));
      int i2 = Math.round(E - D);
      if (i1 > 0)
      {
        if (i2 <= 0) {
          return;
        }
        B = Bitmap.createBitmap(i1, i2, Bitmap.Config.ARGB_8888);
        new Canvas(B).drawText(y, 0, y.length(), 0.0F, i2 - J.descent(), J);
        if (C == null) {
          C = new Paint(3);
        }
        return;
      }
      return;
    }
  }
  
  private void f()
  {
    if (B != null)
    {
      B.recycle();
      B = null;
    }
  }
  
  void a()
  {
    boolean bool;
    if ((g.width() > 0) && (g.height() > 0) && (f.width() > 0) && (f.height() > 0)) {
      bool = true;
    } else {
      bool = false;
    }
    d = bool;
  }
  
  public float calculateCollapsedTextWidth()
  {
    if (x == null) {
      return 0.0F;
    }
    a(K);
    return K.measureText(x, 0, x.length());
  }
  
  public void draw(Canvas paramCanvas)
  {
    int i2 = paramCanvas.save();
    if ((y != null) && (d))
    {
      float f4 = s;
      float f3 = t;
      int i1;
      if ((A) && (B != null)) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      float f1;
      if (i1 != 0)
      {
        f1 = D * F;
        f2 = E;
        f2 = F;
      }
      else
      {
        f1 = J.ascent() * F;
        J.descent();
        f2 = F;
      }
      float f2 = f3;
      if (i1 != 0) {
        f2 = f3 + f1;
      }
      if (F != 1.0F) {
        paramCanvas.scale(F, F, f4, f2);
      }
      if (i1 != 0) {
        paramCanvas.drawBitmap(B, f4, f2, C);
      } else {
        paramCanvas.drawText(y, 0, y.length(), f4, f2, J);
      }
    }
    paramCanvas.restoreToCount(i2);
  }
  
  public void getCollapsedTextActualBounds(RectF paramRectF)
  {
    boolean bool = a(x);
    float f1;
    if (!bool) {
      f1 = g.left;
    } else {
      f1 = g.right - calculateCollapsedTextWidth();
    }
    left = f1;
    top = g.top;
    if (!bool) {
      f1 = left + calculateCollapsedTextWidth();
    } else {
      f1 = g.right;
    }
    right = f1;
    bottom = (g.top + getCollapsedTextHeight());
  }
  
  public ColorStateList getCollapsedTextColor()
  {
    return n;
  }
  
  public int getCollapsedTextGravity()
  {
    return j;
  }
  
  public float getCollapsedTextHeight()
  {
    a(K);
    return -K.ascent();
  }
  
  public float getCollapsedTextSize()
  {
    return l;
  }
  
  public Typeface getCollapsedTypeface()
  {
    if (u != null) {
      return u;
    }
    return Typeface.DEFAULT;
  }
  
  @ColorInt
  @VisibleForTesting
  public int getCurrentCollapsedTextColor()
  {
    if (H != null) {
      return n.getColorForState(H, 0);
    }
    return n.getDefaultColor();
  }
  
  public ColorStateList getExpandedTextColor()
  {
    return m;
  }
  
  public int getExpandedTextGravity()
  {
    return i;
  }
  
  public float getExpandedTextSize()
  {
    return k;
  }
  
  public Typeface getExpandedTypeface()
  {
    if (v != null) {
      return v;
    }
    return Typeface.DEFAULT;
  }
  
  public float getExpansionFraction()
  {
    return e;
  }
  
  public CharSequence getText()
  {
    return x;
  }
  
  public final boolean isStateful()
  {
    return ((n != null) && (n.isStateful())) || ((m != null) && (m.isStateful()));
  }
  
  public void recalculate()
  {
    if ((c.getHeight() > 0) && (c.getWidth() > 0))
    {
      d();
      b();
    }
  }
  
  public void setCollapsedBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!a(g, paramInt1, paramInt2, paramInt3, paramInt4))
    {
      g.set(paramInt1, paramInt2, paramInt3, paramInt4);
      I = true;
      a();
    }
  }
  
  public void setCollapsedTextAppearance(int paramInt)
  {
    TintTypedArray localTintTypedArray = TintTypedArray.obtainStyledAttributes(c.getContext(), paramInt, R.styleable.TextAppearance);
    if (localTintTypedArray.hasValue(R.styleable.TextAppearance_android_textColor)) {
      n = localTintTypedArray.getColorStateList(R.styleable.TextAppearance_android_textColor);
    }
    if (localTintTypedArray.hasValue(R.styleable.TextAppearance_android_textSize)) {
      l = localTintTypedArray.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, (int)l);
    }
    Q = localTintTypedArray.getInt(R.styleable.TextAppearance_android_shadowColor, 0);
    O = localTintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0F);
    P = localTintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0F);
    N = localTintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0F);
    localTintTypedArray.recycle();
    if (Build.VERSION.SDK_INT >= 16) {
      u = a(paramInt);
    }
    recalculate();
  }
  
  public void setCollapsedTextColor(ColorStateList paramColorStateList)
  {
    if (n != paramColorStateList)
    {
      n = paramColorStateList;
      recalculate();
    }
  }
  
  public void setCollapsedTextGravity(int paramInt)
  {
    if (j != paramInt)
    {
      j = paramInt;
      recalculate();
    }
  }
  
  public void setCollapsedTextSize(float paramFloat)
  {
    if (l != paramFloat)
    {
      l = paramFloat;
      recalculate();
    }
  }
  
  public void setCollapsedTypeface(Typeface paramTypeface)
  {
    if (u != paramTypeface)
    {
      u = paramTypeface;
      recalculate();
    }
  }
  
  public void setExpandedBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!a(f, paramInt1, paramInt2, paramInt3, paramInt4))
    {
      f.set(paramInt1, paramInt2, paramInt3, paramInt4);
      I = true;
      a();
    }
  }
  
  public void setExpandedTextAppearance(int paramInt)
  {
    TintTypedArray localTintTypedArray = TintTypedArray.obtainStyledAttributes(c.getContext(), paramInt, R.styleable.TextAppearance);
    if (localTintTypedArray.hasValue(R.styleable.TextAppearance_android_textColor)) {
      m = localTintTypedArray.getColorStateList(R.styleable.TextAppearance_android_textColor);
    }
    if (localTintTypedArray.hasValue(R.styleable.TextAppearance_android_textSize)) {
      k = localTintTypedArray.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, (int)k);
    }
    U = localTintTypedArray.getInt(R.styleable.TextAppearance_android_shadowColor, 0);
    S = localTintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0F);
    T = localTintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0F);
    R = localTintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0F);
    localTintTypedArray.recycle();
    if (Build.VERSION.SDK_INT >= 16) {
      v = a(paramInt);
    }
    recalculate();
  }
  
  public void setExpandedTextColor(ColorStateList paramColorStateList)
  {
    if (m != paramColorStateList)
    {
      m = paramColorStateList;
      recalculate();
    }
  }
  
  public void setExpandedTextGravity(int paramInt)
  {
    if (i != paramInt)
    {
      i = paramInt;
      recalculate();
    }
  }
  
  public void setExpandedTextSize(float paramFloat)
  {
    if (k != paramFloat)
    {
      k = paramFloat;
      recalculate();
    }
  }
  
  public void setExpandedTypeface(Typeface paramTypeface)
  {
    if (v != paramTypeface)
    {
      v = paramTypeface;
      recalculate();
    }
  }
  
  public void setExpansionFraction(float paramFloat)
  {
    paramFloat = MathUtils.clamp(paramFloat, 0.0F, 1.0F);
    if (paramFloat != e)
    {
      e = paramFloat;
      b();
    }
  }
  
  public void setPositionInterpolator(TimeInterpolator paramTimeInterpolator)
  {
    L = paramTimeInterpolator;
    recalculate();
  }
  
  public final boolean setState(int[] paramArrayOfInt)
  {
    H = paramArrayOfInt;
    if (isStateful())
    {
      recalculate();
      return true;
    }
    return false;
  }
  
  public void setText(CharSequence paramCharSequence)
  {
    if ((paramCharSequence == null) || (!paramCharSequence.equals(x)))
    {
      x = paramCharSequence;
      y = null;
      f();
      recalculate();
    }
  }
  
  public void setTextSizeInterpolator(TimeInterpolator paramTimeInterpolator)
  {
    M = paramTimeInterpolator;
    recalculate();
  }
  
  public void setTypefaces(Typeface paramTypeface)
  {
    v = paramTypeface;
    u = paramTypeface;
    recalculate();
  }
}
