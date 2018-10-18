package android.support.v4.content;

import android.accessibilityservice.AccessibilityService;
import android.accounts.AccountManager;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.AppOpsManager;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.app.SearchManager;
import android.app.UiModeManager;
import android.app.WallpaperManager;
import android.app.admin.DevicePolicyManager;
import android.app.job.JobScheduler;
import android.app.usage.UsageStatsManager;
import android.appwidget.AppWidgetManager;
import android.bluetooth.BluetoothManager;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.RestrictionsManager;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherApps;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.hardware.ConsumerIrManager;
import android.hardware.SensorManager;
import android.hardware.camera2.CameraManager;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.hardware.usb.UsbManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.media.MediaRouter;
import android.media.projection.MediaProjectionManager;
import android.media.session.MediaSessionManager;
import android.media.tv.TvInputManager;
import android.net.ConnectivityManager;
import android.net.nsd.NsdManager;
import android.net.wifi.WifiManager;
import android.net.wifi.p2p.WifiP2pManager;
import android.nfc.NfcManager;
import android.os.BatteryManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.DropBoxManager;
import android.os.PowerManager;
import android.os.Process;
import android.os.UserManager;
import android.os.Vibrator;
import android.os.storage.StorageManager;
import android.print.PrintManager;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.accessibility.CaptioningManager;
import android.view.inputmethod.InputMethodManager;
import android.view.textservice.TextServicesManager;
import java.io.File;
import java.util.HashMap;

public class ContextCompat
{
  private static final Object a = new Object();
  private static TypedValue b;
  
  protected ContextCompat() {}
  
  private static File a(File paramFile)
  {
    try
    {
      if ((!paramFile.exists()) && (!paramFile.mkdirs()))
      {
        boolean bool = paramFile.exists();
        if (bool) {
          return paramFile;
        }
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unable to create files subdir ");
        localStringBuilder.append(paramFile.getPath());
        Log.w("ContextCompat", localStringBuilder.toString());
        return null;
      }
      return paramFile;
    }
    finally {}
  }
  
  public static int checkSelfPermission(@NonNull Context paramContext, @NonNull String paramString)
  {
    if (paramString != null) {
      return paramContext.checkPermission(paramString, Process.myPid(), Process.myUid());
    }
    throw new IllegalArgumentException("permission is null");
  }
  
