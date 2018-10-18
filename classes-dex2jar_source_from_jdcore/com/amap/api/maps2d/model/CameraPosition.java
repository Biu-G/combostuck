package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.amap.api.mapcore2d.cl;
import com.amap.api.mapcore2d.cm;

public final class CameraPosition
  implements Parcelable
{
  public static final b CREATOR = new b();
  public final float bearing;
  public final boolean isAbroad;
  public final LatLng target;
  public final float tilt;
  public final float zoom;
  
  public CameraPosition(LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramLatLng == null) {
      Log.w("CameraPosition", "构建CameraPosition时,位置(target)不能为null");
    }
    target = paramLatLng;
    zoom = cm.b(paramFloat1);
    tilt = cm.a(paramFloat2);
    paramFloat1 = paramFloat3;
    if (paramFloat3 <= 0.0D) {
      paramFloat1 = paramFloat3 % 360.0F + 360.0F;
    }
    bearing = (paramFloat1 % 360.0F);
    if (paramLatLng != null)
    {
      isAbroad = (cl.a(latitude, longitude) ^ true);
      return;
    }
    isAbroad = false;
  }
  
  public static Builder builder()
  {
    return new Builder();
  }
  
  public static Builder builder(CameraPosition paramCameraPosition)
  {
    return new Builder(paramCameraPosition);
  }
  
  public static final CameraPosition fromLatLngZoom(LatLng paramLatLng, float paramFloat)
  {
    return new CameraPosition(paramLatLng, paramFloat, 0.0F, 0.0F);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof CameraPosition)) {
      return false;
    }
    paramObject = (CameraPosition)paramObject;
    return (target.equals(target)) && (Float.floatToIntBits(zoom) == Float.floatToIntBits(zoom)) && (Float.floatToIntBits(tilt) == Float.floatToIntBits(tilt)) && (Float.floatToIntBits(bearing) == Float.floatToIntBits(bearing));
  }
  
  public int hashCode()
  {
    return super.hashCode();
  }
  
  public String toString()
  {
    return cm.a(new String[] { cm.a("target", target), cm.a("zoom", Float.valueOf(zoom)), cm.a("tilt", Float.valueOf(tilt)), cm.a("bearing", Float.valueOf(bearing)) });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeFloat(bearing);
    if (target != null)
    {
      paramParcel.writeFloat((float)target.latitude);
      paramParcel.writeFloat((float)target.longitude);
    }
    paramParcel.writeFloat(tilt);
    paramParcel.writeFloat(zoom);
  }
  
  public static final class Builder
  {
    private LatLng a;
    private float b;
    private float c;
    private float d;
    
    public Builder() {}
    
    public Builder(CameraPosition paramCameraPosition)
    {
      target(target).bearing(bearing).tilt(tilt).zoom(zoom);
    }
    
    public Builder bearing(float paramFloat)
    {
      d = paramFloat;
      return this;
    }
    
    public CameraPosition build()
    {
      try
      {
        if (a == null)
        {
          Log.w("CameraPosition", "target is null");
          return null;
        }
        CameraPosition localCameraPosition = new CameraPosition(a, b, c, d);
        return localCameraPosition;
      }
      catch (Throwable localThrowable)
      {
        cm.a(localThrowable, "CameraPosition", "build");
      }
      return null;
    }
    
    public Builder target(LatLng paramLatLng)
    {
      a = paramLatLng;
      return this;
    }
    
    public Builder tilt(float paramFloat)
    {
      c = paramFloat;
      return this;
    }
    
    public Builder zoom(float paramFloat)
    {
      b = paramFloat;
      return this;
    }
  }
}
