package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class PolylineOptions
  implements Parcelable
{
  public static final i CREATOR = new i();
  String a;
  private final List<LatLng> b = new ArrayList();
  private float c = 10.0F;
  private int d = -16777216;
  private float e = 0.0F;
  private boolean f = true;
  private boolean g = false;
  private boolean h = false;
  
  public PolylineOptions() {}
  
  public PolylineOptions add(LatLng paramLatLng)
  {
    b.add(paramLatLng);
    return this;
  }
  
  public PolylineOptions add(LatLng... paramVarArgs)
  {
    b.addAll(Arrays.asList(paramVarArgs));
    return this;
  }
  
  public PolylineOptions addAll(Iterable<LatLng> paramIterable)
  {
    if (paramIterable != null) {
      try
      {
        ArrayList localArrayList = new ArrayList();
        paramIterable = paramIterable.iterator();
        while ((paramIterable != null) && (paramIterable.hasNext())) {
          localArrayList.add((LatLng)paramIterable.next());
        }
        b.addAll(localArrayList);
        return this;
      }
      catch (Throwable paramIterable)
      {
        paramIterable.printStackTrace();
      }
    }
    return this;
  }
  
  public PolylineOptions color(int paramInt)
  {
    d = paramInt;
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public PolylineOptions geodesic(boolean paramBoolean)
  {
    g = paramBoolean;
    return this;
  }
  
  public int getColor()
  {
    return d;
  }
  
  public List<LatLng> getPoints()
  {
    return b;
  }
  
  public float getWidth()
  {
    return c;
  }
  
  public float getZIndex()
  {
    return e;
  }
  
  public boolean isDottedLine()
  {
    return h;
  }
  
  public boolean isGeodesic()
  {
    return g;
  }
  
  public boolean isVisible()
  {
    return f;
  }
  
  public PolylineOptions setDottedLine(boolean paramBoolean)
  {
    h = paramBoolean;
    return this;
  }
  
  public PolylineOptions visible(boolean paramBoolean)
  {
    f = paramBoolean;
    return this;
  }
  
  public PolylineOptions width(float paramFloat)
  {
    c = paramFloat;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(getPoints());
    paramParcel.writeFloat(getWidth());
    paramParcel.writeInt(getColor());
    paramParcel.writeFloat(getZIndex());
    paramParcel.writeByte((byte)isVisible());
    paramParcel.writeString(a);
    paramParcel.writeByte((byte)isGeodesic());
    paramParcel.writeByte((byte)isDottedLine());
  }
  
  public PolylineOptions zIndex(float paramFloat)
  {
    e = paramFloat;
    return this;
  }
}
