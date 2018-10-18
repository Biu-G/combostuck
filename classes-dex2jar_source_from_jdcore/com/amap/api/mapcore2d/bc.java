package com.amap.api.mapcore2d;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.TargetApi;
import android.content.Context;
import android.location.Location;
import android.os.RemoteException;
import com.amap.api.maps2d.CameraUpdateFactory;
import com.amap.api.maps2d.model.BitmapDescriptor;
import com.amap.api.maps2d.model.BitmapDescriptorFactory;
import com.amap.api.maps2d.model.Circle;
import com.amap.api.maps2d.model.CircleOptions;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.Marker;
import com.amap.api.maps2d.model.MarkerOptions;
import com.amap.api.maps2d.model.MyLocationStyle;
import java.util.ArrayList;

class bc
{
  a a = null;
  ValueAnimator b;
  Animator.AnimatorListener c = new Animator.AnimatorListener()
  {
    public void onAnimationCancel(Animator paramAnonymousAnimator) {}
    
    public void onAnimationEnd(Animator paramAnonymousAnimator)
    {
      bc.a(bc.this);
    }
    
    public void onAnimationRepeat(Animator paramAnonymousAnimator) {}
    
    public void onAnimationStart(Animator paramAnonymousAnimator) {}
  };
  ValueAnimator.AnimatorUpdateListener d = new ValueAnimator.AnimatorUpdateListener()
  {
    @TargetApi(11)
    public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
    {
      try
      {
        if (bc.b(bc.this) != null)
        {
          paramAnonymousValueAnimator = (LatLng)paramAnonymousValueAnimator.getAnimatedValue();
          bc.b(bc.this).setCenter(paramAnonymousValueAnimator);
          bc.c(bc.this).setPosition(paramAnonymousValueAnimator);
          return;
        }
      }
      catch (Throwable paramAnonymousValueAnimator)
      {
        paramAnonymousValueAnimator.printStackTrace();
      }
    }
  };
  private y e;
  private Marker f;
  private Circle g;
  private MyLocationStyle h;
  private LatLng i;
  private double j;
  private Context k;
  private bl l;
  private int m = 1;
  private boolean n = false;
  private final String o = "location_map_gps_locked.png";
  private final String p = "location_map_gps_3d.png";
  private BitmapDescriptor q = null;
  private boolean r = false;
  private boolean s = false;
  private boolean t = false;
  private boolean u = false;
  private boolean v = false;
  
  public bc(y paramY, Context paramContext)
  {
    k = paramContext.getApplicationContext();
    e = paramY;
    l = new bl(k, paramY);
    a(1, true);
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    m = paramInt;
    n = false;
    r = false;
    u = false;
    v = false;
    paramInt = m;
    if (paramInt != 6) {
      switch (paramInt)
      {
      default: 
        break;
      case 2: 
        r = true;
        s = false;
        t = true;
        break;
      case 1: 
        r = true;
        s = true;
        t = true;
      }
    }
    if ((!u) && (!v))
    {
      b();
      return;
    }
    if (v)
    {
      l.a(true);
      if (!paramBoolean) {
        try
        {
          e.moveCamera(CameraUpdateFactory.zoomTo(17.0F));
        }
        catch (Throwable localThrowable)
        {
          localThrowable.printStackTrace();
        }
      }
    }
    else
    {
      l.a(false);
    }
    l.a();
  }
  
  @TargetApi(11)
  private void a(LatLng paramLatLng)
  {
    LatLng localLatLng2 = f.getPosition();
    LatLng localLatLng1 = localLatLng2;
    if (localLatLng2 == null) {
      localLatLng1 = new LatLng(0.0D, 0.0D);
    }
    if (a == null) {
      a = new a();
    }
    if (b == null)
    {
      b = ValueAnimator.ofObject(new a(), new Object[] { localLatLng1, paramLatLng });
      b.addListener(c);
      b.addUpdateListener(d);
      b.setDuration(1000L);
    }
    else
    {
      b.setObjectValues(new Object[] { localLatLng1, paramLatLng });
      b.setEvaluator(a);
    }
    if ((latitude == 0.0D) && (longitude == 0.0D)) {
      b.setDuration(1L);
    } else {
      b.setDuration(1000L);
    }
    b.start();
  }
  
  private void b()
  {
    l.b();
  }
  
  private void b(float paramFloat)
  {
    if (!t) {
      return;
    }
    float f1 = paramFloat % 360.0F;
    if (f1 > 180.0F)
    {
      paramFloat = f1 - 360.0F;
    }
    else
    {
      paramFloat = f1;
      if (f1 < -180.0F) {
        paramFloat = f1 + 360.0F;
      }
    }
    if (f != null) {
      f.setRotateAngle(-paramFloat);
    }
  }
  
  private void c()
  {
    if (!r) {
      return;
    }
    if ((s) && (n)) {
      return;
    }
    n = true;
    try
    {
      e.animateCamera(CameraUpdateFactory.changeLatLng(i));
      return;
    }
    catch (Throwable localThrowable)
    {
      dg.b(localThrowable, "MyLocationOverlay", "moveMapToLocation");
      localThrowable.printStackTrace();
    }
  }
  
