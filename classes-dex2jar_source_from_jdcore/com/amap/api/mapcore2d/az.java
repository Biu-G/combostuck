package com.amap.api.mapcore2d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.WindowManager;
import com.amap.api.maps2d.MapsInitializer;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;

class az
{
  static double a = 0.6499999761581421D;
  public d b;
  public c c;
  public b d;
  public a e;
  public v f;
  public b g;
  public av h = null;
  private an i;
  
  public az(Context paramContext, b paramB, int paramInt)
  {
    g = paramB;
    c = new c(paramB, null);
    h = new av(c);
    h.a = paramInt;
    h.b = paramInt;
    h.a();
    a(paramContext);
    e = new a(paramContext, null);
    b = new d();
    d = new b();
    f = new v(paramB);
    c.a(false, false);
  }
  
  private void b()
  {
    if (MapsInitializer.getUpdateDataActiveEnable())
    {
      bg.a();
      String str = bg.a("updateDataPeriodDate");
      if ((str != null) && (!str.equals("")))
      {
        if (t.a(str, t.a()) > bg.a().a("period_day", q.q)) {
          c();
        }
      }
      else {
        bg.a().b("updateDataPeriodDate", t.a());
      }
    }
  }
  
  private void c()
  {
    bg.a();
    String str = bg.a("cache_path", null);
    if (str != null) {
      u.a(str);
    }
    bg.a().b("updateDataPeriodDate", t.a());
  }
  
  public void a()
  {
    e.a();
    b = null;
    c = null;
    d = null;
    e = null;
    if ((MapsInitializer.getUpdateDataActiveEnable()) && (q.b())) {
      c();
    }
  }
  
  public void a(Context paramContext)
  {
    new DisplayMetrics();
    DisplayMetrics localDisplayMetrics = paramContext.getApplicationContext().getResources().getDisplayMetrics();
    try
    {
      Field localField = localDisplayMetrics.getClass().getField("densityDpi");
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      cm.a(localNoSuchFieldException, "Mediator", "initialize");
    }
    catch (SecurityException localSecurityException)
    {
      cm.a(localSecurityException, "Mediator", "initialize");
    }
    Object localObject = null;
    boolean bool;
    if (localObject != null)
    {
      long l = widthPixels * heightPixels;
      try
      {
        j = localObject.getInt(localDisplayMetrics);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        cm.a(localIllegalAccessException, "Mediator", "initialize");
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        cm.a(localIllegalArgumentException, "Mediator", "initialize");
      }
      int j = 160;
      if (j <= 120)
      {
        q.m = 1;
      }
      else if (j <= 160)
      {
        q.m = 3;
      }
      else if (j <= 240)
      {
        q.m = 2;
      }
      else
      {
        bool = l < 153600L;
        if (bool) {
          q.m = 2;
        } else if (bool) {
          q.m = 1;
        } else {
          q.m = 3;
        }
      }
    }
    else
    {
      bool = widthPixels * heightPixels < 153600L;
      if (bool) {
        q.m = 2;
      } else if (bool) {
        q.m = 1;
      } else {
        q.m = 3;
      }
    }
    if (q.m != 2) {
      q.c = 18;
    }
    bg.a(paramContext);
    if (MapsInitializer.getUpdateDataActiveEnable())
    {
      bg.a();
      bg.b("UpdateDataActiveEnable", true);
    }
    bg.a();
    MapsInitializer.setUpdateDataActiveEnable(bg.a("UpdateDataActiveEnable", false));
    b();
  }
  
  public void a(boolean paramBoolean)
  {
    e.b(paramBoolean);
  }
  
  public class a
  {
    public bn<an> a = null;
    public boolean b = false;
    public boolean c = false;
    String d = "zh_cn";
    int e = 0;
    int f = 0;
    String g;
    String h = "SatelliteMap3";
    String i = "GridTmc3";
    String j = "SateliteTmc3";
    private boolean l = false;
    private boolean m = true;
    private Context n;
    private boolean o = false;
    
    private a(Context paramContext)
    {
      if (paramContext == null) {
        return;
      }
      n = paramContext;
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
      int i1 = widthPixels / h.a + c();
      int i2 = heightPixels / h.a + c();
      e = (i1 * i2 + i1 + i2);
      f = (e / 8 + 1);
      if (f == 0) {
        f = 1;
      } else if (f > 5) {
        f = 5;
      }
      a(paramContext, "zh_cn");
    }
    
