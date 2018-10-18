package com.bumptech.glide.request.target;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.RemoteViews;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Preconditions;

public class NotificationTarget
  extends SimpleTarget<Bitmap>
{
  private final RemoteViews a;
  private final Context b;
  private final int c;
  private final String d;
  private final Notification e;
  private final int f;
  
  public NotificationTarget(Context paramContext, int paramInt1, int paramInt2, int paramInt3, RemoteViews paramRemoteViews, Notification paramNotification, int paramInt4, String paramString)
  {
    super(paramInt1, paramInt2);
    b = ((Context)Preconditions.checkNotNull(paramContext, "Context must not be null!"));
    e = ((Notification)Preconditions.checkNotNull(paramNotification, "Notification object can not be null!"));
    a = ((RemoteViews)Preconditions.checkNotNull(paramRemoteViews, "RemoteViews object can not be null!"));
    f = paramInt3;
    c = paramInt4;
    d = paramString;
  }
  
  public NotificationTarget(Context paramContext, int paramInt1, RemoteViews paramRemoteViews, Notification paramNotification, int paramInt2)
  {
    this(paramContext, paramInt1, paramRemoteViews, paramNotification, paramInt2, null);
  }
  
  public NotificationTarget(Context paramContext, int paramInt1, RemoteViews paramRemoteViews, Notification paramNotification, int paramInt2, String paramString)
  {
    this(paramContext, Integer.MIN_VALUE, Integer.MIN_VALUE, paramInt1, paramRemoteViews, paramNotification, paramInt2, paramString);
  }
  
  private void a()
  {
    ((NotificationManager)Preconditions.checkNotNull((NotificationManager)b.getSystemService("notification"))).notify(d, c, e);
  }
  
  public void onResourceReady(@NonNull Bitmap paramBitmap, @Nullable Transition<? super Bitmap> paramTransition)
  {
    a.setImageViewBitmap(f, paramBitmap);
    a();
  }
}
