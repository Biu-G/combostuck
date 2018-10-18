package android.support.v4.media.app;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.Notification.DecoratedMediaCustomViewStyle;
import android.app.Notification.MediaStyle;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.media.session.MediaSession.Token;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.mediacompat.R.color;
import android.support.mediacompat.R.id;
import android.support.mediacompat.R.integer;
import android.support.mediacompat.R.layout;
import android.support.v4.app.BundleCompat;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompat.Action;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.app.NotificationCompat.Style;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.widget.RemoteViews;
import java.util.ArrayList;

public class NotificationCompat
{
  private NotificationCompat() {}
  
  public static class DecoratedMediaCustomViewStyle
    extends NotificationCompat.MediaStyle
  {
    public DecoratedMediaCustomViewStyle() {}
    
    private void a(RemoteViews paramRemoteViews)
    {
      int i;
      if (mBuilder.getColor() != 0) {
        i = mBuilder.getColor();
      } else {
        i = mBuilder.mContext.getResources().getColor(R.color.notification_material_background_media_default_color);
      }
      paramRemoteViews.setInt(R.id.status_bar_latest_event_content, "setBackgroundColor", i);
    }
    
    int a()
    {
      if (mBuilder.getContentView() != null) {
        return R.layout.notification_template_media_custom;
      }
      return super.a();
    }
    
    int a(int paramInt)
    {
      if (paramInt <= 3) {
        return R.layout.notification_template_big_media_narrow_custom;
      }
      return R.layout.notification_template_big_media_custom;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public void apply(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      if (Build.VERSION.SDK_INT >= 24)
      {
        paramNotificationBuilderWithBuilderAccessor.getBuilder().setStyle(a(new Notification.DecoratedMediaCustomViewStyle()));
        return;
      }
      super.apply(paramNotificationBuilderWithBuilderAccessor);
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      if (Build.VERSION.SDK_INT >= 24) {
        return null;
      }
      if (mBuilder.getBigContentView() != null) {
        paramNotificationBuilderWithBuilderAccessor = mBuilder.getBigContentView();
      } else {
        paramNotificationBuilderWithBuilderAccessor = mBuilder.getContentView();
      }
      if (paramNotificationBuilderWithBuilderAccessor == null) {
        return null;
      }
      RemoteViews localRemoteViews = c();
      buildIntoRemoteViews(localRemoteViews, paramNotificationBuilderWithBuilderAccessor);
      if (Build.VERSION.SDK_INT >= 21) {
        a(localRemoteViews);
      }
      return localRemoteViews;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      if (Build.VERSION.SDK_INT >= 24) {
        return null;
      }
      paramNotificationBuilderWithBuilderAccessor = mBuilder.getContentView();
      int j = 0;
      int i;
      if (paramNotificationBuilderWithBuilderAccessor != null) {
        i = 1;
      } else {
        i = 0;
      }
      if (Build.VERSION.SDK_INT >= 21)
      {
        if ((i != 0) || (mBuilder.getBigContentView() != null)) {
          j = 1;
        }
        if (j != 0)
        {
          paramNotificationBuilderWithBuilderAccessor = b();
          if (i != 0) {
            buildIntoRemoteViews(paramNotificationBuilderWithBuilderAccessor, mBuilder.getContentView());
          }
          a(paramNotificationBuilderWithBuilderAccessor);
          return paramNotificationBuilderWithBuilderAccessor;
        }
      }
      else
      {
        paramNotificationBuilderWithBuilderAccessor = b();
        if (i != 0)
        {
          buildIntoRemoteViews(paramNotificationBuilderWithBuilderAccessor, mBuilder.getContentView());
          return paramNotificationBuilderWithBuilderAccessor;
        }
      }
      return null;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      if (Build.VERSION.SDK_INT >= 24) {
        return null;
      }
      if (mBuilder.getHeadsUpContentView() != null) {
        paramNotificationBuilderWithBuilderAccessor = mBuilder.getHeadsUpContentView();
      } else {
        paramNotificationBuilderWithBuilderAccessor = mBuilder.getContentView();
      }
      if (paramNotificationBuilderWithBuilderAccessor == null) {
        return null;
      }
      RemoteViews localRemoteViews = c();
      buildIntoRemoteViews(localRemoteViews, paramNotificationBuilderWithBuilderAccessor);
      if (Build.VERSION.SDK_INT >= 21) {
        a(localRemoteViews);
      }
      return localRemoteViews;
    }
  }
  
  public static class MediaStyle
    extends NotificationCompat.Style
  {
    int[] d = null;
    MediaSessionCompat.Token e;
    boolean f;
    PendingIntent g;
    
    public MediaStyle() {}
    
    public MediaStyle(NotificationCompat.Builder paramBuilder)
    {
      setBuilder(paramBuilder);
    }
    
    private RemoteViews a(NotificationCompat.Action paramAction)
    {
      int i;
      if (paramAction.getActionIntent() == null) {
        i = 1;
      } else {
        i = 0;
      }
      RemoteViews localRemoteViews = new RemoteViews(mBuilder.mContext.getPackageName(), R.layout.notification_media_action);
      localRemoteViews.setImageViewResource(R.id.action0, paramAction.getIcon());
      if (i == 0) {
        localRemoteViews.setOnClickPendingIntent(R.id.action0, paramAction.getActionIntent());
      }
      if (Build.VERSION.SDK_INT >= 15) {
        localRemoteViews.setContentDescription(R.id.action0, paramAction.getTitle());
      }
      return localRemoteViews;
    }
    
    public static MediaSessionCompat.Token getMediaSession(Notification paramNotification)
    {
      paramNotification = android.support.v4.app.NotificationCompat.getExtras(paramNotification);
      if (paramNotification != null) {
        if (Build.VERSION.SDK_INT >= 21)
        {
          paramNotification = paramNotification.getParcelable("android.mediaSession");
          if (paramNotification != null) {
            return MediaSessionCompat.Token.fromToken(paramNotification);
          }
        }
        else
        {
          Object localObject = BundleCompat.getBinder(paramNotification, "android.mediaSession");
          if (localObject != null)
          {
            paramNotification = Parcel.obtain();
            paramNotification.writeStrongBinder((IBinder)localObject);
            paramNotification.setDataPosition(0);
            localObject = (MediaSessionCompat.Token)MediaSessionCompat.Token.CREATOR.createFromParcel(paramNotification);
            paramNotification.recycle();
            return localObject;
          }
        }
      }
      return null;
    }
    
    int a()
    {
      return R.layout.notification_template_media;
    }
    
    int a(int paramInt)
    {
      if (paramInt <= 3) {
        return R.layout.notification_template_big_media_narrow;
      }
      return R.layout.notification_template_big_media;
    }
    
    @RequiresApi(21)
    Notification.MediaStyle a(Notification.MediaStyle paramMediaStyle)
    {
      if (d != null) {
        paramMediaStyle.setShowActionsInCompactView(d);
      }
      if (e != null) {
        paramMediaStyle.setMediaSession((MediaSession.Token)e.getToken());
      }
      return paramMediaStyle;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public void apply(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      if (Build.VERSION.SDK_INT >= 21)
      {
        paramNotificationBuilderWithBuilderAccessor.getBuilder().setStyle(a(new Notification.MediaStyle()));
        return;
      }
      if (f) {
        paramNotificationBuilderWithBuilderAccessor.getBuilder().setOngoing(true);
      }
    }
    
    RemoteViews b()
    {
      RemoteViews localRemoteViews1 = applyStandardTemplate(false, a(), true);
      int k = mBuilder.mActions.size();
      int i;
      if (d == null) {
        i = 0;
      } else {
        i = Math.min(d.length, 3);
      }
      localRemoteViews1.removeAllViews(R.id.media_actions);
      if (i > 0)
      {
        int j = 0;
        while (j < i) {
          if (j < k)
          {
            RemoteViews localRemoteViews2 = a((NotificationCompat.Action)mBuilder.mActions.get(d[j]));
            localRemoteViews1.addView(R.id.media_actions, localRemoteViews2);
            j += 1;
          }
          else
          {
            throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", new Object[] { Integer.valueOf(j), Integer.valueOf(k - 1) }));
          }
        }
      }
      if (f)
      {
        localRemoteViews1.setViewVisibility(R.id.end_padder, 8);
        localRemoteViews1.setViewVisibility(R.id.cancel_action, 0);
        localRemoteViews1.setOnClickPendingIntent(R.id.cancel_action, g);
        localRemoteViews1.setInt(R.id.cancel_action, "setAlpha", mBuilder.mContext.getResources().getInteger(R.integer.cancel_button_image_alpha));
        return localRemoteViews1;
      }
      localRemoteViews1.setViewVisibility(R.id.end_padder, 0);
      localRemoteViews1.setViewVisibility(R.id.cancel_action, 8);
      return localRemoteViews1;
    }
    
    RemoteViews c()
    {
      int j = Math.min(mBuilder.mActions.size(), 5);
      RemoteViews localRemoteViews1 = applyStandardTemplate(false, a(j), false);
      localRemoteViews1.removeAllViews(R.id.media_actions);
      if (j > 0)
      {
        int i = 0;
        while (i < j)
        {
          RemoteViews localRemoteViews2 = a((NotificationCompat.Action)mBuilder.mActions.get(i));
          localRemoteViews1.addView(R.id.media_actions, localRemoteViews2);
          i += 1;
        }
      }
      if (f)
      {
        localRemoteViews1.setViewVisibility(R.id.cancel_action, 0);
        localRemoteViews1.setInt(R.id.cancel_action, "setAlpha", mBuilder.mContext.getResources().getInteger(R.integer.cancel_button_image_alpha));
        localRemoteViews1.setOnClickPendingIntent(R.id.cancel_action, g);
        return localRemoteViews1;
      }
      localRemoteViews1.setViewVisibility(R.id.cancel_action, 8);
      return localRemoteViews1;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      if (Build.VERSION.SDK_INT >= 21) {
        return null;
      }
      return c();
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      if (Build.VERSION.SDK_INT >= 21) {
        return null;
      }
      return b();
    }
    
    public MediaStyle setCancelButtonIntent(PendingIntent paramPendingIntent)
    {
      g = paramPendingIntent;
      return this;
    }
    
    public MediaStyle setMediaSession(MediaSessionCompat.Token paramToken)
    {
      e = paramToken;
      return this;
    }
    
    public MediaStyle setShowActionsInCompactView(int... paramVarArgs)
    {
      d = paramVarArgs;
      return this;
    }
    
    public MediaStyle setShowCancelButton(boolean paramBoolean)
    {
      if (Build.VERSION.SDK_INT < 21) {
        f = paramBoolean;
      }
      return this;
    }
  }
}