    private void a(Context paramContext, String paramString)
    {
      if (a == null) {
        a = new bn();
      }
      if ((q.g != null) && (!q.g.equals(""))) {
        g = q.g;
      } else if (paramString.equals("zh_cn")) {
        g = "GridMapV3";
      } else if (paramString.equals("en")) {
        g = "GridMapEnV3";
      }
      paramString = new an(h);
      j = new cb()
      {
        public String a(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          if ((q.h != null) && (!q.h.equals(""))) {
            return String.format(Locale.US, q.h, new Object[] { Integer.valueOf(paramAnonymousInt3), Integer.valueOf(paramAnonymousInt1), Integer.valueOf(paramAnonymousInt2) });
          }
          String str = ax.a().b();
          return String.format(Locale.US, str, new Object[] { Integer.valueOf(paramAnonymousInt3), Integer.valueOf(paramAnonymousInt1), Integer.valueOf(paramAnonymousInt2), d });
        }
      };
      if ((q.h != null) && (!q.h.equals(""))) {
        h = false;
      } else {
        h = true;
      }
      b = g;
      e = true;
      f = true;
      c = q.c;
      d = q.d;
      q = new bv(az.this, paramString);
      paramString.a(true);
      a(paramString, paramContext);
    }
    
    private void a(Canvas paramCanvas)
    {
      int i2 = a.size();
      int i1 = 0;
      while (i1 < i2)
      {
        an localAn = (an)a.get(i1);
        if ((localAn != null) && (localAn.a())) {
          localAn.a(paramCanvas);
        }
        i1 += 1;
      }
    }
    
    private void b(Canvas paramCanvas)
    {
      if (m) {
        f.a(paramCanvas);
      }
    }
    
    private int c()
    {
      return 3;
    }
    
    private void c(Canvas paramCanvas)
    {
      g.j.a(paramCanvas);
    }
    
    private void c(String paramString)
    {
      if (paramString.equals("") == true) {
        return;
      }
      int i2 = a.size();
      int i1 = 0;
      while (i1 < i2)
      {
        an localAn = (an)a.get(i1);
        if ((localAn != null) && (!b.equals(paramString)) && (e == true) && (localAn.a() == true)) {
          localAn.a(false);
        }
        i1 += 1;
      }
    }
    
    private void d()
    {
      int i2 = a.size();
      int i1 = 0;
      while (i1 < i2)
      {
        an localAn = (an)a.get(i1);
        if (localAn != null) {
          l = i1;
        }
        i1 += 1;
      }
    }
    
    private boolean d(String paramString)
    {
      if (a == null) {
        return false;
      }
      int i2 = a.size();
      int i1 = 0;
      while (i1 < i2)
      {
        an localAn = (an)a.get(i1);
        if ((localAn != null) && (b.equals(paramString) == true)) {
          return true;
        }
        i1 += 1;
      }
      return false;
    }
    
    public void a()
    {
      if (e.a == null) {
        return;
      }
      Iterator localIterator = e.a.iterator();
      while (localIterator.hasNext())
      {
        an localAn = (an)localIterator.next();
        if (localAn != null) {
          localAn.b();
        }
      }
      e.a.clear();
      e.a = null;
    }
    
    public void a(Canvas paramCanvas, Matrix paramMatrix, float paramFloat1, float paramFloat2)
    {
      try
      {
        if (l)
        {
          paramCanvas.save();
          paramCanvas.translate(paramFloat1, paramFloat2);
          paramCanvas.concat(paramMatrix);
          a(paramCanvas);
          if (g.i.a()) {
            b(paramCanvas);
          }
          g.i.a(paramCanvas);
          paramCanvas.restore();
          if (!g.i.a()) {
            b(paramCanvas);
          }
          if ((!b) && (!c))
          {
            a(false);
            az.c.a(c).b(new Matrix());
            az.c.a(c).c(1.0F);
            az.c.a(c).p();
          }
        }
        else
        {
          a(paramCanvas);
          g.i.a(paramCanvas);
          b(paramCanvas);
        }
        c(paramCanvas);
        return;
      }
      catch (Throwable paramCanvas)
      {
        cm.a(paramCanvas, "Mediator", "draw");
      }
    }
    
