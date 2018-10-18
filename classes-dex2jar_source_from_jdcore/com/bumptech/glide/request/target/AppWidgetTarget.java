package com.bumptech.glide.request.target;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.RemoteViews;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Preconditions;

public class AppWidgetTarget
  extends SimpleTarget<Bitmap>
{
  private final int[] a;
  private final ComponentName b;
  private final RemoteViews c;
  private final Context d;
  private final int e;
  
  public AppWidgetTarget(Context paramContext, int paramInt1, int paramInt2, int paramInt3, RemoteViews paramRemoteViews, ComponentName paramComponentName)
  {
    super(paramInt1, paramInt2);
    d = ((Context)Preconditions.checkNotNull(paramContext, "Context can not be null!"));
    c = ((RemoteViews)Preconditions.checkNotNull(paramRemoteViews, "RemoteViews object can not be null!"));
    b = ((ComponentName)Preconditions.checkNotNull(paramComponentName, "ComponentName can not be null!"));
    e = paramInt3;
    a = null;
  }
  
  public AppWidgetTarget(Context paramContext, int paramInt1, int paramInt2, int paramInt3, RemoteViews paramRemoteViews, int... paramVarArgs)
  {
    super(paramInt1, paramInt2);
    if (paramVarArgs.length != 0)
    {
      d = ((Context)Preconditions.checkNotNull(paramContext, "Context can not be null!"));
      c = ((RemoteViews)Preconditions.checkNotNull(paramRemoteViews, "RemoteViews object can not be null!"));
      a = ((int[])Preconditions.checkNotNull(paramVarArgs, "WidgetIds can not be null!"));
      e = paramInt3;
      b = null;
      return;
    }
    throw new IllegalArgumentException("WidgetIds must have length > 0");
  }
  
  public AppWidgetTarget(Context paramContext, int paramInt, RemoteViews paramRemoteViews, ComponentName paramComponentName)
  {
    this(paramContext, Integer.MIN_VALUE, Integer.MIN_VALUE, paramInt, paramRemoteViews, paramComponentName);
  }
  
  public AppWidgetTarget(Context paramContext, int paramInt, RemoteViews paramRemoteViews, int... paramVarArgs)
  {
    this(paramContext, Integer.MIN_VALUE, Integer.MIN_VALUE, paramInt, paramRemoteViews, paramVarArgs);
  }
  
  private void a()
  {
    AppWidgetManager localAppWidgetManager = AppWidgetManager.getInstance(d);
    if (b != null)
    {
      localAppWidgetManager.updateAppWidget(b, c);
      return;
    }
    localAppWidgetManager.updateAppWidget(a, c);
  }
  
  public void onResourceReady(@NonNull Bitmap paramBitmap, @Nullable Transition<? super Bitmap> paramTransition)
  {
    c.setImageViewBitmap(e, paramBitmap);
    a();
  }
}
