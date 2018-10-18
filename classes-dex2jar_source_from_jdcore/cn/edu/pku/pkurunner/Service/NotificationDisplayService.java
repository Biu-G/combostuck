package cn.edu.pku.pkurunner.Service;

import android.app.Notification.Builder;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.support.annotation.RequiresApi;
import cn.edu.pku.pkurunner.MainActivity;
import org.xutils.common.util.LogUtil;

public class NotificationDisplayService
  extends Service
{
  public NotificationDisplayService() {}
  
  @RequiresApi(26)
  private String a()
  {
    NotificationChannel localNotificationChannel = new NotificationChannel("PKURunner", "PKURunner Foreground Service", 4);
    localNotificationChannel.setLightColor(getResources().getColor(2131100004, getTheme()));
    localNotificationChannel.setLockscreenVisibility(0);
    NotificationManager localNotificationManager = (NotificationManager)getSystemService("notification");
    if (localNotificationManager != null) {
      localNotificationManager.createNotificationChannel(localNotificationChannel);
    }
    return "PKURunner";
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    LogUtil.d("onBind()");
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    LogUtil.d("onCreate()");
  }
  
  public void onDestroy()
  {
    stopForeground(true);
    super.onDestroy();
    LogUtil.d("onDestroy");
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    LogUtil.d("onStartCommand()");
    if (Build.VERSION.SDK_INT >= 26)
    {
      paramIntent = a();
      paramIntent = new Notification.Builder(getApplicationContext(), paramIntent);
    }
    else
    {
      paramIntent = new Notification.Builder(getApplicationContext());
    }
    paramIntent.setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, MainActivity.class), 0)).setLargeIcon(BitmapFactory.decodeResource(getResources(), 2131623936)).setContentTitle(getString(2131689781)).setSmallIcon(2131230901).setContentText(getString(2131689780)).setWhen(System.currentTimeMillis());
    paramIntent = paramIntent.build();
    defaults = 1;
    startForeground(110, paramIntent);
    return 2;
  }
}