    public void a(String paramString)
    {
      if (paramString != null)
      {
        if (paramString.equals("")) {
          return;
        }
        if (d.equals(paramString)) {
          return;
        }
        if ((!paramString.equals("zh_cn")) && (!paramString.equals("en"))) {
          return;
        }
        if ((q.g != null) && (!q.g.equals(""))) {
          g = q.g;
        } else if (paramString.equals("zh_cn")) {
          g = "GridMapV3";
        } else if (paramString.equals("en")) {
          g = "GridMapEnV3";
        }
        az.a(az.this, b(g));
        if (az.a(az.this) == null)
        {
          az.a(az.this, new an(h));
          aq = new bv(az.this, az.a(az.this));
          aj = new cb()
          {
            public String a(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
            {
              if ((q.h != null) && (!q.h.equals(""))) {
                return String.format(Locale.US, q.h, new Object[] { Integer.valueOf(paramAnonymousInt3), Integer.valueOf(paramAnonymousInt1), Integer.valueOf(paramAnonymousInt2) });
              }
              String str = ax.a().b();
              return String.format(Locale.US, str, new Object[] { Integer.valueOf(paramAnonymousInt3), Integer.valueOf(paramAnonymousInt1), Integer.valueOf(paramAnonymousInt2), d });
            }
          };
          if ((q.h != null) && (!q.h.equals(""))) {
            ah = false;
          } else {
            ah = true;
          }
          ab = g;
          ae = true;
          az.a(az.this).a(true);
          af = true;
          ac = q.c;
          ad = q.d;
          a(az.a(az.this), n);
        }
        a(g, true);
        d = paramString;
        return;
      }
    }
    
    public void a(boolean paramBoolean)
    {
      l = paramBoolean;
    }
    
    public boolean a(int paramInt, KeyEvent paramKeyEvent)
    {
      return false;
    }
    
    public boolean a(MotionEvent paramMotionEvent)
    {
      return false;
    }
    
    boolean a(an paramAn, Context paramContext)
    {
      boolean bool2 = false;
      if (paramAn == null) {
        return false;
      }
      if (b.equals("") == true) {
        return false;
      }
      if (d(b) == true) {
        return false;
      }
      p = new bn();
      n = new ba(e, f, g, i, paramAn);
      o = new u(paramContext, ac).d, paramAn);
      o.a(n);
      int i1 = a.size();
      if ((e) && (i1 != 0))
      {
        i1 -= 1;
        for (;;)
        {
          bool1 = bool2;
          if (i1 < 0) {
            break;
          }
          paramContext = (an)a.get(i1);
          if ((paramContext != null) && (e == true))
          {
            a.add(i1, paramAn);
            bool1 = bool2;
            break;
          }
          i1 -= 1;
        }
      }
      boolean bool1 = a.add(paramAn);
      d();
      if (paramAn.a() == true) {
        a(b, true);
      }
      return bool1;
    }
    
    boolean a(String paramString, boolean paramBoolean)
    {
      if (paramString.equals("")) {
        return false;
      }
      int i2 = a.size();
      int i1 = 0;
      while (i1 < i2)
      {
        an localAn = (an)a.get(i1);
        if ((localAn != null) && (b.equals(paramString) == true))
        {
          localAn.a(paramBoolean);
          if (!e) {
            return true;
          }
          if (paramBoolean == true)
          {
            if (c > d)
            {
              c.a(c);
              c.b(d);
            }
            c(paramString);
            c.a(false, false);
            return true;
          }
        }
        i1 += 1;
      }
      return false;
    }
    
    an b(String paramString)
    {
      if ((paramString.equals("") != true) && (a != null))
      {
        if (a.size() == 0) {
          return null;
        }
        int i2 = a.size();
        int i1 = 0;
        while (i1 < i2)
        {
          an localAn = (an)a.get(i1);
          if ((localAn != null) && (b.equals(paramString) == true)) {
            return localAn;
          }
          i1 += 1;
        }
        return null;
      }
      return null;
    }
    
    public void b()
    {
      if (c != null)
      {
        if (az.c.a(c) == null) {
          return;
        }
        az.c.a(c).postInvalidate();
        return;
      }
    }
    
    public void b(boolean paramBoolean)
    {
      m = paramBoolean;
    }
    
    public boolean b(int paramInt, KeyEvent paramKeyEvent)
    {
      return false;
    }
    
    protected boolean b(MotionEvent paramMotionEvent)
    {
      return false;
    }
  }
  
  public class b
  {
    public boolean a = false;
    int b = 0;
    
    public b()
    {
      e();
    }
    
    public void a()
    {
      if (az.a.a(e)) {
        e.b();
      }
      b += 1;
      if (b >= 20)
      {
        if (b % 20 != 0) {
          return;
        }
        if (e.a != null)
        {
          if (e.a.size() == 0) {
            return;
          }
          int j = e.a.size();
          int i = 0;
          while (i < j)
          {
            e.a.get(i)).q.i();
            i += 1;
          }
          return;
        }
        return;
      }
    }
    
