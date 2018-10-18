package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class PolygonOptions
  implements Parcelable
{
  public static final h CREATOR = new h();
  String a;
  private final List<LatLng> b = new ArrayList();
  private float c = 10.0F;
  private int d = -16777216;
  private int e = -16777216;
  private float f = 0.0F;
  private boolean g = true;
  
  public PolygonOptions() {}
  
  public PolygonOptions add(LatLng paramLatLng)
  {
    b.add(paramLatLng);
    return this;
  }
  
  public PolygonOptions add(LatLng... paramVarArgs)
  {
    b.addAll(Arrays.asList(paramVarArgs));
    return this;
  }
  
  public PolygonOptions addAll(Iterable<LatLng> paramIterable)
  {
    if (paramIterable == null) {
      return this;
    }
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
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public PolygonOptions fillColor(int paramInt)
  {
    e = paramInt;
    return this;
  }
  
  public int getFillColor()
  {
    return e;
  }
  
  public List<LatLng> getPoints()
  {
    return b;
  }
  
  public int getStrokeColor()
  {
    return d;
  }
  
  public float getStrokeWidth()
  {
    return c;
  }
  
  public float getZIndex()
  {
    return f;
  }
  
  public boolean isVisible()
  {
    return g;
  }
  
  public PolygonOptions strokeColor(int paramInt)
  {
    d = paramInt;
    return this;
  }
  
  public PolygonOptions strokeWidth(float paramFloat)
  {
    c = paramFloat;
    return this;
  }
  
  public PolygonOptions visible(boolean paramBoolean)
  {
    g = paramBoolean;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(b);
    paramParcel.writeFloat(c);
    paramParcel.writeInt(d);
    paramParcel.writeInt(e);
    paramParcel.writeFloat(f);
    paramParcel.writeByte((byte)(g ^ true));
    paramParcel.writeString(a);
  }
  
  public PolygonOptions zIndex(float paramFloat)
  {
    f = paramFloat;
    return this;
  }
}
