package android.support.v4.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.view.View;

public class ActivityOptionsCompat
{
  public static final String EXTRA_USAGE_TIME_REPORT = "android.activity.usage_time";
  public static final String EXTRA_USAGE_TIME_REPORT_PACKAGES = "android.usage_time_packages";
  
  protected ActivityOptionsCompat() {}
  
  @NonNull
  public static ActivityOptionsCompat makeBasic()
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return new a(ActivityOptions.makeBasic());
    }
    return new ActivityOptionsCompat();
  }
  
  @NonNull
  public static ActivityOptionsCompat makeClipRevealAnimation(@NonNull View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return new a(ActivityOptions.makeClipRevealAnimation(paramView, paramInt1, paramInt2, paramInt3, paramInt4));
    }
    return new ActivityOptionsCompat();
  }
  
  @NonNull
  public static ActivityOptionsCompat makeCustomAnimation(@NonNull Context paramContext, int paramInt1, int paramInt2)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return new a(ActivityOptions.makeCustomAnimation(paramContext, paramInt1, paramInt2));
    }
    return new ActivityOptionsCompat();
  }
  
  @NonNull
  public static ActivityOptionsCompat makeScaleUpAnimation(@NonNull View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return new a(ActivityOptions.makeScaleUpAnimation(paramView, paramInt1, paramInt2, paramInt3, paramInt4));
    }
    return new ActivityOptionsCompat();
  }
  
  @NonNull
  public static ActivityOptionsCompat makeSceneTransitionAnimation(@NonNull Activity paramActivity, @NonNull View paramView, @NonNull String paramString)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return new a(ActivityOptions.makeSceneTransitionAnimation(paramActivity, paramView, paramString));
    }
    return new ActivityOptionsCompat();
  }
  
  @NonNull
  public static ActivityOptionsCompat makeSceneTransitionAnimation(@NonNull Activity paramActivity, android.support.v4.util.Pair<View, String>... paramVarArgs)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      Object localObject = null;
      if (paramVarArgs != null)
      {
        android.util.Pair[] arrayOfPair = new android.util.Pair[paramVarArgs.length];
        int i = 0;
        for (;;)
        {
          localObject = arrayOfPair;
          if (i >= paramVarArgs.length) {
            break;
          }
          arrayOfPair[i] = android.util.Pair.create(first, second);
          i += 1;
        }
      }
      return new a(ActivityOptions.makeSceneTransitionAnimation(paramActivity, localObject));
    }
    return new ActivityOptionsCompat();
  }
  
  @NonNull
  public static ActivityOptionsCompat makeTaskLaunchBehind()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return new a(ActivityOptions.makeTaskLaunchBehind());
    }
    return new ActivityOptionsCompat();
  }
  
  @NonNull
  public static ActivityOptionsCompat makeThumbnailScaleUpAnimation(@NonNull View paramView, @NonNull Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return new a(ActivityOptions.makeThumbnailScaleUpAnimation(paramView, paramBitmap, paramInt1, paramInt2));
    }
    return new ActivityOptionsCompat();
  }
  
  @Nullable
  public Rect getLaunchBounds()
  {
    return null;
  }
  
  public void requestUsageTimeReport(@NonNull PendingIntent paramPendingIntent) {}
  
  @NonNull
  public ActivityOptionsCompat setLaunchBounds(@Nullable Rect paramRect)
  {
    return this;
  }
  
  @Nullable
  public Bundle toBundle()
  {
    return null;
  }
  
  public void update(@NonNull ActivityOptionsCompat paramActivityOptionsCompat) {}
  
  @RequiresApi(16)
  private static class a
    extends ActivityOptionsCompat
  {
    private final ActivityOptions a;
    
    a(ActivityOptions paramActivityOptions)
    {
      a = paramActivityOptions;
    }
    
    public Rect getLaunchBounds()
    {
      if (Build.VERSION.SDK_INT < 24) {
        return null;
      }
      return a.getLaunchBounds();
    }
    
    public void requestUsageTimeReport(PendingIntent paramPendingIntent)
    {
      if (Build.VERSION.SDK_INT >= 23) {
        a.requestUsageTimeReport(paramPendingIntent);
      }
    }
    
    public ActivityOptionsCompat setLaunchBounds(@Nullable Rect paramRect)
    {
      if (Build.VERSION.SDK_INT < 24) {
        return this;
      }
      return new a(a.setLaunchBounds(paramRect));
    }
    
    public Bundle toBundle()
    {
      return a.toBundle();
    }
    
    public void update(ActivityOptionsCompat paramActivityOptionsCompat)
    {
      if ((paramActivityOptionsCompat instanceof a))
      {
        paramActivityOptionsCompat = (a)paramActivityOptionsCompat;
        a.update(a);
      }
    }
  }
}
