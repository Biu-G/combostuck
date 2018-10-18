package cn.edu.pku.pkurunner;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideBuilder;
import java.io.File;

public final class GlideApp
{
  private GlideApp() {}
  
  @NonNull
  public static Glide get(@NonNull Context paramContext)
  {
    return Glide.get(paramContext);
  }
  
  @Nullable
  public static File getPhotoCacheDir(@NonNull Context paramContext)
  {
    return Glide.getPhotoCacheDir(paramContext);
  }
  
  @Nullable
  public static File getPhotoCacheDir(@NonNull Context paramContext, @NonNull String paramString)
  {
    return Glide.getPhotoCacheDir(paramContext, paramString);
  }
  
  @SuppressLint({"VisibleForTests"})
  @VisibleForTesting
  public static void init(@NonNull Context paramContext, @NonNull GlideBuilder paramGlideBuilder)
  {
    Glide.init(paramContext, paramGlideBuilder);
  }
  
  @Deprecated
  @SuppressLint({"VisibleForTests"})
  @VisibleForTesting
  public static void init(Glide paramGlide)
  {
    Glide.init(paramGlide);
  }
  
  @SuppressLint({"VisibleForTests"})
  @VisibleForTesting
  public static void tearDown() {}
  
  @NonNull
  public static GlideRequests with(@NonNull Activity paramActivity)
  {
    return (GlideRequests)Glide.with(paramActivity);
  }
  
  @NonNull
  public static GlideRequests with(@NonNull android.app.Fragment paramFragment)
  {
    return (GlideRequests)Glide.with(paramFragment);
  }
  
  @NonNull
  public static GlideRequests with(@NonNull Context paramContext)
  {
    return (GlideRequests)Glide.with(paramContext);
  }
  
  @NonNull
  public static GlideRequests with(@NonNull android.support.v4.app.Fragment paramFragment)
  {
    return (GlideRequests)Glide.with(paramFragment);
  }
  
  @NonNull
  public static GlideRequests with(@NonNull FragmentActivity paramFragmentActivity)
  {
    return (GlideRequests)Glide.with(paramFragmentActivity);
  }
  
  @NonNull
  public static GlideRequests with(@NonNull View paramView)
  {
    return (GlideRequests)Glide.with(paramView);
  }
}
