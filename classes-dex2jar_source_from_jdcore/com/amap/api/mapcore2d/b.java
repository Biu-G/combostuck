package com.amap.api.mapcore2d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PathEffect;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.Scroller;
import android.widget.TextView;
import com.amap.api.interfaces.MapCameraMessage;
import com.amap.api.interfaces.MapCameraMessage.Type;
import com.amap.api.maps2d.AMap.CancelableCallback;
import com.amap.api.maps2d.AMap.InfoWindowAdapter;
import com.amap.api.maps2d.AMap.OnCacheRemoveListener;
import com.amap.api.maps2d.AMap.OnCameraChangeListener;
import com.amap.api.maps2d.AMap.OnInfoWindowClickListener;
import com.amap.api.maps2d.AMap.OnMapClickListener;
import com.amap.api.maps2d.AMap.OnMapLoadedListener;
import com.amap.api.maps2d.AMap.OnMapLongClickListener;
import com.amap.api.maps2d.AMap.OnMapScreenShotListener;
import com.amap.api.maps2d.AMap.OnMapTouchListener;
import com.amap.api.maps2d.AMap.OnMarkerClickListener;
import com.amap.api.maps2d.AMap.OnMarkerDragListener;
import com.amap.api.maps2d.AMap.OnMyLocationChangeListener;
import com.amap.api.maps2d.CameraUpdate;
import com.amap.api.maps2d.LocationSource;
import com.amap.api.maps2d.Projection;
import com.amap.api.maps2d.UiSettings;
import com.amap.api.maps2d.model.CameraPosition;
import com.amap.api.maps2d.model.CameraPosition.Builder;
import com.amap.api.maps2d.model.Circle;
import com.amap.api.maps2d.model.CircleOptions;
import com.amap.api.maps2d.model.GroundOverlay;
import com.amap.api.maps2d.model.GroundOverlayOptions;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.LatLngBounds;
import com.amap.api.maps2d.model.Marker;
import com.amap.api.maps2d.model.MarkerOptions;
import com.amap.api.maps2d.model.MyLocationStyle;
import com.amap.api.maps2d.model.Polygon;
import com.amap.api.maps2d.model.PolygonOptions;
import com.amap.api.maps2d.model.Polyline;
import com.amap.api.maps2d.model.PolylineOptions;
import com.amap.api.maps2d.model.Text;
import com.amap.api.maps2d.model.TextOptions;
import com.amap.api.maps2d.model.TileOverlay;
import com.amap.api.maps2d.model.TileOverlayOptions;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

