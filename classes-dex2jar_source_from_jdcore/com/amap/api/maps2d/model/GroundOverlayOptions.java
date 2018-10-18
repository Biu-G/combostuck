package com.amap.api.maps2d.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.amap.api.mapcore2d.cm;

public final class GroundOverlayOptions
  implements Parcelable
{
  public static final d CREATOR = new d();
  public static final float NO_DIMENSION = -1.0F;
  private final int a;
  private BitmapDescriptor b;
  private LatLng c;
  private float d;
  private float e;
  private LatLngBounds f;
  private float g;
  private float h;
  private boolean i = true;
  private float j = 0.0F;
  private float k = 0.5F;
  private float l = 0.5F;
  
  public GroundOverlayOptions()
  {
    a = 1;
  }
  
  GroundOverlayOptions(int paramInt, IBinder paramIBinder, LatLng paramLatLng, float paramFloat1, float paramFloat2, LatLngBounds paramLatLngBounds, float paramFloat3, float paramFloat4, boolean paramBoolean, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    a = paramInt;
    b = BitmapDescriptorFactory.fromBitmap(null);
    c = paramLatLng;
    d = paramFloat1;
    e = paramFloat2;
    f = paramLatLngBounds;
    g = paramFloat3;
    h = paramFloat4;
    i = paramBoolean;
    j = paramFloat5;
    k = paramFloat6;
    l = paramFloat7;
  }
  
  private GroundOverlayOptions a(LatLng paramLatLng, float paramFloat1, float paramFloat2)
  {
    c = paramLatLng;
    d = paramFloat1;
    e = paramFloat2;
    return this;
  }
  
  public GroundOverlayOptions anchor(float paramFloat1, float paramFloat2)
  {
    k = paramFloat1;
    l = paramFloat2;
    return this;
  }
  
  public GroundOverlayOptions bearing(float paramFloat)
  {
    g = paramFloat;
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public float getAnchorU()
  {
    return k;
  }
  
  public float getAnchorV()
  {
    return l;
  }
  
  public float getBearing()
  {
    return g;
  }
  
  public LatLngBounds getBounds()
  {
    return f;
  }
  
  public float getHeight()
  {
    return e;
  }
  
  public BitmapDescriptor getImage()
  {
    return b;
  }
  
  public LatLng getLocation()
  {
    return c;
  }
  
  public float getTransparency()
  {
    return j;
  }
  
  public float getWidth()
  {
    return d;
  }
  
  public float getZIndex()
  {
    return h;
  }
  
  public GroundOverlayOptions image(BitmapDescriptor paramBitmapDescriptor)
  {
    b = paramBitmapDescriptor;
    return this;
  }
  
  public boolean isVisible()
  {
    return i;
  }
  
  public GroundOverlayOptions position(LatLng paramLatLng, float paramFloat)
  {
    try
    {
      if (f != null) {
        Log.w("GroundOverlayOptions", "Position has already been set using positionFromBounds");
      }
      if (paramLatLng == null) {
        Log.w("GroundOverlayOptions", "Location must be specified");
      }
      if (paramFloat <= 0.0F) {
        Log.w("GroundOverlayOptions", "Width must be non-negative");
      }
      paramLatLng = a(paramLatLng, paramFloat, paramFloat);
      return paramLatLng;
    }
    catch (Exception paramLatLng)
    {
      cm.a(paramLatLng, "GroundOverlayOptions", "position");
    }
    return null;
  }
  
  public GroundOverlayOptions position(LatLng paramLatLng, float paramFloat1, float paramFloat2)
  {
    for (;;)
    {
      try
      {
        if (f != null) {
          Log.w("GroundOverlayOptions", "Position has already been set using positionFromBounds");
        }
        if (paramLatLng != null) {
          break label59;
        }
        Log.w("GroundOverlayOptions", "Location must be specified");
      }
      catch (Exception paramLatLng)
      {
        cm.a(paramLatLng, "GroundOverlayOptions", "position");
        return null;
      }
      Log.w("GroundOverlayOptions", "Width and Height must be non-negative");
      paramLatLng = a(paramLatLng, paramFloat1, paramFloat2);
      return paramLatLng;
      label59:
      if (paramFloat1 > 0.0F) {
        if (paramFloat2 > 0.0F) {}
      }
    }
  }
  
  public GroundOverlayOptions positionFromBounds(LatLngBounds paramLatLngBounds)
  {
    try
    {
      if (c != null)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Position has already been set using position: ");
        localStringBuilder.append(c);
        Log.w("GroundOverlayOptions", localStringBuilder.toString());
      }
      f = paramLatLngBounds;
      return this;
    }
    catch (Exception paramLatLngBounds)
    {
      cm.a(paramLatLngBounds, "GroundOverlayOptions", "positionFromBounds");
    }
    return null;
  }
  
  public GroundOverlayOptions transparency(float paramFloat)
  {
    float f1 = paramFloat;
    if (paramFloat < 0.0F) {}
    try
    {
      Log.w("GroundOverlayOptions", "Transparency must be in the range [0..1]");
      f1 = 0.0F;
      j = f1;
      return this;
    }
    catch (Exception localException)
    {
      Throwable localThrowable;
      for (;;) {}
    }
    cm.a(localThrowable, "GroundOverlayOptions", "transparency");
    return null;
  }
  
  public GroundOverlayOptions visible(boolean paramBoolean)
  {
    i = paramBoolean;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeParcelable(b, paramInt);
    paramParcel.writeParcelable(c, paramInt);
    paramParcel.writeFloat(d);
    paramParcel.writeFloat(e);
    paramParcel.writeParcelable(f, paramInt);
    paramParcel.writeFloat(g);
    paramParcel.writeFloat(h);
    paramParcel.writeByte((byte)i);
    paramParcel.writeFloat(j);
    paramParcel.writeFloat(k);
    paramParcel.writeFloat(l);
  }
  
  public GroundOverlayOptions zIndex(float paramFloat)
  {
    h = paramFloat;
    return this;
  }
}
