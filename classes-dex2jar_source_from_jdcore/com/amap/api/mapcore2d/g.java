package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.amap.api.maps2d.MapsInitializer;
import org.json.JSONObject;

public class g
  extends Thread
{
  private Context a;
  private y b;
  
  public g(Context paramContext, y paramY)
  {
    a = paramContext;
    b = paramY;
  }
  
  public void run()
  {
    try
    {
      if (!MapsInitializer.getNetworkEnable()) {
        return;
      }
      cy localCy = cm.a();
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("002");
      ((StringBuilder)localObject1).append(";");
      ((StringBuilder)localObject1).append("11K");
      ((StringBuilder)localObject1).append(";");
      ((StringBuilder)localObject1).append("001");
      ((StringBuilder)localObject1).append(";");
      ((StringBuilder)localObject1).append("145");
      localObject1 = ((StringBuilder)localObject1).toString();
      localObject1 = cq.a(a, localCy, (String)localObject1, null);
      Object localObject2;
      if (cq.a != 1)
      {
        localObject2 = b.getMainHandler().obtainMessage();
        what = 2;
        if (a != null) {
          obj = a;
        }
        b.getMainHandler().sendMessage((Message)localObject2);
      }
      if (localObject1 != null)
      {
        if (u != null) {
          cm.a().a(u.a);
        }
        if (w != null) {
          new cx(a, "2dmap", w.a, w.b).a();
        }
        if (t != null)
        {
          localObject2 = t;
          int i = q.q;
          if (((JSONObject)localObject2).has("t")) {
            i = ((JSONObject)localObject2).getInt("t");
          }
          bg.a().b("period_day", i);
          if (((JSONObject)localObject2).has("able"))
          {
            boolean bool = cq.a(((JSONObject)localObject2).getString("able"), false);
            bg.a();
            bg.b("UpdateDataActiveEnable", bool);
            MapsInitializer.setUpdateDataActiveEnable(bool);
          }
          if (((JSONObject)localObject2).has("oi")) {
            q.a(cq.a(((JSONObject)localObject2).getString("oi"), false));
          }
        }
      }
      if ((localObject1 != null) && (v != null))
      {
        Object localObject3 = v;
        if (localObject3 != null)
        {
          localObject1 = b;
          localObject2 = a;
          localObject3 = c;
          if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (!TextUtils.isEmpty((CharSequence)localObject2)) && (!TextUtils.isEmpty((CharSequence)localObject3)))
          {
            localObject1 = new ea((String)localObject2, (String)localObject1, (String)localObject3);
            new dz(a, (ea)localObject1, cm.a()).a();
          }
          else
          {
            new dz(a, null, cm.a()).a();
          }
        }
        else
        {
          new dz(a, null, cm.a()).a();
        }
      }
      q.p = localCy;
      dg.a(a, localCy);
      interrupt();
      return;
    }
    catch (Throwable localThrowable)
    {
      interrupt();
      dg.b(localThrowable, "AMapDelegateImpGLSurfaceView", "mVerfy");
      localThrowable.printStackTrace();
    }
  }
}