    public void b()
    {
      az.c localC = c;
      int i = 0;
      a = false;
      if (e.a != null)
      {
        if (e.a.size() == 0) {
          return;
        }
        int j = e.a.size();
        while (i < j)
        {
          e.a.get(i)).q.b();
          i += 1;
        }
        return;
      }
    }
    
    public void c()
    {
      if (e.a != null) {
        if (e.a.size() == 0) {
          return;
        }
      }
      try
      {
        int j = e.a.size();
        int i = 0;
        while (i < j)
        {
          e.a.get(i)).q.d();
          i += 1;
        }
        return;
      }
      catch (Throwable localThrowable) {}
      return;
    }
    
    public void d()
    {
      if (e.a != null)
      {
        if (e.a.size() == 0) {
          return;
        }
        int j = e.a.size();
        int i = 0;
        while (i < j)
        {
          Object localObject = (an)e.a.get(i);
          if (localObject != null)
          {
            localObject = q;
            if (localObject != null) {
              ((bv)localObject).c();
            }
          }
          i += 1;
        }
        return;
      }
    }
    
    public void e()
    {
      if (e.a != null)
      {
        if (e.a.size() == 0) {
          return;
        }
        int j = e.a.size();
        int i = 0;
        while (i < j)
        {
          Object localObject = (an)e.a.get(i);
          if (localObject != null)
          {
            localObject = q;
            if (localObject != null) {
              ((bv)localObject).h();
            }
          }
          i += 1;
        }
        return;
      }
    }
  }
  
  public class c
  {
    public boolean a = true;
    private b c;
    private ArrayList<cc> d;
    
    private c(b paramB)
    {
      c = paramB;
      d = new ArrayList();
    }
    
    public int a()
    {
      try
      {
        int i = h.i;
        return i;
      }
      catch (Throwable localThrowable)
      {
        cm.a(localThrowable, "Mediator", "getMaxZoomLevel");
      }
      return 0;
    }
    
    public void a(float paramFloat)
    {
      if (paramFloat != h.j)
      {
        h.j = paramFloat;
        int i = (int)paramFloat;
        double d1 = h.d / (1 << i);
        float f = paramFloat - i;
        double d2 = f;
        if (d2 < az.a)
        {
          h.a = ((int)(h.b * (d2 * 0.4D + 1.0D)));
          d1 /= h.a / h.b;
        }
        else
        {
          h.a = ((int)(h.b / (2.0F / (2.0F - (1.0F - f) * 0.4F))));
          d2 = h.a / h.b;
          d1 = d1 / 2.0D / d2;
        }
        h.k = d1;
        g.c[1] = paramFloat;
        g.f.a(paramFloat);
      }
      a(false, false);
    }
    
    public void a(int paramInt)
    {
      if (paramInt <= 0) {
        return;
      }
      try
      {
        h.i = paramInt;
        q.a(paramInt);
        return;
      }
      catch (Throwable localThrowable)
      {
        cm.a(localThrowable, "Mediator", "setMaxZoomLevel");
      }
    }
    
    public void a(int paramInt1, int paramInt2)
    {
      if ((paramInt1 != q.n) || (paramInt2 != q.o))
      {
        q.n = paramInt1;
        q.o = paramInt2;
        a(true, false);
      }
    }
    
    public void a(cc paramCc)
    {
      d.add(paramCc);
    }
    
    public void a(w paramW)
    {
      if (paramW == null) {
        return;
      }
      if (q.s == true)
      {
        paramW = h.a(paramW);
        h.l = paramW;
      }
      a(false, false);
    }
    
    public void a(boolean paramBoolean1, boolean paramBoolean2)
    {
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext()) {
        ((cc)localIterator.next()).a(paramBoolean1, paramBoolean2);
      }
      if ((g != null) && (g.i != null))
      {
        g.i.a(true);
        g.postInvalidate();
      }
    }
    
    public int b()
    {
      try
      {
        int i = h.h;
        return i;
      }
      catch (Throwable localThrowable)
      {
        cm.a(localThrowable, "Mediator", "getMinZoomLevel");
      }
      return 0;
    }
    
    public void b(int paramInt)
    {
      if (paramInt <= 0) {
        return;
      }
      try
      {
        h.h = paramInt;
        q.b(paramInt);
        return;
      }
      catch (Throwable localThrowable)
      {
        cm.a(localThrowable, "Mediator", "setMinZoomLevel");
      }
    }
    
    public void b(cc paramCc)
    {
      d.remove(paramCc);
    }
    
    public void b(w paramW)
    {
      w localW = c.f();
      if ((paramW != null) && (!paramW.equals(localW)))
      {
        if (q.s == true)
        {
          paramW = h.a(paramW);
          h.l = paramW;
        }
        a(false, true);
      }
    }
    
    public int c()
    {
      return q.n;
    }
    
    public int d()
    {
      return q.o;
    }
    
    public float e()
    {
      try
      {
        float f = h.j;
        return f;
      }
      catch (Throwable localThrowable)
      {
        cm.a(localThrowable, "Mediator", "getZoomLevel");
      }
      return 0.0F;
    }
    
    public w f()
    {
      w localW2 = h.b(h.l);
      w localW1 = localW2;
      if (d != null)
      {
        localW1 = localW2;
        if (d.a) {
          localW1 = h.m;
        }
      }
      return localW1;
    }
    
    public b g()
    {
      return c;
    }
  }
  
  public class d
    implements bh
  {
    private float b = 0.0F;
    private HashMap<Float, Float> c = new HashMap();
    
    public d() {}
    
    private int a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
    {
      if (paramInt1 <= 0) {
        paramInt1 = c.c();
      }
      if (paramInt2 <= 0) {
        paramInt2 = c.d();
      }
      w localW1 = a(paramInt3, paramInt2 - paramInt3);
      w localW2 = a(paramInt1 - paramInt3, paramInt3);
      if (paramBoolean) {
        return Math.abs(localW1.a() - localW2.a());
      }
      return Math.abs(localW1.b() - localW2.b());
    }
    
    public float a(float paramFloat)
    {
      float f = c.e();
      if ((c.size() > 30) || (f != b))
      {
        b = f;
        c.clear();
      }
      if (!c.containsKey(Float.valueOf(paramFloat)))
      {
        w localW1 = a(0, 0);
        w localW2 = a(0, 100);
        f = h.a(localW1, localW2);
        if (f <= 0.0F) {
          return 0.0F;
        }
        f = paramFloat / f;
        c.put(Float.valueOf(paramFloat), Float.valueOf(f * 100.0F));
      }
      return ((Float)c.get(Float.valueOf(paramFloat))).floatValue();
    }
    
    public int a(int paramInt1, int paramInt2, int paramInt3)
    {
      return a(paramInt1, paramInt2, paramInt3, false);
    }
    
    public Point a(w paramW, Point paramPoint)
    {
      if (paramW == null) {
        return null;
      }
      paramW = h.b(paramW, h.l, h.n, h.k);
      bb localBb = az.c.a(c).l();
      Point localPoint = ac).a().h.n;
      float f1;
      float f2;
      int i;
      int j;
      int k;
      if (m)
      {
        boolean bool;
        try
        {
          bool = g.h.isZoomGesturesEnabled();
        }
        catch (RemoteException localRemoteException)
        {
          localRemoteException.printStackTrace();
          bool = true;
        }
        if ((l) && (bool))
        {
          f1 = bb.j * ((int)x - f.x) + f.x + (g.x - f.x);
          f2 = bb.j * ((int)y - f.y) + f.y + (g.y - f.y);
          i = (int)f1;
          int m = (int)f2;
          j = i;
          if (f1 >= i + 0.5D) {
            j = i + 1;
          }
          i = m;
          k = j;
          if (f2 >= m + 0.5D)
          {
            i = m + 1;
            k = j;
          }
        }
        else
        {
          k = (int)x;
          i = (int)y;
        }
      }
      else
      {
        f1 = h.c * ((int)x - x) + x;
        f2 = h.c * ((int)y - y) + y;
        k = (int)f1;
        i = (int)f2;
        j = k;
        if (f1 >= k + 0.5D) {
          j = k + 1;
        }
        if (f2 >= i + 0.5D)
        {
          i += 1;
          k = j;
        }
        else
        {
          k = j;
        }
      }
      paramW = new Point(k, i);
      if (paramPoint != null)
      {
        x = x;
        y = y;
      }
      return paramW;
    }
    
    public w a(int paramInt1, int paramInt2)
    {
      PointF localPointF = new PointF(paramInt1, paramInt2);
      return h.a(localPointF, h.l, h.n, h.k, h.o);
    }
    
    public int b(int paramInt1, int paramInt2, int paramInt3)
    {
      return a(paramInt1, paramInt2, paramInt3, true);
    }
  }
}
