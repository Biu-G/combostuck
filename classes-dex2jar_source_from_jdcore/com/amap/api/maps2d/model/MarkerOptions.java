package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

public final class MarkerOptions
  implements Parcelable
{
  public static final g CREATOR = new g();
  String a;
  private LatLng b;
  private String c;
  private String d;
  private float e = 0.5F;
  private float f = 1.0F;
  private boolean g = false;
  private boolean h = true;
  private boolean i = false;
  private float j;
  private ArrayList<BitmapDescriptor> k = new ArrayList();
  private int l = 20;
  
  public MarkerOptions() {}
  
  private void a()
  {
    if (k == null) {
      k = new ArrayList();
    }
  }
  
  public MarkerOptions anchor(float paramFloat1, float paramFloat2)
  {
    e = paramFloat1;
    f = paramFloat2;
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public MarkerOptions draggable(boolean paramBoolean)
  {
    g = paramBoolean;
    return this;
  }
  
  public float getAnchorU()
  {
    return e;
  }
  
  public float getAnchorV()
  {
    return f;
  }
  
  public BitmapDescriptor getIcon()
  {
    if ((k != null) && (k.size() != 0)) {
      return (BitmapDescriptor)k.get(0);
    }
    return null;
  }
  
  public ArrayList<BitmapDescriptor> getIcons()
  {
    return k;
  }
  
  public int getPeriod()
  {
    return l;
  }
  
  public LatLng getPosition()
  {
    return b;
  }
  
  public String getSnippet()
  {
    return d;
  }
  
  public String getTitle()
  {
    return c;
  }
  
  public float getZIndex()
  {
    return j;
  }
  
  public MarkerOptions icon(BitmapDescriptor paramBitmapDescriptor)
  {
    try
    {
      a();
      k.clear();
      k.add(paramBitmapDescriptor);
      return this;
    }
    catch (Throwable paramBitmapDescriptor) {}
    return this;
  }
  
  public MarkerOptions icons(ArrayList<BitmapDescriptor> paramArrayList)
  {
    k = paramArrayList;
    return this;
  }
  
  public boolean isDraggable()
  {
    return g;
  }
  
  public boolean isGps()
  {
    return i;
  }
  
  public boolean isVisible()
  {
    return h;
  }
  
  public MarkerOptions period(int paramInt)
  {
    if (paramInt <= 1)
    {
      l = 1;
      return this;
    }
    l = paramInt;
    return this;
  }
  
  public MarkerOptions position(LatLng paramLatLng)
  {
    b = paramLatLng;
    return this;
  }
  
  public MarkerOptions setGps(boolean paramBoolean)
  {
    i = paramBoolean;
    return this;
  }
  
  public MarkerOptions snippet(String paramString)
  {
    d = paramString;
    return this;
  }
  
  public MarkerOptions title(String paramString)
  {
    c = paramString;
    return this;
  }
  
  public MarkerOptions visible(boolean paramBoolean)
  {
    h = paramBoolean;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(b, paramInt);
    if ((k != null) && (k.size() != 0)) {
      paramParcel.writeParcelable((Parcelable)k.get(0), paramInt);
    }
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeFloat(e);
    paramParcel.writeFloat(f);
    paramParcel.writeByte((byte)h);
    paramParcel.writeByte((byte)g);
    paramParcel.writeByte((byte)i);
    paramParcel.writeString(a);
    paramParcel.writeFloat(j);
    paramParcel.writeList(k);
  }
  
  public MarkerOptions zIndex(float paramFloat)
  {
    j = paramFloat;
    return this;
  }
}