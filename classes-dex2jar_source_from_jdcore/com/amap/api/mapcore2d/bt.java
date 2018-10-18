package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import com.amap.api.interfaces.ITileOverlay;
import com.amap.api.maps2d.model.TileOverlayOptions;

public class bt
  implements ak
{
  private static int a;
  private bu b;
  private an c;
  private boolean d;
  private String e;
  private float f;
  
  public bt(TileOverlayOptions paramTileOverlayOptions, bu paramBu, av paramAv, az paramAz, Context paramContext)
  {
    b = paramBu;
    c = new an(paramAv);
    c.e = false;
    c.g = false;
    c.f = paramTileOverlayOptions.getDiskCacheEnabled();
    c.p = new bn();
    c.k = paramTileOverlayOptions.getTileProvider();
    c.n = new ba(e.e, e.f, false, 0L, c);
    paramAv = paramTileOverlayOptions.getDiskCacheDir();
    if (TextUtils.isEmpty(paramAv)) {
      c.f = false;
    }
    c.m = paramAv;
    c.o = new u(paramBu.getContext(), false, c);
    paramBu = new bv(paramAz, c);
    c.q = paramBu;
    c.a(true);
    d = paramTileOverlayOptions.isVisible();
    e = getId();
    f = paramTileOverlayOptions.getZIndex();
  }
  
  private static String a(String paramString)
  {
    a += 1;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(a);
    return localStringBuilder.toString();
  }
  
  public void a()
  {
    c.q.c();
  }
  
  public void a(Canvas paramCanvas)
  {
    c.a(paramCanvas);
  }
  
  public void a(boolean paramBoolean) {}
  
  public void b()
  {
    c.q.d();
  }
  
  public void c()
  {
    c.q.b();
  }
  
  public void clearTileCache()
  {
    try
    {
      c.b();
      return;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "TileOverlayDelegateImp", "remove");
    }
  }
  
  public boolean equalsRemote(ITileOverlay paramITileOverlay)
  {
    return (equals(paramITileOverlay)) || (paramITileOverlay.getId().equals(getId()));
  }
  
  public String getId()
  {
    if (e == null) {
      e = a("TileOverlay");
    }
    return e;
  }
  
  public float getZIndex()
  {
    return f;
  }
  
  public int hashCodeRemote()
  {
    return super.hashCode();
  }
  
  public boolean isVisible()
  {
    return d;
  }
  
  public void remove()
  {
    try
    {
      b.b(this);
      c.b();
      c.q.b();
      return;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "TileOverlayDelegateImp", "remove");
    }
  }
  
  public void setVisible(boolean paramBoolean)
  {
    d = paramBoolean;
    c.a(paramBoolean);
  }
  
  public void setZIndex(float paramFloat)
  {
    f = paramFloat;
  }
}
