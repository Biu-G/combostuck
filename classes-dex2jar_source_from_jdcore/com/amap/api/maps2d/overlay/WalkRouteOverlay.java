package com.amap.api.maps2d.overlay;

import android.content.Context;
import com.amap.api.maps2d.AMap;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.MarkerOptions;
import com.amap.api.maps2d.model.PolylineOptions;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.route.WalkPath;
import com.amap.api.services.route.WalkStep;
import java.util.List;

public class WalkRouteOverlay
  extends b
{
  private WalkPath a;
  
  public WalkRouteOverlay(Context paramContext, AMap paramAMap, WalkPath paramWalkPath, LatLonPoint paramLatLonPoint1, LatLonPoint paramLatLonPoint2)
  {
    super(paramContext);
    mAMap = paramAMap;
    a = paramWalkPath;
    startPoint = a.a(paramLatLonPoint1);
    endPoint = a.a(paramLatLonPoint2);
  }
  
  public void addToMap()
  {
    if (a == null) {
      return;
    }
    try
    {
      List localList = a.getSteps();
      int i = 0;
      while (i < localList.size())
      {
        Object localObject1 = (WalkStep)localList.get(i);
        Object localObject2 = a.a((LatLonPoint)((WalkStep)localObject1).getPolyline().get(0));
        if (i < localList.size() - 1)
        {
          if (i == 0)
          {
            localObject3 = mAMap.addPolyline(new PolylineOptions().add(new LatLng[] { startPoint, localObject2 }).color(getWalkColor()).width(getBuslineWidth()));
            allPolyLines.add(localObject3);
          }
          localObject3 = a.a((LatLonPoint)((WalkStep)localObject1).getPolyline().get(((WalkStep)localObject1).getPolyline().size() - 1));
          localObject4 = a.a((LatLonPoint)((WalkStep)localList.get(i + 1)).getPolyline().get(0));
          if (!((LatLng)localObject3).equals(localObject4))
          {
            localObject3 = mAMap.addPolyline(new PolylineOptions().add(new LatLng[] { localObject3, localObject4 }).color(getWalkColor()).width(getBuslineWidth()));
            allPolyLines.add(localObject3);
          }
        }
        else
        {
          localObject3 = a.a((LatLonPoint)((WalkStep)localObject1).getPolyline().get(((WalkStep)localObject1).getPolyline().size() - 1));
          localObject3 = mAMap.addPolyline(new PolylineOptions().add(new LatLng[] { localObject3, endPoint }).color(getWalkColor()).width(getBuslineWidth()));
          allPolyLines.add(localObject3);
        }
        Object localObject3 = mAMap;
        localObject2 = new MarkerOptions().position((LatLng)localObject2);
        Object localObject4 = new StringBuilder();
        ((StringBuilder)localObject4).append("方向:");
        ((StringBuilder)localObject4).append(((WalkStep)localObject1).getAction());
        ((StringBuilder)localObject4).append("\n道路:");
        ((StringBuilder)localObject4).append(((WalkStep)localObject1).getRoad());
        localObject2 = ((AMap)localObject3).addMarker(((MarkerOptions)localObject2).title(((StringBuilder)localObject4).toString()).snippet(((WalkStep)localObject1).getInstruction()).anchor(0.5F, 0.5F).visible(mNodeIconVisible).icon(getWalkBitmapDescriptor()));
        stationMarkers.add(localObject2);
        localObject1 = mAMap.addPolyline(new PolylineOptions().addAll(a.a(((WalkStep)localObject1).getPolyline())).color(getWalkColor()).width(getBuslineWidth()));
        allPolyLines.add(localObject1);
        i += 1;
      }
      addStartAndEndMarker();
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
  
  protected float getBuslineWidth()
  {
    return 18.0F;
  }
}
