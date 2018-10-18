package android.support.v7.graphics.drawable;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.DisplayMetrics;
import android.util.SparseArray;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
class a
  extends Drawable
  implements Drawable.Callback
{
  private b a;
  private Rect b;
  private Drawable c;
  private Drawable d;
  private int e = 255;
  private boolean f;
  private int g = -1;
  private int h = -1;
  private boolean i;
  private Runnable j;
  private long k;
  private long l;
  private a m;
  
  a() {}
  
  static int a(@Nullable Resources paramResources, int paramInt)
  {
    if (paramResources != null) {
      paramInt = getDisplayMetricsdensityDpi;
    }
    int n = paramInt;
    if (paramInt == 0) {
      n = 160;
    }
    return n;
  }
  
  private void a(Drawable paramDrawable)
  {
    if (m == null) {
      m = new a();
    }
    paramDrawable.setCallback(m.a(paramDrawable.getCallback()));
    try
    {
      if ((a.C <= 0) && (f)) {
        paramDrawable.setAlpha(e);
      }
      if (a.G)
      {
        paramDrawable.setColorFilter(a.F);
      }
      else
      {
        if (a.J) {
          DrawableCompat.setTintList(paramDrawable, a.H);
        }
        if (a.K) {
          DrawableCompat.setTintMode(paramDrawable, a.I);
        }
      }
      paramDrawable.setVisible(isVisible(), true);
      paramDrawable.setDither(a.z);
      paramDrawable.setState(getState());
      paramDrawable.setLevel(getLevel());
      paramDrawable.setBounds(getBounds());
      if (Build.VERSION.SDK_INT >= 23) {
        paramDrawable.setLayoutDirection(getLayoutDirection());
      }
      if (Build.VERSION.SDK_INT >= 19) {
        paramDrawable.setAutoMirrored(a.E);
      }
      Rect localRect = b;
      if ((Build.VERSION.SDK_INT >= 21) && (localRect != null)) {
        paramDrawable.setHotspotBounds(left, top, right, bottom);
      }
      return;
    }
    finally
    {
      paramDrawable.setCallback(m.a());
    }
  }
  
  @SuppressLint({"WrongConstant"})
  @TargetApi(23)
  private boolean a()
  {
    return (isAutoMirrored()) && (getLayoutDirection() == 1);
  }
  
  final void a(Resources paramResources)
  {
    a.a(paramResources);
  }
  
  void a(boolean paramBoolean)
  {
    int i1 = 1;
    f = true;
    long l1 = SystemClock.uptimeMillis();
    if (c != null)
    {
      if (k != 0L) {
        if (k <= l1)
        {
          c.setAlpha(e);
          k = 0L;
        }
        else
        {
          n = (int)((k - l1) * 255L) / a.C;
          c.setAlpha((255 - n) * e / 255);
          n = 1;
          break label111;
        }
      }
    }
    else {
      k = 0L;
    }
    int n = 0;
    label111:
    if (d != null)
    {
      if (l != 0L) {
        if (l <= l1)
        {
          d.setVisible(false, false);
          d = null;
          h = -1;
          l = 0L;
        }
        else
        {
          n = (int)((l - l1) * 255L) / a.D;
          d.setAlpha(n * e / 255);
          n = i1;
        }
      }
    }
    else {
      l = 0L;
    }
    if ((paramBoolean) && (n != 0)) {
      scheduleSelf(j, l1 + 16L);
    }
  }
  
  boolean a(int paramInt)
  {
    if (paramInt == g) {
      return false;
    }
    long l1 = SystemClock.uptimeMillis();
    if (a.D > 0)
    {
      if (d != null) {
        d.setVisible(false, false);
      }
      if (c != null)
      {
        d = c;
        h = g;
        l = (a.D + l1);
      }
      else
      {
        d = null;
        h = -1;
        l = 0L;
      }
    }
    else if (c != null)
    {
      c.setVisible(false, false);
    }
    if ((paramInt >= 0) && (paramInt < a.j))
    {
      Drawable localDrawable = a.b(paramInt);
      c = localDrawable;
      g = paramInt;
      if (localDrawable != null)
      {
        if (a.C > 0) {
          k = (l1 + a.C);
        }
        a(localDrawable);
      }
    }
    else
    {
      c = null;
      g = -1;
    }
    if ((k != 0L) || (l != 0L))
    {
      if (j == null) {
        j = new Runnable()
        {
          public void run()
          {
            a(true);
            invalidateSelf();
          }
        };
      } else {
        unscheduleSelf(j);
      }
      a(true);
    }
    invalidateSelf();
    return true;
  }
  
  @RequiresApi(21)
  public void applyTheme(@NonNull Resources.Theme paramTheme)
  {
    a.a(paramTheme);
  }
  
  b c()
  {
    return a;
  }
  
  @RequiresApi(21)
  public boolean canApplyTheme()
  {
    return a.canApplyTheme();
  }
  
  int d()
  {
    return g;
  }
  
  public void draw(@NonNull Canvas paramCanvas)
  {
    if (c != null) {
      c.draw(paramCanvas);
    }
    if (d != null) {
      d.draw(paramCanvas);
    }
  }
  
  public int getAlpha()
  {
    return e;
  }
  
  public int getChangingConfigurations()
  {
    return super.getChangingConfigurations() | a.getChangingConfigurations();
  }
  
  public final Drawable.ConstantState getConstantState()
  {
    if (a.n())
    {
      a.f = getChangingConfigurations();
      return a;
    }
    return null;
  }
  
  @NonNull
  public Drawable getCurrent()
  {
    return c;
  }
  
  public void getHotspotBounds(@NonNull Rect paramRect)
  {
    if (b != null)
    {
      paramRect.set(b);
      return;
    }
    super.getHotspotBounds(paramRect);
  }
  
  public int getIntrinsicHeight()
  {
    if (a.f()) {
      return a.h();
    }
    if (c != null) {
      return c.getIntrinsicHeight();
    }
    return -1;
  }
  
  public int getIntrinsicWidth()
  {
    if (a.f()) {
      return a.g();
    }
    if (c != null) {
      return c.getIntrinsicWidth();
    }
    return -1;
  }
  
  public int getMinimumHeight()
  {
    if (a.f()) {
      return a.j();
    }
    if (c != null) {
      return c.getMinimumHeight();
    }
    return 0;
  }
  
  public int getMinimumWidth()
  {
    if (a.f()) {
      return a.i();
    }
    if (c != null) {
      return c.getMinimumWidth();
    }
    return 0;
  }
  
  public int getOpacity()
  {
    if ((c != null) && (c.isVisible())) {
      return a.l();
    }
    return -2;
  }
  
  @RequiresApi(21)
  public void getOutline(@NonNull Outline paramOutline)
  {
    if (c != null) {
      c.getOutline(paramOutline);
    }
  }
  
  public boolean getPadding(@NonNull Rect paramRect)
  {
    Rect localRect = a.e();
    int n;
    boolean bool;
    if (localRect != null)
    {
      paramRect.set(localRect);
      n = left;
      int i1 = top;
      int i2 = bottom;
      if ((right | n | i1 | i2) != 0) {
        bool = true;
      } else {
        bool = false;
      }
    }
    else if (c != null)
    {
      bool = c.getPadding(paramRect);
    }
    else
    {
      bool = super.getPadding(paramRect);
    }
    if (a())
    {
      n = left;
      left = right;
      right = n;
    }
    return bool;
  }
  
  public void invalidateDrawable(@NonNull Drawable paramDrawable)
  {
    if (a != null) {
      a.b();
    }
    if ((paramDrawable == c) && (getCallback() != null)) {
      getCallback().invalidateDrawable(this);
    }
  }
  
  public boolean isAutoMirrored()
  {
    return a.E;
  }
  
  public boolean isStateful()
  {
    return a.m();
  }
  
  public void jumpToCurrentState()
  {
    int n;
    if (d != null)
    {
      d.jumpToCurrentState();
      d = null;
      h = -1;
      n = 1;
    }
    else
    {
      n = 0;
    }
    if (c != null)
    {
      c.jumpToCurrentState();
      if (f) {
        c.setAlpha(e);
      }
    }
    if (l != 0L)
    {
      l = 0L;
      n = 1;
    }
    if (k != 0L)
    {
      k = 0L;
      n = 1;
    }
    if (n != 0) {
      invalidateSelf();
    }
  }
  
  @NonNull
  public Drawable mutate()
  {
    if ((!i) && (super.mutate() == this))
    {
      b localB = c();
      localB.a();
      setConstantState(localB);
      i = true;
    }
    return this;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    if (d != null) {
      d.setBounds(paramRect);
    }
    if (c != null) {
      c.setBounds(paramRect);
    }
  }
  
  public boolean onLayoutDirectionChanged(int paramInt)
  {
    return a.d(paramInt, d());
  }
  
  protected boolean onLevelChange(int paramInt)
  {
    if (d != null) {
      return d.setLevel(paramInt);
    }
    if (c != null) {
      return c.setLevel(paramInt);
    }
    return false;
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    if (d != null) {
      return d.setState(paramArrayOfInt);
    }
    if (c != null) {
      return c.setState(paramArrayOfInt);
    }
    return false;
  }
  
  public void scheduleDrawable(@NonNull Drawable paramDrawable, @NonNull Runnable paramRunnable, long paramLong)
  {
    if ((paramDrawable == c) && (getCallback() != null)) {
      getCallback().scheduleDrawable(this, paramRunnable, paramLong);
    }
  }
  
  public void setAlpha(int paramInt)
  {
    if ((!f) || (e != paramInt))
    {
      f = true;
      e = paramInt;
      if (c != null)
      {
        if (k == 0L)
        {
          c.setAlpha(paramInt);
          return;
        }
        a(false);
      }
    }
  }
  
  public void setAutoMirrored(boolean paramBoolean)
  {
    if (a.E != paramBoolean)
    {
      a.E = paramBoolean;
      if (c != null) {
        DrawableCompat.setAutoMirrored(c, a.E);
      }
    }
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    a.G = true;
    if (a.F != paramColorFilter)
    {
      a.F = paramColorFilter;
      if (c != null) {
        c.setColorFilter(paramColorFilter);
      }
    }
  }
  
  protected void setConstantState(b paramB)
  {
    a = paramB;
    if (g >= 0)
    {
      c = paramB.b(g);
      if (c != null) {
        a(c);
      }
    }
    h = -1;
    d = null;
  }
  
  public void setDither(boolean paramBoolean)
  {
    if (a.z != paramBoolean)
    {
      a.z = paramBoolean;
      if (c != null) {
        c.setDither(a.z);
      }
    }
  }
  
  public void setEnterFadeDuration(int paramInt)
  {
    a.C = paramInt;
  }
  
  public void setExitFadeDuration(int paramInt)
  {
    a.D = paramInt;
  }
  
  public void setHotspot(float paramFloat1, float paramFloat2)
  {
    if (c != null) {
      DrawableCompat.setHotspot(c, paramFloat1, paramFloat2);
    }
  }
  
  public void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (b == null) {
      b = new Rect(paramInt1, paramInt2, paramInt3, paramInt4);
    } else {
      b.set(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    if (c != null) {
      DrawableCompat.setHotspotBounds(c, paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    a.J = true;
    if (a.H != paramColorStateList)
    {
      a.H = paramColorStateList;
      DrawableCompat.setTintList(c, paramColorStateList);
    }
  }
  
  public void setTintMode(@NonNull PorterDuff.Mode paramMode)
  {
    a.K = true;
    if (a.I != paramMode)
    {
      a.I = paramMode;
      DrawableCompat.setTintMode(c, paramMode);
    }
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool = super.setVisible(paramBoolean1, paramBoolean2);
    if (d != null) {
      d.setVisible(paramBoolean1, paramBoolean2);
    }
    if (c != null) {
      c.setVisible(paramBoolean1, paramBoolean2);
    }
    return bool;
  }
  
  public void unscheduleDrawable(@NonNull Drawable paramDrawable, @NonNull Runnable paramRunnable)
  {
    if ((paramDrawable == c) && (getCallback() != null)) {
      getCallback().unscheduleDrawable(this, paramRunnable);
    }
  }
  
  static class a
    implements Drawable.Callback
  {
    private Drawable.Callback a;
    
    a() {}
    
    public Drawable.Callback a()
    {
      Drawable.Callback localCallback = a;
      a = null;
      return localCallback;
    }
    
    public a a(Drawable.Callback paramCallback)
    {
      a = paramCallback;
      return this;
    }
    
    public void invalidateDrawable(@NonNull Drawable paramDrawable) {}
    
    public void scheduleDrawable(@NonNull Drawable paramDrawable, @NonNull Runnable paramRunnable, long paramLong)
    {
      if (a != null) {
        a.scheduleDrawable(paramDrawable, paramRunnable, paramLong);
      }
    }
    
    public void unscheduleDrawable(@NonNull Drawable paramDrawable, @NonNull Runnable paramRunnable)
    {
      if (a != null) {
        a.unscheduleDrawable(paramDrawable, paramRunnable);
      }
    }
  }
  
  static abstract class b
    extends Drawable.ConstantState
  {
    boolean A;
    int B;
    int C;
    int D;
    boolean E;
    ColorFilter F;
    boolean G;
    ColorStateList H;
    PorterDuff.Mode I;
    boolean J;
    boolean K;
    final a c;
    Resources d;
    int e = 160;
    int f;
    int g;
    SparseArray<Drawable.ConstantState> h;
    Drawable[] i;
    int j;
    boolean k;
    boolean l;
    Rect m;
    boolean n;
    boolean o;
    int p;
    int q;
    int r;
    int s;
    boolean t;
    int u;
    boolean v;
    boolean w;
    boolean x;
    boolean y;
    boolean z;
    
    b(b paramB, a paramA, Resources paramResources)
    {
      int i2 = 0;
      k = false;
      n = false;
      z = true;
      C = 0;
      D = 0;
      c = paramA;
      if (paramResources != null) {
        paramA = paramResources;
      } else if (paramB != null) {
        paramA = d;
      } else {
        paramA = null;
      }
      d = paramA;
      int i1;
      if (paramB != null) {
        i1 = e;
      } else {
        i1 = 0;
      }
      e = a.a(paramResources, i1);
      if (paramB != null)
      {
        f = f;
        g = g;
        x = true;
        y = true;
        k = k;
        n = n;
        z = z;
        A = A;
        B = B;
        C = C;
        D = D;
        E = E;
        F = F;
        G = G;
        H = H;
        I = I;
        J = J;
        K = K;
        if (e == e)
        {
          if (l)
          {
            m = new Rect(m);
            l = true;
          }
          if (o)
          {
            p = p;
            q = q;
            r = r;
            s = s;
            o = true;
          }
        }
        if (t)
        {
          u = u;
          t = true;
        }
        if (v)
        {
          w = w;
          v = true;
        }
        paramA = i;
        i = new Drawable[paramA.length];
        j = j;
        paramB = h;
        if (paramB != null) {
          h = paramB.clone();
        } else {
          h = new SparseArray(j);
        }
        int i3 = j;
        i1 = i2;
        while (i1 < i3)
        {
          if (paramA[i1] != null)
          {
            paramB = paramA[i1].getConstantState();
            if (paramB != null) {
              h.put(i1, paramB);
            } else {
              i[i1] = paramA[i1];
            }
          }
          i1 += 1;
        }
      }
      i = new Drawable[10];
      j = 0;
    }
    
    private Drawable b(Drawable paramDrawable)
    {
      if (Build.VERSION.SDK_INT >= 23) {
        paramDrawable.setLayoutDirection(B);
      }
      paramDrawable = paramDrawable.mutate();
      paramDrawable.setCallback(c);
      return paramDrawable;
    }
    
    private void o()
    {
      if (h != null)
      {
        int i2 = h.size();
        int i1 = 0;
        while (i1 < i2)
        {
          int i3 = h.keyAt(i1);
          Drawable.ConstantState localConstantState = (Drawable.ConstantState)h.valueAt(i1);
          i[i3] = b(localConstantState.newDrawable(d));
          i1 += 1;
        }
        h = null;
      }
    }
    
    public final int a(Drawable paramDrawable)
    {
      int i1 = j;
      if (i1 >= i.length) {
        e(i1, i1 + 10);
      }
      paramDrawable.mutate();
      paramDrawable.setVisible(false, true);
      paramDrawable.setCallback(c);
      i[i1] = paramDrawable;
      j += 1;
      int i2 = g;
      g = (paramDrawable.getChangingConfigurations() | i2);
      b();
      m = null;
      l = false;
      o = false;
      x = false;
      return i1;
    }
    
    void a()
    {
      int i2 = j;
      Drawable[] arrayOfDrawable = i;
      int i1 = 0;
      while (i1 < i2)
      {
        if (arrayOfDrawable[i1] != null) {
          arrayOfDrawable[i1].mutate();
        }
        i1 += 1;
      }
      A = true;
    }
    
    @RequiresApi(21)
    final void a(Resources.Theme paramTheme)
    {
      if (paramTheme != null)
      {
        o();
        int i2 = j;
        Drawable[] arrayOfDrawable = i;
        int i1 = 0;
        while (i1 < i2)
        {
          if ((arrayOfDrawable[i1] != null) && (arrayOfDrawable[i1].canApplyTheme()))
          {
            arrayOfDrawable[i1].applyTheme(paramTheme);
            g |= arrayOfDrawable[i1].getChangingConfigurations();
          }
          i1 += 1;
        }
        a(paramTheme.getResources());
      }
    }
    
    final void a(Resources paramResources)
    {
      if (paramResources != null)
      {
        d = paramResources;
        int i1 = a.a(paramResources, e);
        int i2 = e;
        e = i1;
        if (i2 != i1)
        {
          o = false;
          l = false;
        }
      }
    }
    
    public final void a(boolean paramBoolean)
    {
      k = paramBoolean;
    }
    
    public final Drawable b(int paramInt)
    {
      Drawable localDrawable = i[paramInt];
      if (localDrawable != null) {
        return localDrawable;
      }
      if (h != null)
      {
        int i1 = h.indexOfKey(paramInt);
        if (i1 >= 0)
        {
          localDrawable = b(((Drawable.ConstantState)h.valueAt(i1)).newDrawable(d));
          i[paramInt] = localDrawable;
          h.removeAt(i1);
          if (h.size() == 0) {
            h = null;
          }
          return localDrawable;
        }
      }
      return null;
    }
    
    void b()
    {
      t = false;
      v = false;
    }
    
    public final void b(boolean paramBoolean)
    {
      n = paramBoolean;
    }
    
    final int c()
    {
      return i.length;
    }
    
    public final void c(int paramInt)
    {
      C = paramInt;
    }
    
    @RequiresApi(21)
    public boolean canApplyTheme()
    {
      int i2 = j;
      Drawable[] arrayOfDrawable = i;
      int i1 = 0;
      while (i1 < i2)
      {
        Object localObject = arrayOfDrawable[i1];
        if (localObject != null)
        {
          if (((Drawable)localObject).canApplyTheme()) {
            return true;
          }
        }
        else
        {
          localObject = (Drawable.ConstantState)h.get(i1);
          if ((localObject != null) && (((Drawable.ConstantState)localObject).canApplyTheme())) {
            return true;
          }
        }
        i1 += 1;
      }
      return false;
    }
    
    public final int d()
    {
      return j;
    }
    
    public final void d(int paramInt)
    {
      D = paramInt;
    }
    
    final boolean d(int paramInt1, int paramInt2)
    {
      int i2 = j;
      Drawable[] arrayOfDrawable = i;
      int i1 = 0;
      boolean bool3;
      for (boolean bool2 = false; i1 < i2; bool2 = bool3)
      {
        bool3 = bool2;
        if (arrayOfDrawable[i1] != null)
        {
          boolean bool1;
          if (Build.VERSION.SDK_INT >= 23) {
            bool1 = arrayOfDrawable[i1].setLayoutDirection(paramInt1);
          } else {
            bool1 = false;
          }
          bool3 = bool2;
          if (i1 == paramInt2) {
            bool3 = bool1;
          }
        }
        i1 += 1;
      }
      B = paramInt1;
      return bool2;
    }
    
    public final Rect e()
    {
      if (k) {
        return null;
      }
      if ((m == null) && (!l))
      {
        o();
        Rect localRect = new Rect();
        int i2 = j;
        Drawable[] arrayOfDrawable = i;
        Object localObject1 = null;
        int i1 = 0;
        while (i1 < i2)
        {
          Object localObject3 = localObject1;
          if (arrayOfDrawable[i1].getPadding(localRect))
          {
            Object localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new Rect(0, 0, 0, 0);
            }
            if (left > left) {
              left = left;
            }
            if (top > top) {
              top = top;
            }
            if (right > right) {
              right = right;
            }
            localObject3 = localObject2;
            if (bottom > bottom)
            {
              bottom = bottom;
              localObject3 = localObject2;
            }
          }
          i1 += 1;
          localObject1 = localObject3;
        }
        l = true;
        m = localObject1;
        return localObject1;
      }
      return m;
    }
    
    public void e(int paramInt1, int paramInt2)
    {
      Drawable[] arrayOfDrawable = new Drawable[paramInt2];
      System.arraycopy(i, 0, arrayOfDrawable, 0, paramInt1);
      i = arrayOfDrawable;
    }
    
    public final boolean f()
    {
      return n;
    }
    
    public final int g()
    {
      if (!o) {
        k();
      }
      return p;
    }
    
    public int getChangingConfigurations()
    {
      return f | g;
    }
    
    public final int h()
    {
      if (!o) {
        k();
      }
      return q;
    }
    
    public final int i()
    {
      if (!o) {
        k();
      }
      return r;
    }
    
    public final int j()
    {
      if (!o) {
        k();
      }
      return s;
    }
    
    protected void k()
    {
      o = true;
      o();
      int i2 = j;
      Drawable[] arrayOfDrawable = i;
      q = -1;
      p = -1;
      int i1 = 0;
      s = 0;
      r = 0;
      while (i1 < i2)
      {
        Drawable localDrawable = arrayOfDrawable[i1];
        int i3 = localDrawable.getIntrinsicWidth();
        if (i3 > p) {
          p = i3;
        }
        i3 = localDrawable.getIntrinsicHeight();
        if (i3 > q) {
          q = i3;
        }
        i3 = localDrawable.getMinimumWidth();
        if (i3 > r) {
          r = i3;
        }
        i3 = localDrawable.getMinimumHeight();
        if (i3 > s) {
          s = i3;
        }
        i1 += 1;
      }
    }
    
    public final int l()
    {
      if (t) {
        return u;
      }
      o();
      int i4 = j;
      Drawable[] arrayOfDrawable = i;
      if (i4 > 0) {
        i1 = arrayOfDrawable[0].getOpacity();
      } else {
        i1 = -2;
      }
      int i3 = 1;
      int i2 = i1;
      int i1 = i3;
      while (i1 < i4)
      {
        i2 = Drawable.resolveOpacity(i2, arrayOfDrawable[i1].getOpacity());
        i1 += 1;
      }
      u = i2;
      t = true;
      return i2;
    }
    
    public final boolean m()
    {
      if (v) {
        return w;
      }
      o();
      int i2 = j;
      Drawable[] arrayOfDrawable = i;
      boolean bool2 = false;
      int i1 = 0;
      boolean bool1;
      for (;;)
      {
        bool1 = bool2;
        if (i1 >= i2) {
          break;
        }
        if (arrayOfDrawable[i1].isStateful())
        {
          bool1 = true;
          break;
        }
        i1 += 1;
      }
      w = bool1;
      v = true;
      return bool1;
    }
    
    public boolean n()
    {
      try
      {
        if (x)
        {
          boolean bool = y;
          return bool;
        }
        o();
        x = true;
        int i2 = j;
        Drawable[] arrayOfDrawable = i;
        int i1 = 0;
        while (i1 < i2)
        {
          if (arrayOfDrawable[i1].getConstantState() == null)
          {
            y = false;
            return false;
          }
          i1 += 1;
        }
        y = true;
        return true;
      }
      finally {}
    }
  }
}