class b
  extends View
  implements GestureDetector.OnDoubleTapListener, GestureDetector.OnGestureListener, bb.b, bm.a, l.a, n.a, y
{
  private static int aH = Color.rgb(222, 215, 214);
  private static Paint aI = null;
  private static Bitmap aJ = null;
  private d A;
  private AMap.OnMyLocationChangeListener B;
  private boolean C = true;
  private bc D;
  private cd E;
  private bk F;
  private LocationSource G;
  private p H;
  private a I = null;
  private boolean J = false;
  private boolean K = false;
  private AMap.OnCameraChangeListener L;
  private k M;
  private AMap.CancelableCallback N = null;
  private av O;
  private boolean P = false;
  private boolean Q = false;
  private View R;
  private AMap.OnInfoWindowClickListener S;
  private AMap.InfoWindowAdapter T;
  private ay U;
  private AMap.OnMarkerClickListener V;
  private Drawable W = null;
  private ah Z;
  az a;
  private float aA;
  private float aB;
  private int aC;
  private int aD;
  private long aE = 0L;
  private int aF = 0;
  private int aG = 0;
  private int aK = 0;
  private boolean aL = false;
  private a aM = null;
  private boolean aa = false;
  private boolean ab = false;
  private boolean ac = false;
  private AMap.OnMarkerDragListener ad;
  private AMap.OnMapTouchListener ae;
  private AMap.OnMapLongClickListener af;
  private AMap.OnMapLoadedListener ag;
  private AMap.OnMapClickListener ah;
  private boolean ai = false;
  private AMap.OnMapScreenShotListener aj = null;
  private Timer ak = null;
  private Thread al = null;
  private TimerTask am = new TimerTask()
  {
    public void run()
    {
      try
      {
        k.sendEmptyMessage(19);
        return;
      }
      catch (Throwable localThrowable)
      {
        cm.a(localThrowable, "AMapDelegateImpGLSurfaceView", "TimerTask run");
      }
    }
  };
  private Handler an = new Handler();
  private Handler ao = new Handler()
  {
    String a = "onTouchHandler";
    
    public void handleMessage(Message paramAnonymousMessage)
    {
      super.handleMessage(paramAnonymousMessage);
      try
      {
        if (b.a(b.this) != null)
        {
          b.a(b.this).onTouch((MotionEvent)obj);
          return;
        }
      }
      catch (Throwable paramAnonymousMessage)
      {
        cm.a(paramAnonymousMessage, "AMapDelegateImpGLSurfaceView", a);
      }
    }
  };
  private Point ap;
  private GestureDetector aq;
  private bb.a ar;
  private ArrayList<GestureDetector.OnGestureListener> as = new ArrayList();
  private ArrayList<bb.b> at = new ArrayList();
  private Scroller au;
  private int av = 0;
  private int aw = 0;
  private Matrix ax = new Matrix();
  private float ay = 1.0F;
  private boolean az = false;
  public aq b;
  float[] c = new float[2];
  boolean d = false;
  as e = new as(this);
  ce f;
  public au g;
  protected al h;
  public bu i;
  public at j;
  final Handler k = new Handler()
  {
    String a = "handleMessage";
    
    public void handleMessage(Message paramAnonymousMessage)
    {
      int i;
      if ((paramAnonymousMessage != null) && (a != null))
      {
        if (a.c == null) {
          return;
        }
        try
        {
          i = what;
          if (i != 2) {
            if (i != 13) {
              if (i == 19) {}
            }
          }
          Object localObject;
          switch (i)
          {
          case 11: 
            paramAnonymousMessage = b.i(b.this);
            if (b.j(b.this) != null) {
              b.a(b.this, true, paramAnonymousMessage);
            }
            if ((q.h == null) || (q.h.trim().length() == 0)) {
              if ((zoom >= 10.0F) && (!cl.a(target.latitude, target.longitude))) {
                b.e(b.this).setVisibility(8);
              } else {
                b.e(b.this).setVisibility(0);
              }
            }
            if (b.k(b.this) != null)
            {
              b.a(b.this, true);
              b.k(b.this).onFinish();
              b.a(b.this, false);
            }
            if (!b.l(b.this))
            {
              b.a(b.this, null);
              return;
            }
            b.b(b.this, false);
            return;
            try
            {
              paramAnonymousMessage = (Bitmap)obj;
              if (paramAnonymousMessage.isRecycled()) {
                return;
              }
              paramAnonymousMessage = Bitmap.createBitmap(paramAnonymousMessage);
            }
            catch (Exception paramAnonymousMessage)
            {
              cm.a(paramAnonymousMessage, "AMapDelegateImpGLSurfaceView", a);
              paramAnonymousMessage = null;
            }
            if (paramAnonymousMessage != null)
            {
              localObject = new Canvas(paramAnonymousMessage);
              if (b.e(b.this) != null) {
                b.e(b.this).draw((Canvas)localObject);
              }
              if ((b.f(b.this) != null) && (b.g(b.this) != null))
              {
                Bitmap localBitmap = b.f(b.this).getDrawingCache(true);
                if (localBitmap != null)
                {
                  i = b.f(b.this).getLeft();
                  int j = b.f(b.this).getTop();
                  ((Canvas)localObject).drawBitmap(localBitmap, i, j, new Paint());
                }
              }
              if (b.h(b.this) != null) {
                b.h(b.this).onMapScreenShot(paramAnonymousMessage);
              }
            }
            else if (b.h(b.this) != null)
            {
              b.h(b.this).onMapScreenShot(null);
            }
            destroyDrawingCache();
            b.a(b.this, null);
            return;
            b.b(b.this);
            return;
            if (b.c(b.this) != null) {
              b.c(b.this).onMapLoaded();
            }
            b.d(b.this);
            return;
          case 10: 
            if (b.j(b.this) != null)
            {
              paramAnonymousMessage = new CameraPosition(b.m(b.this), getZoomLevel(), 0.0F, 0.0F);
              b.j(b.this).onCameraChange(paramAnonymousMessage);
              return;
              if ((a != null) && (a.d != null))
              {
                a.d.a();
                return;
                if ((b.n(b.this) != null) && (b.n(b.this).g()))
                {
                  if (b.n(b.this).h() != 2) {
                    return;
                  }
                  paramAnonymousMessage = m.a(new ae(b.n(b.this).b(), b.n(b.this).c()), b.n(b.this).d(), b.n(b.this).e(), b.n(b.this).f());
                  if (b.n(b.this).a()) {
                    isChangeFinished = true;
                  }
                  e.a(paramAnonymousMessage);
                  return;
                  localObject = new StringBuilder();
                  ((StringBuilder)localObject).append("Key验证失败：[");
                  if (obj != null) {
                    ((StringBuilder)localObject).append(obj);
                  } else {
                    ((StringBuilder)localObject).append(cq.b);
                  }
                  ((StringBuilder)localObject).append("]");
                  Log.w("amapsdk", ((StringBuilder)localObject).toString());
                  return;
                }
              }
            }
            break;
          }
        }
        catch (Throwable paramAnonymousMessage)
        {
          cm.a(paramAnonymousMessage, "AMapDelegateImpGLSurfaceView", "handle_handleMessage");
        }
        return;
      }
      return;
      switch (i)
      {
      }
    }
  };
  int l = 0;
  float m = -1.0F;
  private Context n;
  private boolean o = false;
  private boolean p = true;
  private Marker q;
  private ab r;
  private final int[] s = { 10000000, 5000000, 2000000, 1000000, 500000, 200000, 100000, 50000, 30000, 20000, 10000, 5000, 2000, 1000, 500, 200, 100, 50, 25, 10, 5 };
  private boolean t = true;
  private int u = 1;
  private CameraUpdate v;
  private long w;
  private AMap.CancelableCallback x;
  private ap y;
  private Location z;
  
  public b(Context paramContext)
  {
    super(paramContext);
    x();
    setClickable(true);
    a(paramContext, null);
  }
  
  private void A()
  {
    if (P) {
      P = false;
    }
    m localM;
    if (ac)
    {
      ac = false;
      localM = m.a();
      isChangeFinished = true;
      e.a(localM);
    }
    if (Q)
    {
      Q = false;
      localM = m.a();
      isChangeFinished = true;
      e.a(localM);
    }
    ab = false;
    if (q != null)
    {
      if (ad != null) {
        ad.onMarkerDragEnd(q);
      }
      q = null;
      r = null;
    }
  }
  
  private void B()
  {
    if (ap == null) {
      return;
    }
    int i1 = ap.x;
    int i2 = aF;
    int i3 = ap.y;
    int i4 = aG;
    ap.x = aF;
    ap.y = aG;
    b.d(i1 - i2, i3 - i4);
  }
  
  private CameraPosition C()
  {
    w localW = h();
    if (localW == null) {
      return null;
    }
    return CameraPosition.fromLatLngZoom(new LatLng(localW.b() / 1000000.0D, localW.a() / 1000000.0D), getZoomLevel());
  }
  
  private void D()
  {
    if (F == null) {
      return;
    }
    if (m == -1.0F)
    {
      i2 = getWidth();
      int i3 = getHeight();
      int i4 = n.getResources().getDisplayMetrics().densityDpi;
      i1 = 50;
      if (i4 <= 120) {}
      do
      {
        i1 = 100;
        break label153;
        if (i4 > 160) {
          break;
        }
      } while (Math.max(i2, i3) > 480);
      i1 = 120;
      break label153;
      if (i4 <= 240)
      {
        if (Math.min(i2, i3) >= 1000) {
          i1 = 60;
        } else {
          i1 = 70;
        }
      }
      else if ((i4 > 320) && (i4 > 480)) {
        i1 = 40;
      }
      label153:
      m = (i1 / 100.0F);
    }
    Object localObject = E();
    if (localObject == null) {
      return;
    }
    float f1 = getZoomLevel();
    float f2 = m;
    double d1 = (float)(Math.cos(latitude * 3.141592653589793D / 180.0D) * 2.0D * 3.141592653589793D * 6378137.0D / (Math.pow(2.0D, f1) * 256.0D));
    localObject = s;
    int i1 = (int)f1;
    int i2 = (int)(localObject[i1] / (d1 * f2));
    localObject = cm.a(s[i1]);
    F.a(i2);
    F.a((String)localObject);
    F.invalidate();
  }
  
  private LatLng E()
  {
    w localW = h();
    if (localW == null) {
      return null;
    }
    return new LatLng(r.a(localW.b()), r.a(localW.a()));
  }
  
  private ae F()
  {
    w localW = h();
    if (localW == null) {
      return null;
    }
    ae localAe = new ae();
    a = ((int)localW.e());
    b = ((int)localW.f());
    return localAe;
  }
  
  private LatLng a(LatLng paramLatLng)
  {
    ae localAe = new ae();
    b(latitude, longitude, localAe);
    b -= 60;
    paramLatLng = new s();
    a(a, b, paramLatLng);
    return new LatLng(b, a);
  }
  
  private void a(float paramFloat1, PointF paramPointF, float paramFloat2, float paramFloat3)
  {
    try
    {
      boolean bool = h.isZoomGesturesEnabled();
      if (!bool) {
        return;
      }
    }
    catch (RemoteException paramPointF)
    {
      cm.a(paramPointF, "AMapDelegateImpGLSurfaceView", "doScale");
      if (a != null)
      {
        if (a.c == null) {
          return;
        }
        aK = 2;
        int i1 = a.c.c() / 2;
        int i2 = a.c.d() / 2;
        double d1 = Math.log(paramFloat1) / Math.log(2.0D);
        paramFloat1 = a((float)(a.c.e() + d1));
        if (paramFloat1 != a.c.e())
        {
          c[0] = c[1];
          c[1] = paramFloat1;
          if (c[0] != c[1])
          {
            paramPointF = a.b.a(i1, i2);
            a.c.a(paramFloat1);
            a.c.a(paramPointF);
            D();
          }
        }
        return;
      }
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    if (ap == null) {
      return;
    }
    aF = paramInt1;
    aG = paramInt2;
    B();
  }
  
  private void a(int paramInt1, int paramInt2, ae paramAe)
  {
    getZoomLevel();
    Object localObject = new PointF(paramInt1, paramInt2);
    localObject = O.a((PointF)localObject, O.l, O.n, O.k, O.o);
    if (paramAe != null)
    {
      a = ((int)((w)localObject).e());
      b = ((int)((w)localObject).f());
    }
  }
  
  private void a(Context paramContext)
  {
    ap = null;
    aq = new GestureDetector(paramContext, this);
    ar = bb.a(paramContext, this);
    au = new Scroller(paramContext);
    new DisplayMetrics();
    paramContext = paramContext.getApplicationContext().getResources().getDisplayMetrics();
    aC = widthPixels;
    aD = heightPixels;
    av = (widthPixels / 2);
    aw = (heightPixels / 2);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    q.b = cp.c(paramContext);
    n = paramContext;
    try
    {
      al = new g(n, this);
      Z = new bi(this);
      setBackgroundColor(Color.rgb(222, 215, 214));
      n.a().a(this);
      l.a().a(this);
      I = new a(this);
      A = new d(this);
      M = new k(paramContext);
      i = new bu(n, this);
      a = new az(n, this, q.j);
      i.a(true);
      O = a.h;
      b = new aq(a);
      h = new ca(this);
      f = new ce(n, b, this);
      g = new au(n, this);
      y = new ap(n, e, this);
      E = new cd(n, this);
      F = new bk(n, this);
      H = new p(n, e, this);
      j = new at(n, paramAttributeSet, this);
      paramContext = new ViewGroup.LayoutParams(-1, -1);
      y();
      g.addView(i, paramContext);
      g.addView(E, paramContext);
      g.addView(F, paramContext);
      paramContext = new au.a(paramContext);
      g.addView(j, paramContext);
      paramContext = new au.a(-2, -2, new LatLng(0.0D, 0.0D), 0, 0, 83);
      g.addView(f, paramContext);
      paramContext = new au.a(-2, -2, new LatLng(0.0D, 0.0D), 0, 0, 83);
      g.addView(y, paramContext);
      try
      {
        if (!c().isMyLocationButtonEnabled()) {
          y.setVisibility(8);
        }
      }
      catch (RemoteException paramContext)
      {
        cm.a(paramContext, "AMapDelegateImpGLSurfaceView", "initEnviornment");
      }
      H.setVisibility(8);
      paramContext = new au.a(-2, -2, new LatLng(0.0D, 0.0D), 0, 0, 51);
      g.addView(H, paramContext);
      D = new bc(this, n);
      f.setId(h.a);
      al.setName("AuthThread");
      al.start();
      if (ak == null)
      {
        ak = new Timer();
        ak.schedule(am, 10000L, 1000L);
      }
      G = new c(n);
      return;
    }
    catch (Throwable paramContext)
    {
      cm.a(paramContext, "AMapDelegateImpGLSurfaceView", "initEnviornment");
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    if ((ab) && (r != null) && (q != null))
    {
      int i1 = (int)paramMotionEvent.getX();
      int i2 = (int)(paramMotionEvent.getY() - 60.0F);
      paramMotionEvent = new s();
      a(i1, i2, paramMotionEvent);
      paramMotionEvent = new LatLng(b, a);
      if ((r != null) && (r.isDraggable()))
      {
        r.a(paramMotionEvent);
        if (ad != null) {
          ad.onMarkerDrag(q);
        }
      }
    }
  }
  
  private void a(boolean paramBoolean, CameraPosition paramCameraPosition)
  {
    if (L == null) {
      return;
    }
    if (!M.a()) {
      return;
    }
    if (!isEnabled()) {
      return;
    }
    CameraPosition localCameraPosition1 = paramCameraPosition;
    CameraPosition localCameraPosition2;
    if (paramCameraPosition == null) {
      try
      {
        localCameraPosition1 = getCameraPosition();
      }
      catch (RemoteException localRemoteException)
      {
        cm.a(localRemoteException, "AMapDelegateImpGLSurfaceView", "cameraChangeFinish");
        localCameraPosition2 = paramCameraPosition;
      }
    }
    try
    {
      L.onCameraChangeFinish(localCameraPosition2);
      return;
    }
    catch (Throwable paramCameraPosition)
    {
      paramCameraPosition.printStackTrace();
    }
  }
  
  private boolean b(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    boolean bool3;
    try
    {
      boolean bool1 = ar.a(paramMotionEvent, getWidth(), getHeight());
      if (!bool1) {
        try
        {
          bool2 = aq.onTouchEvent(paramMotionEvent);
          bool1 = bool2;
        }
        catch (Throwable paramMotionEvent)
        {
          bool2 = bool1;
          break label109;
        }
      }
      bool2 = bool1;
      if (paramMotionEvent.getAction() == 1)
      {
        bool2 = bool1;
        if (ac)
        {
          bool2 = bool1;
          l.a().b();
        }
      }
      bool2 = bool1;
      if (paramMotionEvent.getAction() == 2)
      {
        bool2 = bool1;
        a(paramMotionEvent);
      }
      bool2 = bool1;
      bool3 = bool1;
      if (paramMotionEvent.getAction() == 1)
      {
        bool2 = bool1;
        A();
        return bool1;
      }
    }
    catch (Throwable paramMotionEvent)
    {
      label109:
      cm.a(paramMotionEvent, "AMapDelegateImpGLSurfaceView", "handleTouch");
      bool3 = bool2;
    }
    return bool3;
  }
  
  public static int m()
  {
    return aH;
  }
  
  public static Paint n()
  {
    try
    {
      if (aI == null)
      {
        aI = new Paint();
        aI.setColor(-7829368);
        aI.setAlpha(90);
        localObject1 = new DashPathEffect(new float[] { 2.0F, 2.5F }, 1.0F);
        aI.setPathEffect((PathEffect)localObject1);
      }
      Object localObject1 = aI;
      return localObject1;
    }
    finally {}
  }
  
  private void w()
  {
    try
    {
      if (v != null)
      {
        animateCameraWithDurationAndCallback(v, w, x);
        v = null;
        w = 0L;
        x = null;
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "AMapDelegateImpGLSurfaceView", "handleUnHandleMessage");
    }
  }
  
  private void x()
  {
    Method[] arrayOfMethod = View.class.getMethods();
    int i2 = arrayOfMethod.length;
    int i1 = 0;
    while (i1 < i2)
    {
      localMethod = arrayOfMethod[i1];
      if ((localMethod != null) && (localMethod.getName().equals("setLayerType"))) {
        break label52;
      }
      i1 += 1;
    }
    Method localMethod = null;
    label52:
    if (localMethod != null) {
      try
      {
        localMethod.invoke(this, new Object[] { Integer.valueOf(View.class.getField("LAYER_TYPE_SOFTWARE").getInt(null)), null });
        return;
      }
      catch (Exception localException)
      {
        cm.a(localException, "AMapDelegateImpGLSurfaceView", "setLayerType");
      }
    }
  }
  
  private void y()
  {
    a(n);
    ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -1);
    g.addView(this, 0, localLayoutParams);
  }
  
  private void z()
  {
    a.a();
    if (b != null)
    {
      b.b(true);
      b.e();
    }
    b = null;
    a = null;
  }
  
  public void AMapInvalidate()
  {
    postInvalidate();
    g.postInvalidate();
  }
  
  public float a(float paramFloat)
  {
    if (a != null)
    {
      if (a.c == null) {
        return paramFloat;
      }
      float f1 = paramFloat;
      if (paramFloat < a.c.b()) {
        f1 = a.c.b();
      }
      paramFloat = f1;
      if (f1 > a.c.a()) {
        paramFloat = a.c.a();
      }
      return paramFloat;
    }
    return paramFloat;
  }
  
  public az a()
  {
    return a;
  }
  
  public void a(double paramDouble1, double paramDouble2, ae paramAe)
  {
    if (O == null) {
      return;
    }
    w localW = O.b(new w((int)(paramDouble1 * 1000000.0D), (int)(paramDouble2 * 1000000.0D)));
    a = localW.a();
    b = localW.b();
  }
  
  public void a(double paramDouble1, double paramDouble2, s paramS)
  {
    getZoomLevel();
    Object localObject = new w((int)r.a(paramDouble1), (int)r.a(paramDouble2));
    localObject = O.b((w)localObject, O.l, O.n, O.k);
    if (paramS != null)
    {
      a = x;
      b = y;
    }
  }
  
  public void a(float paramFloat, Point paramPoint, boolean paramBoolean, long paramLong)
  {
    if (b != null)
    {
      if (a == null) {
        return;
      }
      float f1 = getZoomLevel();
      float f2 = cm.b(f1 + paramFloat);
      if (f2 - f1 <= 0.0F) {
        return;
      }
      new ae();
      Object localObject = F();
      if ((paramPoint != null) && (localObject != null))
      {
        ae localAe = new ae();
        a(x, y, localAe);
        int i3 = a;
        int i4 = a;
        int i1 = b;
        int i2 = b;
        double d2 = i3 - i4;
        double d1 = paramFloat;
        i3 = (int)(d2 / Math.pow(2.0D, d1) - d2);
        d2 = i1 - i2;
        i1 = (int)(d2 / Math.pow(2.0D, d1) - d2);
        a = (a + i3);
        b = (b + i1);
        localObject = new w(b, a, false);
        localObject = a.h.b((w)localObject);
        if (paramBoolean)
        {
          b.a(f2, x, y, (int)paramLong);
          return;
        }
        b.a((w)localObject);
        l.a().b();
      }
      return;
    }
  }
  
  public void a(int paramInt1, int paramInt2, s paramS)
  {
    Object localObject = new PointF(paramInt1, paramInt2);
    localObject = O.a((PointF)localObject, O.l, O.n, O.k, O.o);
    if (paramS != null)
    {
      double d1 = r.a(((w)localObject).b());
      double d2 = r.a(((w)localObject).a());
      b = d1;
      a = d2;
    }
  }
  
  protected void a(MapCameraMessage paramMapCameraMessage, boolean paramBoolean, long paramLong)
  {
    if (b == null) {
      return;
    }
    for (;;)
    {
      float f2;
      try
      {
        Object localObject = bounds;
        if ((localObject != null) && (northeast != null))
        {
          if (southwest == null) {
            return;
          }
          float f1 = (float)(northeast.latitude * 1000000.0D - southwest.latitude * 1000000.0D);
          f2 = (float)(northeast.longitude * 1000000.0D - southwest.longitude * 1000000.0D);
          int i1 = (int)((northeast.latitude * 1000000.0D + southwest.latitude * 1000000.0D) / 2.0D);
          int i2 = (int)((northeast.longitude * 1000000.0D + southwest.longitude * 1000000.0D) / 2.0D);
          if (f1 == 0.0F)
          {
            f1 = 1.0F;
            break label246;
            localObject = new w(i1, i2);
            if (paramBoolean) {
              b.a((w)localObject, (int)paramLong);
            } else {
              b.a((w)localObject);
            }
            b.a(f1, f2, width, height, padding);
          }
        }
        else
        {
          return;
        }
      }
      catch (Exception paramMapCameraMessage)
      {
        cm.a(paramMapCameraMessage, "AMapDelegateImpGLSurfaceView", "newLatLngBoundsWithSize");
        return;
      }
      label246:
      if (f2 == 0.0F) {
        f2 = 1.0F;
      }
    }
  }
  
  public void a(ab paramAb)
    throws RemoteException
  {
    if (paramAb == null) {
      return;
    }
    if ((paramAb.getTitle() == null) && (paramAb.getSnippet() == null)) {
      return;
    }
    e();
    Object localObject1 = new Marker(paramAb);
    if (T != null) {
      R = T.getInfoWindow((Marker)localObject1);
    }
    try
    {
      if (W == null) {
        W = bd.a(n, "infowindow_bg2d.9.png");
      }
    }
    catch (Exception localException)
    {
      cm.a(localException, "AMapDelegateImpGLSurfaceView", "showInfoWindow");
    }
    if ((R == null) && (T != null)) {
      R = T.getInfoContents((Marker)localObject1);
    }
    if (R != null)
    {
      if (R.getBackground() == null) {
        R.setBackgroundDrawable(W);
      }
    }
    else
    {
      localObject1 = new LinearLayout(n);
      ((LinearLayout)localObject1).setBackgroundDrawable(W);
      localObject2 = new TextView(n);
      ((TextView)localObject2).setText(paramAb.getTitle());
      ((TextView)localObject2).setTextColor(-16777216);
      TextView localTextView = new TextView(n);
      localTextView.setTextColor(-16777216);
      localTextView.setText(paramAb.getSnippet());
      ((LinearLayout)localObject1).setOrientation(1);
      ((LinearLayout)localObject1).addView((View)localObject2);
      ((LinearLayout)localObject1).addView(localTextView);
      R = ((View)localObject1);
    }
    localObject1 = R.getLayoutParams();
    R.setDrawingCacheEnabled(true);
    R.setDrawingCacheQuality(0);
    Object localObject2 = paramAb.b();
    int i1;
    int i2;
    if (localObject1 != null)
    {
      i1 = width;
      i2 = height;
    }
    else
    {
      i1 = -2;
      i2 = -2;
    }
    localObject1 = new au.a(i1, i2, paramAb.getRealPosition(), -(int)a + paramAb.getWidth() / 2, -(int)b + 2, 81);
    U = ((ay)paramAb);
    if (g != null) {
      g.addView(R, (ViewGroup.LayoutParams)localObject1);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (j() == paramBoolean) {
      return;
    }
    if (a == null) {
      return;
    }
    if (!paramBoolean)
    {
      ae.a(ae.h, false);
      ae.a(ae.g, true);
      ac.a(false, false);
      return;
    }
    if (ae.b(ae.h) != null)
    {
      ae.a(ae.h, true);
      ac.a(false, false);
      return;
    }
    an localAn = new an(O);
    q = new bv(a, localAn);
    j = new cb()
    {
      public String a(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(ax.a().e());
        localStringBuilder.append("/appmaptile?z=");
        localStringBuilder.append(paramAnonymousInt3);
        localStringBuilder.append("&x=");
        localStringBuilder.append(paramAnonymousInt1);
        localStringBuilder.append("&y=");
        localStringBuilder.append(paramAnonymousInt2);
        localStringBuilder.append("&lang=zh_cn&size=1&scale=1&style=6");
        return localStringBuilder.toString();
      }
    };
    b = ae.h;
    e = true;
    localAn.a(true);
    f = true;
    c = q.c;
    d = q.d;
    ae.a(localAn, n);
    ae.a(ae.h, true);
    ac.a(false, false);
  }
  
  public boolean a(float paramFloat1, float paramFloat2)
  {
    if (b != null) {
      b.b(true);
    }
    if (az)
    {
      aA += paramFloat1;
      aB += paramFloat2;
    }
    invalidate();
    return az;
  }
  
  public boolean a(float paramFloat, PointF paramPointF)
  {
    try
    {
      boolean bool = h.isZoomGesturesEnabled();
      if (!bool) {
        return false;
      }
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "AMapDelegateImpGLSurfaceView", "onScale");
      if ((a != null) && (a.e != null)) {
        a.e.c = false;
      }
      r();
      a(paramFloat, paramPointF, aA, aB);
      az = false;
      postInvalidateDelayed(8L);
      a.a(true);
    }
    return true;
  }
  
  public boolean a(Matrix paramMatrix)
  {
    return false;
  }
  
  public boolean a(PointF paramPointF)
  {
    try
    {
      bool = h.isZoomGesturesEnabled();
      if (!bool) {
        return false;
      }
    }
    catch (RemoteException paramPointF)
    {
      boolean bool;
      cm.a(paramPointF, "AMapDelegateImpGLSurfaceView", "startScale");
      try
      {
        bool = c().isZoomGesturesEnabled();
        if (!bool) {
          return false;
        }
      }
      catch (RemoteException paramPointF)
      {
        cm.a(paramPointF, "AMapDelegateImpGLSurfaceView", "startScale");
        if ((a != null) && (a.e != null))
        {
          a.a(p);
          a.e.a(true);
          a.e.c = true;
        }
        az = true;
      }
    }
    return true;
  }
  
  public Circle addCircle(CircleOptions paramCircleOptions)
    throws RemoteException
  {
    try
    {
      if (a == null) {
        return null;
      }
      paramCircleOptions = a.f.a(paramCircleOptions);
      invalidate();
      if (paramCircleOptions != null)
      {
        paramCircleOptions = new Circle(paramCircleOptions);
        return paramCircleOptions;
      }
    }
    catch (Throwable paramCircleOptions)
    {
      cm.a(paramCircleOptions, "AMapDelegateImpGLSurfaceView", "addCircle");
    }
    return null;
  }
  
  public GroundOverlay addGroundOverlay(GroundOverlayOptions paramGroundOverlayOptions)
    throws RemoteException
  {
    try
    {
      if (a == null) {
        return null;
      }
      paramGroundOverlayOptions = a.f.a(paramGroundOverlayOptions);
      invalidate();
      if (paramGroundOverlayOptions != null)
      {
        paramGroundOverlayOptions = new GroundOverlay(paramGroundOverlayOptions);
        return paramGroundOverlayOptions;
      }
    }
    catch (Throwable paramGroundOverlayOptions)
    {
      cm.a(paramGroundOverlayOptions, "AMapDelegateImpGLSurfaceView", "addGroundOverlay");
    }
    return null;
  }
  
  public Marker addMarker(MarkerOptions paramMarkerOptions)
    throws RemoteException
  {
    if (paramMarkerOptions == null) {
      return null;
    }
    try
    {
      paramMarkerOptions = new ay(paramMarkerOptions, j);
      j.a(paramMarkerOptions);
      invalidate();
      paramMarkerOptions = new Marker(paramMarkerOptions);
      return paramMarkerOptions;
    }
    catch (Throwable paramMarkerOptions)
    {
      cm.a(paramMarkerOptions, "AMapDelegateImpGLSurfaceView", "addMarker");
    }
    return null;
  }
  
  public Polygon addPolygon(PolygonOptions paramPolygonOptions)
    throws RemoteException
  {
    try
    {
      if (a != null)
      {
        if (a.f == null) {
          return null;
        }
        paramPolygonOptions = a.f.a(paramPolygonOptions);
        invalidate();
        if (paramPolygonOptions != null)
        {
          paramPolygonOptions = new Polygon(paramPolygonOptions);
          return paramPolygonOptions;
        }
      }
      else
      {
        return null;
      }
    }
    catch (Throwable paramPolygonOptions)
    {
      cm.a(paramPolygonOptions, "AMapDelegateImpGLSurfaceView", "addPolygon");
    }
    return null;
  }
  
  public Polyline addPolyline(PolylineOptions paramPolylineOptions)
    throws RemoteException
  {
    try
    {
      if (a == null) {
        return null;
      }
      paramPolylineOptions = af.a(paramPolylineOptions);
      invalidate();
      if (paramPolylineOptions != null)
      {
        paramPolylineOptions = new Polyline(paramPolylineOptions);
        return paramPolylineOptions;
      }
    }
    catch (Throwable paramPolylineOptions)
    {
      cm.a(paramPolylineOptions, "AMapDelegateImpGLSurfaceView", "addPolyline");
    }
    return null;
  }
  
  public Text addText(TextOptions paramTextOptions)
    throws RemoteException
  {
    paramTextOptions = new bp(this, paramTextOptions, j);
    j.a(paramTextOptions);
    invalidate();
    return new Text(paramTextOptions);
  }
  
  public TileOverlay addTileOverlay(TileOverlayOptions paramTileOverlayOptions)
    throws RemoteException
  {
    if (a == null) {
      return null;
    }
    paramTileOverlayOptions = new bt(paramTileOverlayOptions, i, a.h, a, n);
    i.a(paramTileOverlayOptions);
    invalidate();
    return new TileOverlay(paramTileOverlayOptions);
  }
  
  public void animateCamera(CameraUpdate paramCameraUpdate)
    throws RemoteException
  {
    if (paramCameraUpdate == null) {
      return;
    }
    animateCameraWithCallback(paramCameraUpdate, null);
  }
  
  public void animateCameraWithCallback(CameraUpdate paramCameraUpdate, AMap.CancelableCallback paramCancelableCallback)
    throws RemoteException
  {
    if (paramCameraUpdate == null) {
      return;
    }
    try
    {
      animateCameraWithDurationAndCallback(paramCameraUpdate, 250L, paramCancelableCallback);
      return;
    }
    catch (Throwable paramCameraUpdate)
    {
      paramCameraUpdate.printStackTrace();
    }
  }
  
  public void animateCameraWithDurationAndCallback(CameraUpdate paramCameraUpdate, long paramLong, AMap.CancelableCallback paramCancelableCallback)
    throws RemoteException
  {
    if (paramCameraUpdate == null) {
      return;
    }
    MapCameraMessage localMapCameraMessage = paramCameraUpdate.getCameraUpdateFactoryDelegate();
    if ((nowType == MapCameraMessage.Type.newLatLngBounds) && (!cm.a(getWidth(), getHeight())))
    {
      v = paramCameraUpdate;
      w = paramLong;
      x = paramCancelableCallback;
      return;
    }
    if (b == null) {
      return;
    }
    if (paramCancelableCallback != null) {}
    try
    {
      N = paramCancelableCallback;
      if (b.f()) {
        b.g();
      }
      if (paramCancelableCallback != null) {
        N = paramCancelableCallback;
      }
      if (J) {
        K = true;
      }
      if (nowType == MapCameraMessage.Type.scrollBy)
      {
        r();
        if (a == null) {
          return;
        }
        if (!o) {
          return;
        }
        b.a((int)xPixel, (int)yPixel, (int)paramLong);
        postInvalidate();
        return;
      }
      if (nowType == MapCameraMessage.Type.zoomIn)
      {
        b.a((int)paramLong);
        return;
      }
      if (nowType == MapCameraMessage.Type.zoomOut)
      {
        b.b((int)paramLong);
        return;
      }
      float f1;
      if (nowType == MapCameraMessage.Type.zoomTo)
      {
        f1 = zoom;
        b.a(f1, (int)paramLong);
        return;
      }
      if (nowType == MapCameraMessage.Type.zoomBy)
      {
        f1 = amount;
        paramCancelableCallback = focus;
        paramCameraUpdate = paramCancelableCallback;
        if (paramCancelableCallback == null) {
          paramCameraUpdate = new Point(a.c.c() / 2, a.c.d() / 2);
        }
        a(f1, paramCameraUpdate, true, paramLong);
        return;
      }
      int i1;
      int i2;
      if (nowType == MapCameraMessage.Type.newCameraPosition)
      {
        paramCameraUpdate = cameraPosition;
        b.c(zoom);
        i1 = (int)(target.latitude * 1000000.0D);
        i2 = (int)(target.longitude * 1000000.0D);
        b.a(new w(i1, i2), (int)paramLong);
        return;
      }
      if (nowType == MapCameraMessage.Type.changeCenter)
      {
        paramCameraUpdate = cameraPosition;
        i1 = (int)(target.latitude * 1000000.0D);
        i2 = (int)(target.longitude * 1000000.0D);
        b.a(new w(i1, i2), (int)paramLong);
        return;
      }
      if ((nowType != MapCameraMessage.Type.newLatLngBounds) && (nowType != MapCameraMessage.Type.newLatLngBoundsWithSize))
      {
        isChangeFinished = true;
        e.a((m)localMapCameraMessage);
        return;
      }
      r();
      a(localMapCameraMessage, true, paramLong);
      return;
    }
    catch (Throwable paramCameraUpdate)
    {
      for (;;) {}
    }
    cm.a(paramCameraUpdate, "AMapDelegateImpGLSurfaceView", "animateCameraWithDurationAndCallback");
  }
  
  protected PointF b(PointF paramPointF)
  {
    PointF localPointF = new PointF();
    int i2 = getWidth();
    int i1 = getHeight();
    float f1 = x;
    i2 >>= 1;
    float f2 = i2;
    float f3 = y;
    i1 >>= 1;
    double d2 = f3 - i1;
    double d3 = f1 - f2;
    double d1 = Math.atan2(d2, d3);
    d2 = Math.sqrt(Math.pow(d3, 2.0D) + Math.pow(d2, 2.0D));
    d1 -= q() * 3.141592653589793D / 180.0D;
    x = ((float)(Math.cos(d1) * d2 + i2));
    y = ((float)(d2 * Math.sin(d1) + i1));
    return localPointF;
  }
  
  public bc b()
  {
    return D;
  }
  
  public void b(double paramDouble1, double paramDouble2, ae paramAe)
  {
    if (O == null) {
      return;
    }
    getZoomLevel();
    Object localObject = new w((int)r.a(paramDouble1), (int)r.a(paramDouble2));
    localObject = O.b((w)localObject, O.l, O.n, O.k);
    if (paramAe != null)
    {
      a = ((int)x);
      b = ((int)y);
    }
  }
  
  public void b(float paramFloat)
  {
    ay = paramFloat;
  }
  
  public void b(int paramInt1, int paramInt2, s paramS)
  {
    if (paramS != null)
    {
      a = r.a(paramInt1);
      b = r.a(paramInt2);
    }
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean == k()) {
      return;
    }
    if (a == null) {
      return;
    }
    String str = ae.i;
    if (!paramBoolean)
    {
      ae.a(str, false);
      ac.a(false, false);
      return;
    }
    if (ae.b(str) != null)
    {
      ae.a(str, true);
      ac.a(false, false);
      return;
    }
    an localAn = new an(O);
    q = new bv(a, localAn);
    g = true;
    i = 120000L;
    j = new cb()
    {
      public String a(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(ax.a().c());
        localStringBuilder.append("/trafficengine/mapabc/traffictile?v=w2.61&zoom=");
        localStringBuilder.append(17 - paramAnonymousInt3);
        localStringBuilder.append("&x=");
        localStringBuilder.append(paramAnonymousInt1);
        localStringBuilder.append("&y=");
        localStringBuilder.append(paramAnonymousInt2);
        return localStringBuilder.toString();
      }
    };
    b = str;
    e = false;
    localAn.a(true);
    f = false;
    c = 18;
    d = 9;
    ae.a(localAn, getContext());
    ae.a(str, true);
    ac.a(false, false);
  }
  
  public boolean b(float paramFloat, PointF paramPointF)
  {
    az = false;
    try
    {
      boolean bool = h.isZoomGesturesEnabled();
      if (!bool) {
        return false;
      }
    }
    catch (RemoteException paramPointF)
    {
      cm.a(paramPointF, "AMapDelegateImpGLSurfaceView", "endScale");
      l.a().b();
    }
    return true;
  }
  
  public boolean b(Matrix paramMatrix)
  {
    try
    {
      boolean bool = h.isZoomGesturesEnabled();
      if (!bool) {
        return false;
      }
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "AMapDelegateImpGLSurfaceView", "onScale");
      ax.set(paramMatrix);
      postInvalidate();
    }
    return true;
  }
  
  public boolean b(ab paramAb)
  {
    if ((U != null) && (R != null) && (paramAb != null)) {
      return U.getId().equals(paramAb.getId());
    }
    return false;
  }
  
  protected PointF c(PointF paramPointF)
  {
    PointF localPointF = new PointF();
    int i2 = getWidth();
    int i1 = getHeight();
    float f1 = x;
    i2 >>= 1;
    float f2 = i2;
    float f3 = y;
    i1 >>= 1;
    double d2 = f3 - i1;
    double d3 = f1 - f2;
    double d1 = Math.atan2(d2, d3);
    d2 = Math.sqrt(Math.pow(d3, 2.0D) + Math.pow(d2, 2.0D));
    d1 += q() * 3.141592653589793D / 180.0D;
    x = ((float)(Math.cos(d1) * d2 + i2));
    y = ((float)(d2 * Math.sin(d1) + i1));
    return localPointF;
  }
  
  public al c()
    throws RemoteException
  {
    return h;
  }
  
  public boolean c(float paramFloat)
  {
    try
    {
      boolean bool = h.isZoomGesturesEnabled();
      if (!bool) {
        return false;
      }
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "AMapDelegateImpGLSurfaceView", "onScale");
      b(paramFloat);
    }
    return false;
  }
  
  public void clear()
    throws RemoteException
  {
    try
    {
      e();
      if (a == null) {
        return;
      }
      a.f.a();
      j.c();
      i.b();
      if (D != null) {
        D.a();
      }
      invalidate();
      return;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "AMapDelegateImpGLSurfaceView", "clear");
      return;
    }
    catch (Exception localException)
    {
      cm.a(localException, "AMapDelegateImpGLSurfaceView", "clear");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("AMapDelegateImpGLSurfaceView clear erro");
      localStringBuilder.append(localException.getMessage());
      Log.d("amapApi", localStringBuilder.toString());
    }
  }
  
  public void computeScroll()
  {
    if ((au.computeScrollOffset()) && (au.isFinished()))
    {
      int i1 = au.getCurrX();
      int i2 = av;
      int i3 = au.getCurrY();
      int i4 = aw;
      av = au.getCurrX();
      aw = au.getCurrY();
      w localW = a.b.a(a.h.n.x + (i1 - i2), a.h.n.y + (i3 - i4));
      if (au.isFinished())
      {
        l.a().b();
        if (L != null) {
          a(true, C());
        }
        a.c.a(false, false);
        return;
      }
      a.c.b(localW);
      return;
    }
    super.computeScroll();
  }
  
  public bh d()
  {
    if (a == null) {
      return null;
    }
    return a.b;
  }
  
  public void destroy()
  {
    try
    {
      if (ak != null)
      {
        ak.cancel();
        ak = null;
      }
      if (am != null)
      {
        am.cancel();
        am = null;
      }
      if (ao != null) {
        ao.removeCallbacksAndMessages(null);
      }
      if (k != null) {
        k.removeCallbacksAndMessages(null);
      }
      if (al != null)
      {
        al.interrupt();
        al = null;
      }
      n.a().b(this);
      bm.a().a(this);
      l.a().b(this);
      f.a();
      F.a();
      E.a();
      y.a();
      H.a();
      a.f.b();
      j.f();
      if (W != null) {
        W.setCallback(null);
      }
      g.removeAllViews();
      e();
      if (i != null) {
        i.f();
      }
      if (a != null)
      {
        a.d.b();
        z();
      }
      G = null;
      ah = null;
      q.h = null;
      q.g = null;
      dg.b();
      return;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "AMapDelegateImpGLSurfaceView", "destroy");
    }
  }
  
  public void e()
  {
    if (R != null)
    {
      R.clearFocus();
      R.destroyDrawingCache();
      if (g != null) {
        g.removeView(R);
      }
      Drawable localDrawable = R.getBackground();
      if (localDrawable != null) {
        localDrawable.setCallback(null);
      }
      R = null;
    }
    U = null;
  }
  
  Point f()
  {
    return E.c();
  }
  
  public boolean g()
  {
    return p;
  }
  
  public Projection getAMapProjection()
    throws RemoteException
  {
    return new Projection(Z);
  }
  
  public UiSettings getAMapUiSettings()
    throws RemoteException
  {
    return new UiSettings(h);
  }
  
  public CameraPosition getCameraPosition()
    throws RemoteException
  {
    LatLng localLatLng = E();
    if (localLatLng == null) {
      return null;
    }
    float f1 = getZoomLevel();
    return CameraPosition.builder().target(localLatLng).zoom(f1).build();
  }
  
  public int getLogoPosition()
  {
    return E.d();
  }
  
  public Handler getMainHandler()
  {
    return k;
  }
  
  public LatLngBounds getMapBounds()
  {
    return null;
  }
  
  public int getMapHeight()
  {
    if ((a != null) && (a.c != null)) {
      return a.c.d();
    }
    return 0;
  }
  
  public List<Marker> getMapScreenMarkers()
  {
    if (!cm.a(getWidth(), getHeight())) {
      return new ArrayList();
    }
    return j.g();
  }
  
  public void getMapScreenShot(AMap.OnMapScreenShotListener paramOnMapScreenShotListener)
  {
    aj = paramOnMapScreenShotListener;
    aa = true;
  }
  
  public int getMapType()
    throws RemoteException
  {
    return u;
  }
  
  public int getMapWidth()
  {
    if ((a != null) && (a.c != null)) {
      return a.c.c();
    }
    return 0;
  }
  
  public float getMaxZoomLevel()
  {
    if ((a != null) && (a.c != null)) {
      return a.c.a();
    }
    return q.c;
  }
  
  public float getMinZoomLevel()
  {
    if ((a != null) && (a.c != null)) {
      return a.c.b();
    }
    return q.d;
  }
  
  public Location getMyLocation()
    throws RemoteException
  {
    if ((G != null) && (A != null)) {
      return A.a;
    }
    return null;
  }
  
  public AMap.OnCameraChangeListener getOnCameraChangeListener()
    throws RemoteException
  {
    return L;
  }
  
  public float getScalePerPixel()
  {
    int i1 = getWidth();
    s localS1 = new s();
    s localS2 = new s();
    a(0, 0, localS1);
    a(i1, 0, localS2);
    return (float)(cm.a(new LatLng(b, a), new LatLng(b, a)) / i1);
  }
  
  public View getView()
    throws RemoteException
  {
    return g;
  }
  
  public float getZoomLevel()
  {
    if (a != null)
    {
      if (a.c == null) {
        return 0.0F;
      }
      try
      {
        float f1 = a.c.e();
        return f1;
      }
      catch (Exception localException)
      {
        cm.a(localException, "AMapDelegateImpGLSurfaceView", "getZoomLevel");
        return 0.0F;
      }
    }
    return 0.0F;
  }
  
  public w h()
  {
    if ((a != null) && (a.c != null)) {
      return a.c.f();
    }
    return null;
  }
  
  public aq i()
  {
    return b;
  }
  
  public boolean isMyLocationEnabled()
    throws RemoteException
  {
    return C;
  }
  
  public boolean isTrafficEnabled()
    throws RemoteException
  {
    return k();
  }
  
  public boolean j()
  {
    if (a != null)
    {
      if (a.e == null) {
        return false;
      }
      an localAn = ae.b(ae.h);
      if (localAn != null) {
        return localAn.a();
      }
      return false;
    }
    return false;
  }
  
  public boolean k()
  {
    if (a() == null) {
      return false;
    }
    Object localObject = ae.i;
    localObject = ae.b((String)localObject);
    if (localObject != null) {
      return ((an)localObject).a();
    }
    return false;
  }
  
  public bb l()
  {
    return ar;
  }
  
  public void moveCamera(CameraUpdate paramCameraUpdate)
    throws RemoteException
  {
    if (paramCameraUpdate == null) {
      return;
    }
    I.a(paramCameraUpdate.getCameraUpdateFactoryDelegate());
  }
  
  public float o()
  {
    return ay;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
  }
  
  public boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    try
    {
      boolean bool = h.isZoomGesturesEnabled();
      if (!bool) {
        return true;
      }
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "AMapDelegateImpGLSurfaceView", "onDoubleTap");
      if (t) {
        if (h.isZoomInByScreenCenter()) {
          b.c();
        } else {
          b.c((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
        }
      }
      if (aK > 1) {
        return true;
      }
      aL = true;
      if ((a != null) && (a.c != null)) {
        f.a(a.c.e() + 1.0F);
      }
    }
    return true;
  }
  
  public boolean onDoubleTapEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public boolean onDown(MotionEvent paramMotionEvent)
  {
    ac = false;
    if ((!aL) && (!M.a()))
    {
      M.a(true);
      if (N != null) {
        N.onCancel();
      }
      N = null;
    }
    aL = false;
    aK = 0;
    if (ap == null)
    {
      ap = new Point((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
      return true;
    }
    ap.set((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
    return true;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    for (;;)
    {
      int i2;
      try
      {
        Object localObject = n();
        paramCanvas.drawColor(m());
        i1 = getWidth();
        i2 = getHeight();
        if (i1 <= i2) {
          break label298;
        }
        float f1 = getLeft();
        float f2 = getTop();
        i2 = 0;
        if (i2 < i1)
        {
          float f3 = i2;
          paramCanvas.drawLine(f1, f3, f1 + getWidth(), f3, (Paint)localObject);
          paramCanvas.drawLine(f3, f2, f3, f2 + getHeight(), (Paint)localObject);
          i2 += 256;
          continue;
        }
        if (aa)
        {
          setDrawingCacheEnabled(true);
          buildDrawingCache();
          localObject = getDrawingCache();
          Message localMessage = k.obtainMessage();
          what = 16;
          obj = localObject;
          k.sendMessage(localMessage);
          aa = false;
        }
        if ((a != null) && (a.c != null)) {
          a.c.a(getWidth(), getHeight());
        }
        if ((a != null) && (a.e != null)) {
          a.e.a(paramCanvas, ax, aA, aB);
        }
        if (!M.a()) {
          k.sendEmptyMessage(13);
        }
        if (!ai)
        {
          k.sendEmptyMessage(11);
          ai = true;
          return;
        }
      }
      catch (Throwable paramCanvas)
      {
        cm.a(paramCanvas, "AMapDelegateImpGLSurfaceView", "onDraw");
      }
      return;
      label298:
      int i1 = i2;
    }
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (!ar.k)
    {
      if (paramMotionEvent1.getEventTime() - ar.o < 30L) {
        return true;
      }
      invalidate();
      ac = false;
      try
      {
        boolean bool = h.isScrollGesturesEnabled();
        if (!bool) {
          return true;
        }
      }
      catch (RemoteException paramMotionEvent1)
      {
        cm.a(paramMotionEvent1, "AMapDelegateImpGLSurfaceView", "onFling");
        N = null;
        au.fling(av, aw, (int)-paramFloat1 * 3 / 5, (int)-paramFloat2 * 3 / 5, -aC, aC, -aD, aD);
        return true;
      }
    }
    return true;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    az localAz = a;
    boolean bool = true;
    if (localAz == null) {
      return true;
    }
    if (!o) {
      return false;
    }
    if (!a.e.a(paramInt, paramKeyEvent))
    {
      if (b.onKey(this, paramInt, paramKeyEvent)) {
        return true;
      }
      bool = false;
    }
    return bool;
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    az localAz = a;
    boolean bool = true;
    if (localAz == null) {
      return true;
    }
    if (!o) {
      return false;
    }
    if (!a.e.b(paramInt, paramKeyEvent))
    {
      if (b.onKey(this, paramInt, paramKeyEvent)) {
        return true;
      }
      bool = false;
    }
    return bool;
  }
  
  public void onLongPress(MotionEvent paramMotionEvent)
  {
    try
    {
      ac = false;
      if (af != null)
      {
        s localS = new s();
        a((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY(), localS);
        af.onMapLongClick(new LatLng(b, a));
        P = true;
      }
      r = j.a(paramMotionEvent);
      if (r == null) {
        return;
      }
      q = new Marker(r);
      if ((r != null) && (r.isDraggable()))
      {
        paramMotionEvent = a(r.getRealPosition());
        r.a(paramMotionEvent);
        j.c(r);
        if (ad != null) {
          ad.onMarkerDragStart(q);
        }
        ab = true;
        return;
      }
    }
    catch (Throwable paramMotionEvent)
    {
      paramMotionEvent.printStackTrace();
    }
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void onPause()
  {
    if ((a != null) && (a.d != null)) {
      a.d.d();
    }
    if (i != null) {
      i.d();
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    super.onRestoreInstanceState(paramParcelable);
  }
  
  public void onResume()
  {
    if ((a != null) && (a.d != null)) {
      a.d.c();
    }
    if (i != null) {
      i.e();
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    return super.onSaveInstanceState();
  }
  
  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (!ar.k)
    {
      if (paramMotionEvent2.getEventTime() - ar.o < 30L) {
        return true;
      }
      try
      {
        if (!h.isScrollGesturesEnabled())
        {
          ac = false;
          return true;
        }
      }
      catch (RemoteException paramMotionEvent1)
      {
        cm.a(paramMotionEvent1, "AMapDelegateImpGLSurfaceView", "onScroll");
        if (aK > 1)
        {
          ac = false;
          return true;
        }
        ac = true;
        a((int)paramMotionEvent2.getX(), (int)paramMotionEvent2.getY());
        postInvalidate();
        r();
        return true;
      }
    }
    return true;
  }
  
  public void onShowPress(MotionEvent paramMotionEvent) {}
  
  public boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    if (b != null)
    {
      if (a == null) {
        return false;
      }
      a.e.b(paramMotionEvent);
      Object localObject = as.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((GestureDetector.OnGestureListener)((Iterator)localObject).next()).onSingleTapUp(paramMotionEvent);
      }
      ac = false;
      if (P)
      {
        P = false;
        return true;
      }
      try
      {
        if (R != null)
        {
          localObject = new Rect(R.getLeft(), R.getTop(), R.getRight(), R.getBottom());
          if ((j.a((Rect)localObject, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) && (S != null))
          {
            paramMotionEvent = j.e();
            if (!paramMotionEvent.isVisible()) {
              return true;
            }
            paramMotionEvent = new Marker(paramMotionEvent);
            S.onInfoWindowClick(paramMotionEvent);
            return true;
          }
        }
        if (j.b(paramMotionEvent))
        {
          paramMotionEvent = j.e();
          if (paramMotionEvent == null) {
            break label432;
          }
          if (!paramMotionEvent.isVisible()) {
            return true;
          }
          localObject = new Marker(paramMotionEvent);
          if (V != null)
          {
            if (!V.onMarkerClick((Marker)localObject))
            {
              int i1 = j.b();
              if (i1 > 0) {
                try
                {
                  if ((j.e() == null) || (paramMotionEvent.isViewMode())) {
                    break label346;
                  }
                  localObject = paramMotionEvent.getRealPosition();
                  if (localObject == null) {
                    break label346;
                  }
                  b.a(cm.a((LatLng)localObject));
                  l.a().b();
                }
                catch (Throwable localThrowable)
                {
                  cm.a(localThrowable, "AMapDelegateImpGLSurfaceView", "onSingleTapConfirmed");
                }
              }
            }
            j.c(paramMotionEvent);
            return true;
          }
          label346:
          a(paramMotionEvent);
          j.c(paramMotionEvent);
          return true;
        }
        if (ah != null)
        {
          s localS = new s();
          a((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY(), localS);
          ah.onMapClick(new LatLng(b, a));
        }
        return true;
      }
      catch (Throwable paramMotionEvent)
      {
        cm.a(paramMotionEvent, "AMapDelegateImpGLSurfaceView", "onSingleTapConfirmed");
        return true;
      }
    }
    return false;
    label432:
    return true;
  }
  
  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    Point localPoint = new Point(paramInt1 / 2, paramInt2 / 2);
    a.h.a(localPoint);
    a.c.a(paramInt1, paramInt2);
    if ((b.a() != 0.0F) && (b.b() != 0.0F))
    {
      b.a(b.a(), b.b());
      b.a(0.0F);
      b.b(0.0F);
    }
    redrawInfoWindow();
    if (aM != null) {
      aM.a(paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!q.r) {
      return true;
    }
    if (a == null) {
      return true;
    }
    if (!o) {
      return false;
    }
    if (ae != null)
    {
      ao.removeMessages(1);
      Message localMessage = ao.obtainMessage();
      what = 1;
      obj = MotionEvent.obtain(paramMotionEvent);
      localMessage.sendToTarget();
    }
    if (a.e.a(paramMotionEvent)) {
      return true;
    }
    b(paramMotionEvent);
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
  }
  
  public void p()
  {
    aA = 0.0F;
    aB = 0.0F;
  }
  
  public int q()
  {
    return 0;
  }
  
  protected void r()
  {
    k.sendEmptyMessage(10);
  }
  
  public void redrawInfoWindow()
  {
    if ((R != null) && (U != null))
    {
      au.a localA = (au.a)R.getLayoutParams();
      if (localA != null) {
        b = U.getRealPosition();
      }
      g.a();
    }
  }
  
  public boolean removeGLOverlay(String paramString)
    throws RemoteException
  {
    if (a == null) {
      return false;
    }
    return a.f.b(paramString);
  }
  
  public boolean removeMarker(String paramString)
  {
    try
    {
      paramString = j.a(paramString);
    }
    catch (RemoteException paramString)
    {
      cm.a(paramString, "AMapDelegateImpGLSurfaceView", "removeMarker");
      paramString = null;
    }
    if (paramString != null) {
      return j.b(paramString);
    }
    return false;
  }
  
  public void removecache()
  {
    removecache(null);
  }
  
  public void removecache(AMap.OnCacheRemoveListener paramOnCacheRemoveListener)
  {
    if (an != null) {
      try
      {
        paramOnCacheRemoveListener = new b(n, paramOnCacheRemoveListener);
        an.removeCallbacks(paramOnCacheRemoveListener);
        an.post(paramOnCacheRemoveListener);
        return;
      }
      catch (Throwable paramOnCacheRemoveListener)
      {
        dg.b(paramOnCacheRemoveListener, "AMapDelegateImpGLSurfaceView", "removecache");
        paramOnCacheRemoveListener.printStackTrace();
      }
    }
  }
  
  void s()
  {
    k.sendEmptyMessage(15);
  }
  
  public void setClickable(boolean paramBoolean)
  {
    o = paramBoolean;
    super.setClickable(paramBoolean);
  }
  
  public void setInfoWindowAdapter(AMap.InfoWindowAdapter paramInfoWindowAdapter)
    throws RemoteException
  {
    T = paramInfoWindowAdapter;
  }
  
  public void setLocationSource(LocationSource paramLocationSource)
    throws RemoteException
  {
    if (y == null) {
      return;
    }
    if ((G != null) && ((G instanceof c))) {
      G.deactivate();
    }
    G = paramLocationSource;
    if (paramLocationSource != null)
    {
      y.a(true);
      return;
    }
    y.a(false);
  }
  
  public void setLogoPosition(int paramInt)
  {
    if (E != null)
    {
      E.a(paramInt);
      E.invalidate();
      if (F.getVisibility() == 0) {
        F.invalidate();
      }
    }
  }
  
  public void setMapLanguage(String paramString)
    throws RemoteException
  {
    if (a != null)
    {
      if (a.e == null) {
        return;
      }
      if (j()) {
        return;
      }
      a.e.a(paramString);
      return;
    }
  }
  
  public void setMapType(int paramInt)
    throws RemoteException
  {
    if (paramInt == 2)
    {
      u = 2;
      a(true);
      E.a(true);
    }
    else
    {
      u = 1;
      a(false);
      E.a(false);
    }
    postInvalidate();
  }
  
  public void setMyLocationEnabled(boolean paramBoolean)
    throws RemoteException
  {
    try
    {
      if (G != null)
      {
        if (paramBoolean)
        {
          G.activate(A);
          y.a(true);
          if (D == null) {
            D = new bc(this, n);
          }
        }
        else
        {
          if (D != null)
          {
            D.a();
            D = null;
          }
          G.deactivate();
          y.a(false);
        }
      }
      else {
        y.a(false);
      }
      if (!paramBoolean) {
        h.setMyLocationButtonEnabled(paramBoolean);
      }
      C = paramBoolean;
      return;
    }
    catch (Throwable localThrowable)
    {
      dg.b(localThrowable, "AMapDelegateImpGLSurfaceView", "setMyLocationEnabled");
      localThrowable.printStackTrace();
    }
  }
  
  public void setMyLocationRotateAngle(float paramFloat)
    throws RemoteException
  {
    if (D != null) {
      D.a(paramFloat);
    }
  }
  
  public void setMyLocationStyle(MyLocationStyle paramMyLocationStyle)
    throws RemoteException
  {
    if (b() == null) {
      D = new bc(this, n);
    }
    if (D != null)
    {
      if (paramMyLocationStyle.getInterval() < 1000L) {
        paramMyLocationStyle.interval(1000L);
      }
      if ((G != null) && ((G instanceof c)))
      {
        ((c)G).a(paramMyLocationStyle.getInterval());
        ((c)G).a(paramMyLocationStyle.getMyLocationType());
      }
      D.a(paramMyLocationStyle);
    }
  }
  
  public void setMyLocationType(int paramInt)
  {
    if (D != null) {
      D.a(paramInt);
    }
  }
  
  public void setOnCameraChangeListener(AMap.OnCameraChangeListener paramOnCameraChangeListener)
    throws RemoteException
  {
    L = paramOnCameraChangeListener;
  }
  
  public void setOnInfoWindowClickListener(AMap.OnInfoWindowClickListener paramOnInfoWindowClickListener)
    throws RemoteException
  {
    S = paramOnInfoWindowClickListener;
  }
  
  public void setOnMapClickListener(AMap.OnMapClickListener paramOnMapClickListener)
    throws RemoteException
  {
    ah = paramOnMapClickListener;
  }
  
  public void setOnMapLongClickListener(AMap.OnMapLongClickListener paramOnMapLongClickListener)
    throws RemoteException
  {
    af = paramOnMapLongClickListener;
  }
  
  public void setOnMapTouchListener(AMap.OnMapTouchListener paramOnMapTouchListener)
    throws RemoteException
  {
    ae = paramOnMapTouchListener;
  }
  
  public void setOnMaploadedListener(AMap.OnMapLoadedListener paramOnMapLoadedListener)
    throws RemoteException
  {
    ag = paramOnMapLoadedListener;
  }
  
  public void setOnMarkerClickListener(AMap.OnMarkerClickListener paramOnMarkerClickListener)
    throws RemoteException
  {
    V = paramOnMarkerClickListener;
  }
  
  public void setOnMarkerDragListener(AMap.OnMarkerDragListener paramOnMarkerDragListener)
    throws RemoteException
  {
    ad = paramOnMarkerDragListener;
  }
  
  public void setOnMyLocationChangeListener(AMap.OnMyLocationChangeListener paramOnMyLocationChangeListener)
    throws RemoteException
  {
    B = paramOnMyLocationChangeListener;
  }
  
  public void setTrafficEnabled(boolean paramBoolean)
    throws RemoteException
  {
    b(paramBoolean);
    postInvalidate();
  }
  
  public void setZOrderOnTop(boolean paramBoolean)
    throws RemoteException
  {}
  
  public void setZoomPosition(int paramInt)
  {
    if (f != null)
    {
      f.a(paramInt);
      f.invalidate();
    }
  }
  
  public void showCompassEnabled(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      H.setVisibility(0);
      return;
    }
    H.setVisibility(8);
  }
  
  public void showMyLocationButtonEnabled(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      y.setVisibility(0);
      return;
    }
    y.setVisibility(8);
  }
  
  public void showMyLocationOverlay(Location paramLocation)
  {
    if (paramLocation == null) {
      return;
    }
    try
    {
      if ((isMyLocationEnabled()) && (G != null))
      {
        if ((D == null) && (D == null)) {
          D = new bc(this, n);
        }
        if ((paramLocation.getLongitude() != 0.0D) && (paramLocation.getLatitude() != 0.0D)) {
          D.a(paramLocation);
        }
        if (B != null) {
          B.onMyLocationChange(paramLocation);
        }
        z = new Location(paramLocation);
        return;
      }
      if (D != null) {
        D.a();
      }
      D = null;
      return;
    }
    catch (Throwable paramLocation)
    {
      paramLocation.printStackTrace();
    }
  }
  
  public void showScaleEnabled(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      F.setVisibility(0);
      s();
      return;
    }
    F.a("");
    F.a(0);
    F.setVisibility(8);
  }
  
  public void showZoomControlsEnabled(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      f.setVisibility(0);
      return;
    }
    f.setVisibility(8);
  }
  
  public void stopAnimation()
    throws RemoteException
  {
    if (b == null) {
      return;
    }
    if (!M.a())
    {
      M.a(true);
      l.a().b();
      if (N != null) {
        N.onCancel();
      }
      N = null;
    }
    b.b(true);
  }
  
  public void t()
  {
    if (N != null)
    {
      N.onCancel();
      N = null;
    }
  }
  
  public void u() {}
  
  public void v()
  {
    k.sendEmptyMessage(17);
  }
  
  private static abstract class a
  {
    public abstract void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  }
  
  private class b
    implements Runnable
  {
    private Context b;
    private AMap.OnCacheRemoveListener c;
    
    public b(Context paramContext, AMap.OnCacheRemoveListener paramOnCacheRemoveListener)
    {
      b = paramContext;
      c = paramOnCacheRemoveListener;
    }
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: new 31	java/io/File
      //   3: dup
      //   4: aload_0
      //   5: getfield 23	com/amap/api/mapcore2d/b$b:b	Landroid/content/Context;
      //   8: invokestatic 36	com/amap/api/mapcore2d/cm:b	(Landroid/content/Context;)Ljava/lang/String;
      //   11: invokespecial 39	java/io/File:<init>	(Ljava/lang/String;)V
      //   14: invokestatic 42	com/amap/api/mapcore2d/cm:a	(Ljava/io/File;)Z
      //   17: pop
      //   18: aload_0
      //   19: getfield 25	com/amap/api/mapcore2d/b$b:c	Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;
      //   22: ifnull +50 -> 72
      //   25: aload_0
      //   26: getfield 25	com/amap/api/mapcore2d/b$b:c	Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;
      //   29: iconst_1
      //   30: invokeinterface 48 2 0
      //   35: return
      //   36: astore_1
      //   37: goto +36 -> 73
      //   40: astore_1
      //   41: aload_1
      //   42: ldc 50
      //   44: ldc 52
      //   46: invokestatic 57	com/amap/api/mapcore2d/dg:b	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
      //   49: aload_0
      //   50: getfield 25	com/amap/api/mapcore2d/b$b:c	Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;
      //   53: ifnull +19 -> 72
      //   56: aload_0
      //   57: getfield 25	com/amap/api/mapcore2d/b$b:c	Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;
      //   60: iconst_0
      //   61: invokeinterface 48 2 0
      //   66: return
      //   67: astore_1
      //   68: aload_1
      //   69: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
      //   72: return
      //   73: aload_0
      //   74: getfield 25	com/amap/api/mapcore2d/b$b:c	Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;
      //   77: ifnull +21 -> 98
      //   80: aload_0
      //   81: getfield 25	com/amap/api/mapcore2d/b$b:c	Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;
      //   84: iconst_1
      //   85: invokeinterface 48 2 0
      //   90: goto +8 -> 98
      //   93: astore_2
      //   94: aload_2
      //   95: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
      //   98: aload_1
      //   99: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	100	0	this	b
      //   36	1	1	localObject	Object
      //   40	2	1	localThrowable1	Throwable
      //   67	32	1	localThrowable2	Throwable
      //   93	2	2	localThrowable3	Throwable
      // Exception table:
      //   from	to	target	type
      //   0	18	36	finally
      //   41	49	36	finally
      //   0	18	40	java/lang/Throwable
      //   18	35	67	java/lang/Throwable
      //   49	66	67	java/lang/Throwable
      //   73	90	93	java/lang/Throwable
    }
  }
}
