package cn.edu.pku.pkurunner.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.maps2d.model.LatLng;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.xutils.db.annotation.Column;
import org.xutils.db.annotation.Table;

@Table(name="track")
public class Point
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<Point> CREATOR = new Parcelable.Creator()
  {
    public Point createFromParcel(Parcel paramAnonymousParcel)
    {
      int i = paramAnonymousParcel.readInt();
      int j = paramAnonymousParcel.readInt();
      int k = paramAnonymousParcel.readInt();
      double d = paramAnonymousParcel.readDouble();
      paramAnonymousParcel = new Point(j, k, paramAnonymousParcel.readDouble(), d, paramAnonymousParcel.readInt());
      paramAnonymousParcel.setId(i);
      return paramAnonymousParcel;
    }
    
    public Point[] newArray(int paramAnonymousInt)
    {
      return new Point[paramAnonymousInt];
    }
  };
  public static final int STATUS_BEGIN = 1;
  public static final int STATUS_END = 2;
  public static final int STATUS_RUNNING = 0;
  @Column(isId=true, name="id")
  private int id;
  @Column(name="latitude")
  private double latitude;
  @Column(name="longitude")
  private double longitude;
  @Column(name="recordDbId")
  private int recordDbId;
  @Column(name="sequence")
  private int sequence;
  @Column(name="status")
  private int status;
  
  public Point() {}
  
  public Point(int paramInt1, int paramInt2, double paramDouble1, double paramDouble2, int paramInt3)
  {
    id = 0;
    sequence = paramInt1;
    recordDbId = paramInt2;
    latitude = paramDouble2;
    longitude = paramDouble1;
    status = paramInt3;
  }
  
  public Point(LatLng paramLatLng)
  {
    id = 0;
    latitude = latitude;
    longitude = longitude;
    status = 0;
  }
  
  public static ArrayList<Point> assignInfoToTrack(int paramInt, ArrayList<Point> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramArrayList.size())
    {
      localArrayList.add(new Point(i, paramInt, ((Point)paramArrayList.get(i)).getLongitude(), ((Point)paramArrayList.get(i)).getLatitude(), ((Point)paramArrayList.get(i)).getStatus()));
      i += 1;
    }
    return localArrayList;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getId()
  {
    return id;
  }
  
  public double getLatitude()
  {
    return latitude;
  }
  
  public double getLongitude()
  {
    return longitude;
  }
  
  public int getRecordDbId()
  {
    return recordDbId;
  }
  
  public int getSequence()
  {
    return sequence;
  }
  
  public int getStatus()
  {
    return status;
  }
  
  public void setId(int paramInt)
  {
    id = paramInt;
  }
  
  public void setLatitude(double paramDouble)
  {
    latitude = paramDouble;
  }
  
  public void setLongitude(double paramDouble)
  {
    longitude = paramDouble;
  }
  
  public void setRecordDbId(int paramInt)
  {
    recordDbId = paramInt;
  }
  
  public void setSequence(int paramInt)
  {
    sequence = paramInt;
  }
  
  public void setStatus(int paramInt)
  {
    status = paramInt;
  }
  
  public JSONArray toJSONArray()
    throws JSONException
  {
    JSONArray localJSONArray = new JSONArray();
    try
    {
      localJSONArray.put(0, longitude);
      localJSONArray.put(1, latitude);
      localJSONArray.put(2, status);
      return localJSONArray;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      throw localJSONException;
    }
  }
  
  public LatLng toLatLng()
  {
    return new LatLng(latitude, longitude);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Point{id=");
    localStringBuilder.append(id);
    localStringBuilder.append(", sequence=");
    localStringBuilder.append(sequence);
    localStringBuilder.append(", recordDbId=");
    localStringBuilder.append(recordDbId);
    localStringBuilder.append(", latitude=");
    localStringBuilder.append(latitude);
    localStringBuilder.append(", longitude=");
    localStringBuilder.append(longitude);
    localStringBuilder.append(", status=");
    localStringBuilder.append(status);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(id);
    paramParcel.writeInt(sequence);
    paramParcel.writeInt(recordDbId);
    paramParcel.writeDouble(latitude);
    paramParcel.writeDouble(longitude);
    paramParcel.writeInt(status);
  }
}