  private void d()
  {
    if (h == null)
    {
      h = new MyLocationStyle();
      h.myLocationIcon(BitmapDescriptorFactory.fromAsset("location_map_gps_locked.png"));
      f();
      return;
    }
    if ((h.getMyLocationIcon() == null) || (h.getMyLocationIcon().getBitmap() == null)) {
      h.myLocationIcon(BitmapDescriptorFactory.fromAsset("location_map_gps_locked.png"));
    }
    f();
  }
  
  private void e()
  {
    if (g != null)
    {
      try
      {
        e.removeGLOverlay(g.getId());
      }
      catch (Throwable localThrowable)
      {
        dg.b(localThrowable, "MyLocationOverlay", "locationIconRemove");
        localThrowable.printStackTrace();
      }
      g = null;
    }
    if (f != null)
    {
      f.remove();
      f.destroy();
      f = null;
      l.a(null);
    }
  }
  
  private void f()
  {
    try
    {
      if (g == null) {
        g = e.addCircle(new CircleOptions().zIndex(1.0F));
      }
      if (g != null)
      {
        if (g.getStrokeWidth() != h.getStrokeWidth()) {
          g.setStrokeWidth(h.getStrokeWidth());
        }
        if (g.getFillColor() != h.getRadiusFillColor()) {
          g.setFillColor(h.getRadiusFillColor());
        }
        if (g.getStrokeColor() != h.getStrokeColor()) {
          g.setStrokeColor(h.getStrokeColor());
        }
        if (i != null) {
          g.setCenter(i);
        }
        g.setRadius(j);
        g.setVisible(true);
      }
      if (f == null) {
        f = e.addMarker(new MarkerOptions().visible(false));
      }
      if (f != null)
      {
        f.setAnchor(h.getAnchorU(), h.getAnchorV());
        if ((f.getIcons() != null) && (f.getIcons().size() != 0))
        {
          if ((h.getMyLocationIcon() != null) && (!((BitmapDescriptor)f.getIcons().get(0)).equals(h.getMyLocationIcon()))) {
            f.setIcon(h.getMyLocationIcon());
          }
        }
        else {
          f.setIcon(h.getMyLocationIcon());
        }
        if (i != null)
        {
          f.setPosition(i);
          f.setVisible(true);
        }
      }
      c();
      l.a(f);
      return;
    }
    catch (Throwable localThrowable)
    {
      dg.b(localThrowable, "MyLocationOverlay", "myLocStyle");
      localThrowable.printStackTrace();
    }
  }
  
  public void a()
    throws RemoteException
  {
    e();
    if (l != null)
    {
      b();
      l = null;
    }
  }
  
  public void a(float paramFloat)
  {
    if (f != null) {
      f.setRotateAngle(paramFloat);
    }
  }
  
  public void a(int paramInt)
  {
    a(paramInt, false);
  }
  
  public void a(Location paramLocation)
  {
    if (paramLocation == null) {
      return;
    }
    a(h.isMyLocationShowing());
    if (!h.isMyLocationShowing()) {
      return;
    }
    i = new LatLng(paramLocation.getLatitude(), paramLocation.getLongitude());
    j = paramLocation.getAccuracy();
    if ((f == null) && (g == null)) {
      d();
    }
    if (g != null) {
      try
      {
        if (j != -1.0D) {
          g.setRadius(j);
        }
      }
      catch (Throwable localThrowable)
      {
        dg.b(localThrowable, "MyLocationOverlay", "setCentAndRadius");
        localThrowable.printStackTrace();
      }
    }
    b(paramLocation.getBearing());
    if (!i.equals(f.getPosition()))
    {
      a(i);
      return;
    }
    c();
  }
  
  public void a(MyLocationStyle paramMyLocationStyle)
  {
    try
    {
      h = paramMyLocationStyle;
      a(h.isMyLocationShowing());
      if (!h.isMyLocationShowing())
      {
        l.a(false);
        m = h.getMyLocationType();
        return;
      }
      if ((f == null) && (g == null)) {
        return;
      }
      l.a(f);
      d();
      a(h.getMyLocationType());
      return;
    }
    catch (Throwable paramMyLocationStyle)
    {
      dg.b(paramMyLocationStyle, "MyLocationOverlay", "setMyLocationStyle");
      paramMyLocationStyle.printStackTrace();
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if ((g != null) && (g.isVisible() != paramBoolean)) {
      g.setVisible(paramBoolean);
    }
    if ((f != null) && (f.isVisible() != paramBoolean)) {
      f.setVisible(paramBoolean);
    }
  }
  
  @TargetApi(11)
  public class a
    implements TypeEvaluator
  {
    public a() {}
    
    public Object evaluate(float paramFloat, Object paramObject1, Object paramObject2)
    {
      paramObject1 = (LatLng)paramObject1;
      paramObject2 = (LatLng)paramObject2;
      double d1 = latitude;
      double d2 = paramFloat;
      return new LatLng(d1 + (latitude - latitude) * d2, longitude + d2 * (longitude - longitude));
    }
  }
}