  @Nullable
  public static Context createDeviceProtectedStorageContext(@NonNull Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 24) {
      return paramContext.createDeviceProtectedStorageContext();
    }
    return null;
  }
  
  public static File getCodeCacheDir(@NonNull Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramContext.getCodeCacheDir();
    }
    return a(new File(getApplicationInfodataDir, "code_cache"));
  }
  
  @ColorInt
  public static int getColor(@NonNull Context paramContext, @ColorRes int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return paramContext.getColor(paramInt);
    }
    return paramContext.getResources().getColor(paramInt);
  }
  
  @Nullable
  public static ColorStateList getColorStateList(@NonNull Context paramContext, @ColorRes int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return paramContext.getColorStateList(paramInt);
    }
    return paramContext.getResources().getColorStateList(paramInt);
  }
  
  @Nullable
  public static File getDataDir(@NonNull Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 24) {
      return paramContext.getDataDir();
    }
    paramContext = getApplicationInfodataDir;
    if (paramContext != null) {
      return new File(paramContext);
    }
    return null;
  }
  
  @Nullable
  public static Drawable getDrawable(@NonNull Context paramContext, @DrawableRes int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramContext.getDrawable(paramInt);
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return paramContext.getResources().getDrawable(paramInt);
    }
    synchronized (a)
    {
      if (b == null) {
        b = new TypedValue();
      }
      paramContext.getResources().getValue(paramInt, b, true);
      paramInt = bresourceId;
      return paramContext.getResources().getDrawable(paramInt);
    }
  }
  
  @NonNull
  public static File[] getExternalCacheDirs(@NonNull Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramContext.getExternalCacheDirs();
    }
    return new File[] { paramContext.getExternalCacheDir() };
  }
  
  @NonNull
  public static File[] getExternalFilesDirs(@NonNull Context paramContext, @Nullable String paramString)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramContext.getExternalFilesDirs(paramString);
    }
    return new File[] { paramContext.getExternalFilesDir(paramString) };
  }
  
  @Nullable
  public static File getNoBackupFilesDir(@NonNull Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramContext.getNoBackupFilesDir();
    }
    return a(new File(getApplicationInfodataDir, "no_backup"));
  }
  
  @NonNull
  public static File[] getObbDirs(@NonNull Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramContext.getObbDirs();
    }
    return new File[] { paramContext.getObbDir() };
  }
  
  @Nullable
  public static <T> T getSystemService(@NonNull Context paramContext, @NonNull Class<T> paramClass)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return paramContext.getSystemService(paramClass);
    }
    paramClass = getSystemServiceName(paramContext, paramClass);
    if (paramClass != null) {
      return paramContext.getSystemService(paramClass);
    }
    return null;
  }
  
  @Nullable
  public static String getSystemServiceName(@NonNull Context paramContext, @NonNull Class<?> paramClass)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return paramContext.getSystemServiceName(paramClass);
    }
    return (String)a.a.get(paramClass);
  }
  
  public static boolean isDeviceProtectedStorage(@NonNull Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 24) {
      return paramContext.isDeviceProtectedStorage();
    }
    return false;
  }
  
  public static boolean startActivities(@NonNull Context paramContext, @NonNull Intent[] paramArrayOfIntent)
  {
    return startActivities(paramContext, paramArrayOfIntent, null);
  }
  
  public static boolean startActivities(@NonNull Context paramContext, @NonNull Intent[] paramArrayOfIntent, @Nullable Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      paramContext.startActivities(paramArrayOfIntent, paramBundle);
    } else {
      paramContext.startActivities(paramArrayOfIntent);
    }
    return true;
  }
  
  public static void startActivity(@NonNull Context paramContext, @NonNull Intent paramIntent, @Nullable Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramContext.startActivity(paramIntent, paramBundle);
      return;
    }
    paramContext.startActivity(paramIntent);
  }
  
  public static void startForegroundService(@NonNull Context paramContext, @NonNull Intent paramIntent)
  {
    if (Build.VERSION.SDK_INT >= 26)
    {
      paramContext.startForegroundService(paramIntent);
      return;
    }
    paramContext.startService(paramIntent);
  }
  
  private static final class a
  {
    static final HashMap<Class<?>, String> a = new HashMap();
    
    static
    {
      if (Build.VERSION.SDK_INT > 22)
      {
        a.put(SubscriptionManager.class, "telephony_subscription_service");
        a.put(UsageStatsManager.class, "usagestats");
      }
      if (Build.VERSION.SDK_INT > 21)
      {
        a.put(AppWidgetManager.class, "appwidget");
        a.put(BatteryManager.class, "batterymanager");
        a.put(CameraManager.class, "camera");
        a.put(JobScheduler.class, "jobscheduler");
        a.put(LauncherApps.class, "launcherapps");
        a.put(MediaProjectionManager.class, "media_projection");
        a.put(MediaSessionManager.class, "media_session");
        a.put(RestrictionsManager.class, "restrictions");
        a.put(TelecomManager.class, "telecom");
        a.put(TvInputManager.class, "tv_input");
      }
      if (Build.VERSION.SDK_INT > 19)
      {
        a.put(AppOpsManager.class, "appops");
        a.put(CaptioningManager.class, "captioning");
        a.put(ConsumerIrManager.class, "consumer_ir");
        a.put(PrintManager.class, "print");
      }
      if (Build.VERSION.SDK_INT > 18) {
        a.put(BluetoothManager.class, "bluetooth");
      }
      if (Build.VERSION.SDK_INT > 17)
      {
        a.put(DisplayManager.class, "display");
        a.put(UserManager.class, "user");
      }
      if (Build.VERSION.SDK_INT > 16)
      {
        a.put(InputManager.class, "input");
        a.put(MediaRouter.class, "media_router");
        a.put(NsdManager.class, "servicediscovery");
      }
      a.put(AccessibilityService.class, "accessibility");
      a.put(AccountManager.class, "account");
      a.put(ActivityManager.class, "activity");
      a.put(AlarmManager.class, "alarm");
      a.put(AudioManager.class, "audio");
      a.put(ClipboardManager.class, "clipboard");
      a.put(ConnectivityManager.class, "connectivity");
      a.put(DevicePolicyManager.class, "device_policy");
      a.put(DownloadManager.class, "download");
      a.put(DropBoxManager.class, "dropbox");
      a.put(InputMethodManager.class, "input_method");
      a.put(KeyguardManager.class, "keyguard");
      a.put(LayoutInflater.class, "layout_inflater");
      a.put(LocationManager.class, "location");
      a.put(NfcManager.class, "nfc");
      a.put(NotificationManager.class, "notification");
      a.put(PowerManager.class, "power");
      a.put(SearchManager.class, "search");
      a.put(SensorManager.class, "sensor");
      a.put(StorageManager.class, "storage");
      a.put(TelephonyManager.class, "phone");
      a.put(TextServicesManager.class, "textservices");
      a.put(UiModeManager.class, "uimode");
      a.put(UsbManager.class, "usb");
      a.put(Vibrator.class, "vibrator");
      a.put(WallpaperManager.class, "wallpaper");
      a.put(WifiP2pManager.class, "wifip2p");
      a.put(WifiManager.class, "wifi");
      a.put(WindowManager.class, "window");
    }
  }
}
