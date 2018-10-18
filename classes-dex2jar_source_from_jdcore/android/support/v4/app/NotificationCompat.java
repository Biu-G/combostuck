package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.Action;
import android.app.Notification.Action.Builder;
import android.app.Notification.BigPictureStyle;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.Notification.DecoratedCustomViewStyle;
import android.app.Notification.InboxStyle;
import android.app.Notification.MessagingStyle;
import android.app.Notification.MessagingStyle.Message;
import android.app.PendingIntent;
import android.app.RemoteInput.Builder;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.media.AudioAttributes.Builder;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.compat.R.color;
import android.support.compat.R.dimen;
import android.support.compat.R.drawable;
import android.support.compat.R.id;
import android.support.compat.R.integer;
import android.support.compat.R.layout;
import android.support.compat.R.string;
import android.support.v4.text.BidiFormatter;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class NotificationCompat
{
  public static final int BADGE_ICON_LARGE = 2;
  public static final int BADGE_ICON_NONE = 0;
  public static final int BADGE_ICON_SMALL = 1;
  public static final String CATEGORY_ALARM = "alarm";
  public static final String CATEGORY_CALL = "call";
  public static final String CATEGORY_EMAIL = "email";
  public static final String CATEGORY_ERROR = "err";
  public static final String CATEGORY_EVENT = "event";
  public static final String CATEGORY_MESSAGE = "msg";
  public static final String CATEGORY_PROGRESS = "progress";
  public static final String CATEGORY_PROMO = "promo";
  public static final String CATEGORY_RECOMMENDATION = "recommendation";
  public static final String CATEGORY_REMINDER = "reminder";
  public static final String CATEGORY_SERVICE = "service";
  public static final String CATEGORY_SOCIAL = "social";
  public static final String CATEGORY_STATUS = "status";
  public static final String CATEGORY_SYSTEM = "sys";
  public static final String CATEGORY_TRANSPORT = "transport";
  @ColorInt
  public static final int COLOR_DEFAULT = 0;
  public static final int DEFAULT_ALL = -1;
  public static final int DEFAULT_LIGHTS = 4;
  public static final int DEFAULT_SOUND = 1;
  public static final int DEFAULT_VIBRATE = 2;
  public static final String EXTRA_AUDIO_CONTENTS_URI = "android.audioContents";
  public static final String EXTRA_BACKGROUND_IMAGE_URI = "android.backgroundImageUri";
  public static final String EXTRA_BIG_TEXT = "android.bigText";
  public static final String EXTRA_COMPACT_ACTIONS = "android.compactActions";
  public static final String EXTRA_CONVERSATION_TITLE = "android.conversationTitle";
  public static final String EXTRA_HIDDEN_CONVERSATION_TITLE = "android.hiddenConversationTitle";
  public static final String EXTRA_INFO_TEXT = "android.infoText";
  public static final String EXTRA_IS_GROUP_CONVERSATION = "android.isGroupConversation";
  public static final String EXTRA_LARGE_ICON = "android.largeIcon";
  public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";
  public static final String EXTRA_MEDIA_SESSION = "android.mediaSession";
  public static final String EXTRA_MESSAGES = "android.messages";
  public static final String EXTRA_MESSAGING_STYLE_USER = "android.messagingStyleUser";
  public static final String EXTRA_PEOPLE = "android.people";
  public static final String EXTRA_PICTURE = "android.picture";
  public static final String EXTRA_PROGRESS = "android.progress";
  public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";
  public static final String EXTRA_PROGRESS_MAX = "android.progressMax";
  public static final String EXTRA_REMOTE_INPUT_HISTORY = "android.remoteInputHistory";
  public static final String EXTRA_SELF_DISPLAY_NAME = "android.selfDisplayName";
  public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";
  public static final String EXTRA_SHOW_WHEN = "android.showWhen";
  public static final String EXTRA_SMALL_ICON = "android.icon";
  public static final String EXTRA_SUB_TEXT = "android.subText";
  public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";
  public static final String EXTRA_TEMPLATE = "android.template";
  public static final String EXTRA_TEXT = "android.text";
  public static final String EXTRA_TEXT_LINES = "android.textLines";
  public static final String EXTRA_TITLE = "android.title";
  public static final String EXTRA_TITLE_BIG = "android.title.big";
  public static final int FLAG_AUTO_CANCEL = 16;
  public static final int FLAG_FOREGROUND_SERVICE = 64;
  public static final int FLAG_GROUP_SUMMARY = 512;
  @Deprecated
  public static final int FLAG_HIGH_PRIORITY = 128;
  public static final int FLAG_INSISTENT = 4;
  public static final int FLAG_LOCAL_ONLY = 256;
  public static final int FLAG_NO_CLEAR = 32;
  public static final int FLAG_ONGOING_EVENT = 2;
  public static final int FLAG_ONLY_ALERT_ONCE = 8;
  public static final int FLAG_SHOW_LIGHTS = 1;
  public static final int GROUP_ALERT_ALL = 0;
  public static final int GROUP_ALERT_CHILDREN = 2;
  public static final int GROUP_ALERT_SUMMARY = 1;
  public static final int PRIORITY_DEFAULT = 0;
  public static final int PRIORITY_HIGH = 1;
  public static final int PRIORITY_LOW = -1;
  public static final int PRIORITY_MAX = 2;
  public static final int PRIORITY_MIN = -2;
  public static final int STREAM_DEFAULT = -1;
  public static final int VISIBILITY_PRIVATE = 0;
  public static final int VISIBILITY_PUBLIC = 1;
  public static final int VISIBILITY_SECRET = -1;
  
  @Deprecated
  public NotificationCompat() {}
  
  @RequiresApi(20)
  static Action a(Notification.Action paramAction)
  {
    android.app.RemoteInput[] arrayOfRemoteInput1 = paramAction.getRemoteInputs();
    RemoteInput[] arrayOfRemoteInput;
    if (arrayOfRemoteInput1 == null)
    {
      arrayOfRemoteInput = null;
    }
    else
    {
      arrayOfRemoteInput = new RemoteInput[arrayOfRemoteInput1.length];
      i = 0;
      while (i < arrayOfRemoteInput1.length)
      {
        android.app.RemoteInput localRemoteInput = arrayOfRemoteInput1[i];
        arrayOfRemoteInput[i] = new RemoteInput(localRemoteInput.getResultKey(), localRemoteInput.getLabel(), localRemoteInput.getChoices(), localRemoteInput.getAllowFreeFormInput(), localRemoteInput.getExtras(), null);
        i += 1;
      }
    }
    boolean bool1;
    if (Build.VERSION.SDK_INT >= 24)
    {
      if ((!paramAction.getExtras().getBoolean("android.support.allowGeneratedReplies")) && (!paramAction.getAllowGeneratedReplies())) {
        bool1 = false;
      } else {
        bool1 = true;
      }
    }
    else {
      bool1 = paramAction.getExtras().getBoolean("android.support.allowGeneratedReplies");
    }
    boolean bool2 = paramAction.getExtras().getBoolean("android.support.action.showsUserInterface", true);
    if (Build.VERSION.SDK_INT >= 28) {}
    for (int i = paramAction.getSemanticAction();; i = paramAction.getExtras().getInt("android.support.action.semanticAction", 0)) {
      break;
    }
    return new Action(icon, title, actionIntent, paramAction.getExtras(), arrayOfRemoteInput, null, bool1, i, bool2);
  }
  
  static Notification[] a(Bundle paramBundle, String paramString)
  {
    Parcelable[] arrayOfParcelable = paramBundle.getParcelableArray(paramString);
    if ((!(arrayOfParcelable instanceof Notification[])) && (arrayOfParcelable != null))
    {
      Notification[] arrayOfNotification = new Notification[arrayOfParcelable.length];
      int i = 0;
      while (i < arrayOfParcelable.length)
      {
        arrayOfNotification[i] = ((Notification)arrayOfParcelable[i]);
        i += 1;
      }
      paramBundle.putParcelableArray(paramString, arrayOfNotification);
      return arrayOfNotification;
    }
    return (Notification[])arrayOfParcelable;
  }
  
  public static Action getAction(Notification paramNotification, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return a(actions[paramInt]);
    }
    int i = Build.VERSION.SDK_INT;
    Object localObject = null;
    if (i >= 19)
    {
      Notification.Action localAction = actions[paramInt];
      SparseArray localSparseArray = extras.getSparseParcelableArray("android.support.actionExtras");
      paramNotification = localObject;
      if (localSparseArray != null) {
        paramNotification = (Bundle)localSparseArray.get(paramInt);
      }
      return i.a(icon, title, actionIntent, paramNotification);
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return i.a(paramNotification, paramInt);
    }
    return null;
  }
  
  public static int getActionCount(Notification paramNotification)
  {
    int j = Build.VERSION.SDK_INT;
    int i = 0;
    if (j >= 19)
    {
      if (actions != null) {
        i = actions.length;
      }
      return i;
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return i.b(paramNotification);
    }
    return 0;
  }
  
  public static int getBadgeIconType(Notification paramNotification)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return paramNotification.getBadgeIconType();
    }
    return 0;
  }
  
  public static String getCategory(Notification paramNotification)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return category;
    }
    return null;
  }
  
  public static String getChannelId(Notification paramNotification)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return paramNotification.getChannelId();
    }
    return null;
  }
  
  @RequiresApi(19)
  public static CharSequence getContentTitle(Notification paramNotification)
  {
    return extras.getCharSequence("android.title");
  }
  
  @Nullable
  public static Bundle getExtras(Notification paramNotification)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return extras;
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return i.a(paramNotification);
    }
    return null;
  }
  
  public static String getGroup(Notification paramNotification)
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return paramNotification.getGroup();
    }
    if (Build.VERSION.SDK_INT >= 19) {
      return extras.getString("android.support.groupKey");
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return i.a(paramNotification).getString("android.support.groupKey");
    }
    return null;
  }
  
  public static int getGroupAlertBehavior(Notification paramNotification)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return paramNotification.getGroupAlertBehavior();
    }
    return 0;
  }
  
  @RequiresApi(21)
  public static List<Action> getInvisibleActions(Notification paramNotification)
  {
    ArrayList localArrayList = new ArrayList();
    paramNotification = extras.getBundle("android.car.EXTENSIONS");
    if (paramNotification == null) {
      return localArrayList;
    }
    paramNotification = paramNotification.getBundle("invisible_actions");
    if (paramNotification != null)
    {
      int i = 0;
      while (i < paramNotification.size())
      {
        localArrayList.add(i.a(paramNotification.getBundle(Integer.toString(i))));
        i += 1;
      }
    }
    return localArrayList;
  }
  
  public static boolean getLocalOnly(Notification paramNotification)
  {
    int i = Build.VERSION.SDK_INT;
    boolean bool = false;
    if (i >= 20)
    {
      if ((flags & 0x100) != 0) {
        bool = true;
      }
      return bool;
    }
    if (Build.VERSION.SDK_INT >= 19) {
      return extras.getBoolean("android.support.localOnly");
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return i.a(paramNotification).getBoolean("android.support.localOnly");
    }
    return false;
  }
  
  public static String getShortcutId(Notification paramNotification)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return paramNotification.getShortcutId();
    }
    return null;
  }
  
  public static String getSortKey(Notification paramNotification)
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return paramNotification.getSortKey();
    }
    if (Build.VERSION.SDK_INT >= 19) {
      return extras.getString("android.support.sortKey");
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return i.a(paramNotification).getString("android.support.sortKey");
    }
    return null;
  }
  
  public static long getTimeoutAfter(Notification paramNotification)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return paramNotification.getTimeoutAfter();
    }
    return 0L;
  }
  
  public static boolean isGroupSummary(Notification paramNotification)
  {
    int i = Build.VERSION.SDK_INT;
    boolean bool = false;
    if (i >= 20)
    {
      if ((flags & 0x200) != 0) {
        bool = true;
      }
      return bool;
    }
    if (Build.VERSION.SDK_INT >= 19) {
      return extras.getBoolean("android.support.isGroupSummary");
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return i.a(paramNotification).getBoolean("android.support.isGroupSummary");
    }
    return false;
  }
  
  public static class Action
  {
    public static final int SEMANTIC_ACTION_ARCHIVE = 5;
    public static final int SEMANTIC_ACTION_CALL = 10;
    public static final int SEMANTIC_ACTION_DELETE = 4;
    public static final int SEMANTIC_ACTION_MARK_AS_READ = 2;
    public static final int SEMANTIC_ACTION_MARK_AS_UNREAD = 3;
    public static final int SEMANTIC_ACTION_MUTE = 6;
    public static final int SEMANTIC_ACTION_NONE = 0;
    public static final int SEMANTIC_ACTION_REPLY = 1;
    public static final int SEMANTIC_ACTION_THUMBS_DOWN = 9;
    public static final int SEMANTIC_ACTION_THUMBS_UP = 8;
    public static final int SEMANTIC_ACTION_UNMUTE = 7;
    final Bundle a;
    public PendingIntent actionIntent;
    boolean b = true;
    private final RemoteInput[] c;
    private final RemoteInput[] d;
    private boolean e;
    private final int f;
    public int icon;
    public CharSequence title;
    
    public Action(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
    {
      this(paramInt, paramCharSequence, paramPendingIntent, new Bundle(), null, null, true, 0, true);
    }
    
    Action(int paramInt1, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle, RemoteInput[] paramArrayOfRemoteInput1, RemoteInput[] paramArrayOfRemoteInput2, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
    {
      icon = paramInt1;
      title = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
      actionIntent = paramPendingIntent;
      if (paramBundle == null) {
        paramBundle = new Bundle();
      }
      a = paramBundle;
      c = paramArrayOfRemoteInput1;
      d = paramArrayOfRemoteInput2;
      e = paramBoolean1;
      f = paramInt2;
      b = paramBoolean2;
    }
    
    public PendingIntent getActionIntent()
    {
      return actionIntent;
    }
    
    public boolean getAllowGeneratedReplies()
    {
      return e;
    }
    
    public RemoteInput[] getDataOnlyRemoteInputs()
    {
      return d;
    }
    
    public Bundle getExtras()
    {
      return a;
    }
    
    public int getIcon()
    {
      return icon;
    }
    
    public RemoteInput[] getRemoteInputs()
    {
      return c;
    }
    
    public int getSemanticAction()
    {
      return f;
    }
    
    public boolean getShowsUserInterface()
    {
      return b;
    }
    
    public CharSequence getTitle()
    {
      return title;
    }
    
    public static final class Builder
    {
      private final int a;
      private final CharSequence b;
      private final PendingIntent c;
      private boolean d = true;
      private final Bundle e;
      private ArrayList<RemoteInput> f;
      private int g;
      private boolean h = true;
      
      public Builder(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
      {
        this(paramInt, paramCharSequence, paramPendingIntent, new Bundle(), null, true, 0, true);
      }
      
      private Builder(int paramInt1, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle, RemoteInput[] paramArrayOfRemoteInput, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
      {
        a = paramInt1;
        b = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
        c = paramPendingIntent;
        e = paramBundle;
        if (paramArrayOfRemoteInput == null) {
          paramCharSequence = null;
        } else {
          paramCharSequence = new ArrayList(Arrays.asList(paramArrayOfRemoteInput));
        }
        f = paramCharSequence;
        d = paramBoolean1;
        g = paramInt2;
        h = paramBoolean2;
      }
      
      public Builder(NotificationCompat.Action paramAction)
      {
        this(icon, title, actionIntent, new Bundle(a), paramAction.getRemoteInputs(), paramAction.getAllowGeneratedReplies(), paramAction.getSemanticAction(), b);
      }
      
      public Builder addExtras(Bundle paramBundle)
      {
        if (paramBundle != null) {
          e.putAll(paramBundle);
        }
        return this;
      }
      
      public Builder addRemoteInput(RemoteInput paramRemoteInput)
      {
        if (f == null) {
          f = new ArrayList();
        }
        f.add(paramRemoteInput);
        return this;
      }
      
      public NotificationCompat.Action build()
      {
        Object localObject1 = new ArrayList();
        ArrayList localArrayList = new ArrayList();
        if (f != null)
        {
          localObject2 = f.iterator();
          while (((Iterator)localObject2).hasNext())
          {
            RemoteInput localRemoteInput = (RemoteInput)((Iterator)localObject2).next();
            if (localRemoteInput.isDataOnly()) {
              ((List)localObject1).add(localRemoteInput);
            } else {
              localArrayList.add(localRemoteInput);
            }
          }
        }
        boolean bool = ((List)localObject1).isEmpty();
        Object localObject2 = null;
        if (bool) {
          localObject1 = null;
        } else {
          localObject1 = (RemoteInput[])((List)localObject1).toArray(new RemoteInput[((List)localObject1).size()]);
        }
        if (!localArrayList.isEmpty()) {
          for (;;)
          {
            localObject2 = (RemoteInput[])localArrayList.toArray(new RemoteInput[localArrayList.size()]);
          }
        }
        return new NotificationCompat.Action(a, b, c, e, (RemoteInput[])localObject2, (RemoteInput[])localObject1, d, g, h);
      }
      
      public Builder extend(NotificationCompat.Action.Extender paramExtender)
      {
        paramExtender.extend(this);
        return this;
      }
      
      public Bundle getExtras()
      {
        return e;
      }
      
      public Builder setAllowGeneratedReplies(boolean paramBoolean)
      {
        d = paramBoolean;
        return this;
      }
      
      public Builder setSemanticAction(int paramInt)
      {
        g = paramInt;
        return this;
      }
      
      public Builder setShowsUserInterface(boolean paramBoolean)
      {
        h = paramBoolean;
        return this;
      }
    }
    
    public static abstract interface Extender
    {
      public abstract NotificationCompat.Action.Builder extend(NotificationCompat.Action.Builder paramBuilder);
    }
    
    @Retention(RetentionPolicy.SOURCE)
    public static @interface SemanticAction {}
    
    public static final class WearableExtender
      implements NotificationCompat.Action.Extender
    {
      private int a = 1;
      private CharSequence b;
      private CharSequence c;
      private CharSequence d;
      
      public WearableExtender() {}
      
      public WearableExtender(NotificationCompat.Action paramAction)
      {
        paramAction = paramAction.getExtras().getBundle("android.wearable.EXTENSIONS");
        if (paramAction != null)
        {
          a = paramAction.getInt("flags", 1);
          b = paramAction.getCharSequence("inProgressLabel");
          c = paramAction.getCharSequence("confirmLabel");
          d = paramAction.getCharSequence("cancelLabel");
        }
      }
      
      private void a(int paramInt, boolean paramBoolean)
      {
        if (paramBoolean)
        {
          a = (paramInt | a);
          return;
        }
        a = (paramInt & a);
      }
      
      public WearableExtender clone()
      {
        WearableExtender localWearableExtender = new WearableExtender();
        a = a;
        b = b;
        c = c;
        d = d;
        return localWearableExtender;
      }
      
      public NotificationCompat.Action.Builder extend(NotificationCompat.Action.Builder paramBuilder)
      {
        Bundle localBundle = new Bundle();
        if (a != 1) {
          localBundle.putInt("flags", a);
        }
        if (b != null) {
          localBundle.putCharSequence("inProgressLabel", b);
        }
        if (c != null) {
          localBundle.putCharSequence("confirmLabel", c);
        }
        if (d != null) {
          localBundle.putCharSequence("cancelLabel", d);
        }
        paramBuilder.getExtras().putBundle("android.wearable.EXTENSIONS", localBundle);
        return paramBuilder;
      }
      
      @Deprecated
      public CharSequence getCancelLabel()
      {
        return d;
      }
      
      @Deprecated
      public CharSequence getConfirmLabel()
      {
        return c;
      }
      
      public boolean getHintDisplayActionInline()
      {
        return (a & 0x4) != 0;
      }
      
      public boolean getHintLaunchesActivity()
      {
        return (a & 0x2) != 0;
      }
      
      @Deprecated
      public CharSequence getInProgressLabel()
      {
        return b;
      }
      
      public boolean isAvailableOffline()
      {
        return (a & 0x1) != 0;
      }
      
      public WearableExtender setAvailableOffline(boolean paramBoolean)
      {
        a(1, paramBoolean);
        return this;
      }
      
      @Deprecated
      public WearableExtender setCancelLabel(CharSequence paramCharSequence)
      {
        d = paramCharSequence;
        return this;
      }
      
      @Deprecated
      public WearableExtender setConfirmLabel(CharSequence paramCharSequence)
      {
        c = paramCharSequence;
        return this;
      }
      
      public WearableExtender setHintDisplayActionInline(boolean paramBoolean)
      {
        a(4, paramBoolean);
        return this;
      }
      
      public WearableExtender setHintLaunchesActivity(boolean paramBoolean)
      {
        a(2, paramBoolean);
        return this;
      }
      
      @Deprecated
      public WearableExtender setInProgressLabel(CharSequence paramCharSequence)
      {
        b = paramCharSequence;
        return this;
      }
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface BadgeIconType {}
  
  public static class BigPictureStyle
    extends NotificationCompat.Style
  {
    private Bitmap d;
    private Bitmap e;
    private boolean f;
    
    public BigPictureStyle() {}
    
    public BigPictureStyle(NotificationCompat.Builder paramBuilder)
    {
      setBuilder(paramBuilder);
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public void apply(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      if (Build.VERSION.SDK_INT >= 16)
      {
        paramNotificationBuilderWithBuilderAccessor = new Notification.BigPictureStyle(paramNotificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(a).bigPicture(d);
        if (f) {
          paramNotificationBuilderWithBuilderAccessor.bigLargeIcon(e);
        }
        if (c) {
          paramNotificationBuilderWithBuilderAccessor.setSummaryText(b);
        }
      }
    }
    
    public BigPictureStyle bigLargeIcon(Bitmap paramBitmap)
    {
      e = paramBitmap;
      f = true;
      return this;
    }
    
    public BigPictureStyle bigPicture(Bitmap paramBitmap)
    {
      d = paramBitmap;
      return this;
    }
    
    public BigPictureStyle setBigContentTitle(CharSequence paramCharSequence)
    {
      a = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
      return this;
    }
    
    public BigPictureStyle setSummaryText(CharSequence paramCharSequence)
    {
      b = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
      c = true;
      return this;
    }
  }
  
  public static class BigTextStyle
    extends NotificationCompat.Style
  {
    private CharSequence d;
    
    public BigTextStyle() {}
    
    public BigTextStyle(NotificationCompat.Builder paramBuilder)
    {
      setBuilder(paramBuilder);
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public void apply(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      if (Build.VERSION.SDK_INT >= 16)
      {
        paramNotificationBuilderWithBuilderAccessor = new Notification.BigTextStyle(paramNotificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(a).bigText(d);
        if (c) {
          paramNotificationBuilderWithBuilderAccessor.setSummaryText(b);
        }
      }
    }
    
    public BigTextStyle bigText(CharSequence paramCharSequence)
    {
      d = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
      return this;
    }
    
    public BigTextStyle setBigContentTitle(CharSequence paramCharSequence)
    {
      a = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
      return this;
    }
    
    public BigTextStyle setSummaryText(CharSequence paramCharSequence)
    {
      b = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
      c = true;
      return this;
    }
  }
  
  public static class Builder
  {
    int A = 0;
    int B = 0;
    Notification C;
    RemoteViews D;
    RemoteViews E;
    RemoteViews F;
    String G;
    int H = 0;
    String I;
    long J;
    int K = 0;
    Notification L = new Notification();
    ArrayList<NotificationCompat.Action> a = new ArrayList();
    CharSequence b;
    CharSequence c;
    PendingIntent d;
    PendingIntent e;
    RemoteViews f;
    Bitmap g;
    CharSequence h;
    int i;
    int j;
    boolean k = true;
    boolean l;
    NotificationCompat.Style m;
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public ArrayList<NotificationCompat.Action> mActions = new ArrayList();
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public Context mContext;
    @Deprecated
    public ArrayList<String> mPeople;
    CharSequence n;
    CharSequence[] o;
    int p;
    int q;
    boolean r;
    String s;
    boolean t;
    String u;
    boolean v = false;
    boolean w;
    boolean x;
    String y;
    Bundle z;
    
    @Deprecated
    public Builder(Context paramContext)
    {
      this(paramContext, null);
    }
    
    public Builder(@NonNull Context paramContext, @NonNull String paramString)
    {
      mContext = paramContext;
      G = paramString;
      L.when = System.currentTimeMillis();
      L.audioStreamType = -1;
      j = 0;
      mPeople = new ArrayList();
    }
    
    private Bitmap a(Bitmap paramBitmap)
    {
      if (paramBitmap != null)
      {
        if (Build.VERSION.SDK_INT >= 27) {
          return paramBitmap;
        }
        Resources localResources = mContext.getResources();
        int i1 = localResources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_width);
        int i2 = localResources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_height);
        if ((paramBitmap.getWidth() <= i1) && (paramBitmap.getHeight() <= i2)) {
          return paramBitmap;
        }
        double d1 = Math.min(i1 / Math.max(1, paramBitmap.getWidth()), i2 / Math.max(1, paramBitmap.getHeight()));
        return Bitmap.createScaledBitmap(paramBitmap, (int)Math.ceil(paramBitmap.getWidth() * d1), (int)Math.ceil(paramBitmap.getHeight() * d1), true);
      }
      return paramBitmap;
    }
    
    private void a(int paramInt, boolean paramBoolean)
    {
      if (paramBoolean)
      {
        localNotification = L;
        flags = (paramInt | flags);
        return;
      }
      Notification localNotification = L;
      flags = (paramInt & flags);
    }
    
    protected static CharSequence limitCharSequenceLength(CharSequence paramCharSequence)
    {
      if (paramCharSequence == null) {
        return paramCharSequence;
      }
      CharSequence localCharSequence = paramCharSequence;
      if (paramCharSequence.length() > 5120) {
        localCharSequence = paramCharSequence.subSequence(0, 5120);
      }
      return localCharSequence;
    }
    
    public Builder addAction(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
    {
      mActions.add(new NotificationCompat.Action(paramInt, paramCharSequence, paramPendingIntent));
      return this;
    }
    
    public Builder addAction(NotificationCompat.Action paramAction)
    {
      mActions.add(paramAction);
      return this;
    }
    
    public Builder addExtras(Bundle paramBundle)
    {
      if (paramBundle != null)
      {
        if (z == null)
        {
          z = new Bundle(paramBundle);
          return this;
        }
        z.putAll(paramBundle);
      }
      return this;
    }
    
    @RequiresApi(21)
    public Builder addInvisibleAction(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
    {
      return addInvisibleAction(new NotificationCompat.Action(paramInt, paramCharSequence, paramPendingIntent));
    }
    
    @RequiresApi(21)
    public Builder addInvisibleAction(NotificationCompat.Action paramAction)
    {
      a.add(paramAction);
      return this;
    }
    
    public Builder addPerson(String paramString)
    {
      mPeople.add(paramString);
      return this;
    }
    
    public Notification build()
    {
      return new h(this).a();
    }
    
    public Builder extend(NotificationCompat.Extender paramExtender)
    {
      paramExtender.extend(this);
      return this;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteViews getBigContentView()
    {
      return E;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public int getColor()
    {
      return A;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteViews getContentView()
    {
      return D;
    }
    
    public Bundle getExtras()
    {
      if (z == null) {
        z = new Bundle();
      }
      return z;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteViews getHeadsUpContentView()
    {
      return F;
    }
    
    @Deprecated
    public Notification getNotification()
    {
      return build();
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public int getPriority()
    {
      return j;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public long getWhenIfShowing()
    {
      if (k) {
        return L.when;
      }
      return 0L;
    }
    
    public Builder setAutoCancel(boolean paramBoolean)
    {
      a(16, paramBoolean);
      return this;
    }
    
    public Builder setBadgeIconType(int paramInt)
    {
      H = paramInt;
      return this;
    }
    
    public Builder setCategory(String paramString)
    {
      y = paramString;
      return this;
    }
    
    public Builder setChannelId(@NonNull String paramString)
    {
      G = paramString;
      return this;
    }
    
    public Builder setColor(@ColorInt int paramInt)
    {
      A = paramInt;
      return this;
    }
    
    public Builder setColorized(boolean paramBoolean)
    {
      w = paramBoolean;
      x = true;
      return this;
    }
    
    public Builder setContent(RemoteViews paramRemoteViews)
    {
      L.contentView = paramRemoteViews;
      return this;
    }
    
    public Builder setContentInfo(CharSequence paramCharSequence)
    {
      h = limitCharSequenceLength(paramCharSequence);
      return this;
    }
    
    public Builder setContentIntent(PendingIntent paramPendingIntent)
    {
      d = paramPendingIntent;
      return this;
    }
    
    public Builder setContentText(CharSequence paramCharSequence)
    {
      c = limitCharSequenceLength(paramCharSequence);
      return this;
    }
    
    public Builder setContentTitle(CharSequence paramCharSequence)
    {
      b = limitCharSequenceLength(paramCharSequence);
      return this;
    }
    
    public Builder setCustomBigContentView(RemoteViews paramRemoteViews)
    {
      E = paramRemoteViews;
      return this;
    }
    
    public Builder setCustomContentView(RemoteViews paramRemoteViews)
    {
      D = paramRemoteViews;
      return this;
    }
    
    public Builder setCustomHeadsUpContentView(RemoteViews paramRemoteViews)
    {
      F = paramRemoteViews;
      return this;
    }
    
    public Builder setDefaults(int paramInt)
    {
      L.defaults = paramInt;
      if ((paramInt & 0x4) != 0)
      {
        Notification localNotification = L;
        flags |= 0x1;
      }
      return this;
    }
    
    public Builder setDeleteIntent(PendingIntent paramPendingIntent)
    {
      L.deleteIntent = paramPendingIntent;
      return this;
    }
    
    public Builder setExtras(Bundle paramBundle)
    {
      z = paramBundle;
      return this;
    }
    
    public Builder setFullScreenIntent(PendingIntent paramPendingIntent, boolean paramBoolean)
    {
      e = paramPendingIntent;
      a(128, paramBoolean);
      return this;
    }
    
    public Builder setGroup(String paramString)
    {
      s = paramString;
      return this;
    }
    
    public Builder setGroupAlertBehavior(int paramInt)
    {
      K = paramInt;
      return this;
    }
    
    public Builder setGroupSummary(boolean paramBoolean)
    {
      t = paramBoolean;
      return this;
    }
    
    public Builder setLargeIcon(Bitmap paramBitmap)
    {
      g = a(paramBitmap);
      return this;
    }
    
    public Builder setLights(@ColorInt int paramInt1, int paramInt2, int paramInt3)
    {
      L.ledARGB = paramInt1;
      L.ledOnMS = paramInt2;
      L.ledOffMS = paramInt3;
      if ((L.ledOnMS != 0) && (L.ledOffMS != 0)) {
        paramInt1 = 1;
      } else {
        paramInt1 = 0;
      }
      L.flags = (paramInt1 | L.flags & 0xFFFFFFFE);
      return this;
    }
    
    public Builder setLocalOnly(boolean paramBoolean)
    {
      v = paramBoolean;
      return this;
    }
    
    public Builder setNumber(int paramInt)
    {
      i = paramInt;
      return this;
    }
    
    public Builder setOngoing(boolean paramBoolean)
    {
      a(2, paramBoolean);
      return this;
    }
    
    public Builder setOnlyAlertOnce(boolean paramBoolean)
    {
      a(8, paramBoolean);
      return this;
    }
    
    public Builder setPriority(int paramInt)
    {
      j = paramInt;
      return this;
    }
    
    public Builder setProgress(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      p = paramInt1;
      q = paramInt2;
      r = paramBoolean;
      return this;
    }
    
    public Builder setPublicVersion(Notification paramNotification)
    {
      C = paramNotification;
      return this;
    }
    
    public Builder setRemoteInputHistory(CharSequence[] paramArrayOfCharSequence)
    {
      o = paramArrayOfCharSequence;
      return this;
    }
    
    public Builder setShortcutId(String paramString)
    {
      I = paramString;
      return this;
    }
    
    public Builder setShowWhen(boolean paramBoolean)
    {
      k = paramBoolean;
      return this;
    }
    
    public Builder setSmallIcon(int paramInt)
    {
      L.icon = paramInt;
      return this;
    }
    
    public Builder setSmallIcon(int paramInt1, int paramInt2)
    {
      L.icon = paramInt1;
      L.iconLevel = paramInt2;
      return this;
    }
    
    public Builder setSortKey(String paramString)
    {
      u = paramString;
      return this;
    }
    
    public Builder setSound(Uri paramUri)
    {
      L.sound = paramUri;
      L.audioStreamType = -1;
      if (Build.VERSION.SDK_INT >= 21) {
        L.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
      }
      return this;
    }
    
    public Builder setSound(Uri paramUri, int paramInt)
    {
      L.sound = paramUri;
      L.audioStreamType = paramInt;
      if (Build.VERSION.SDK_INT >= 21) {
        L.audioAttributes = new AudioAttributes.Builder().setContentType(4).setLegacyStreamType(paramInt).build();
      }
      return this;
    }
    
    public Builder setStyle(NotificationCompat.Style paramStyle)
    {
      if (m != paramStyle)
      {
        m = paramStyle;
        if (m != null) {
          m.setBuilder(this);
        }
      }
      return this;
    }
    
    public Builder setSubText(CharSequence paramCharSequence)
    {
      n = limitCharSequenceLength(paramCharSequence);
      return this;
    }
    
    public Builder setTicker(CharSequence paramCharSequence)
    {
      L.tickerText = limitCharSequenceLength(paramCharSequence);
      return this;
    }
    
    public Builder setTicker(CharSequence paramCharSequence, RemoteViews paramRemoteViews)
    {
      L.tickerText = limitCharSequenceLength(paramCharSequence);
      f = paramRemoteViews;
      return this;
    }
    
    public Builder setTimeoutAfter(long paramLong)
    {
      J = paramLong;
      return this;
    }
    
    public Builder setUsesChronometer(boolean paramBoolean)
    {
      l = paramBoolean;
      return this;
    }
    
    public Builder setVibrate(long[] paramArrayOfLong)
    {
      L.vibrate = paramArrayOfLong;
      return this;
    }
    
    public Builder setVisibility(int paramInt)
    {
      B = paramInt;
      return this;
    }
    
    public Builder setWhen(long paramLong)
    {
      L.when = paramLong;
      return this;
    }
  }
  
  public static final class CarExtender
    implements NotificationCompat.Extender
  {
    private Bitmap a;
    private UnreadConversation b;
    private int c = 0;
    
    public CarExtender() {}
    
    public CarExtender(Notification paramNotification)
    {
      if (Build.VERSION.SDK_INT < 21) {
        return;
      }
      if (NotificationCompat.getExtras(paramNotification) == null) {
        paramNotification = null;
      } else {
        paramNotification = NotificationCompat.getExtras(paramNotification).getBundle("android.car.EXTENSIONS");
      }
      if (paramNotification != null)
      {
        a = ((Bitmap)paramNotification.getParcelable("large_icon"));
        c = paramNotification.getInt("app_color", 0);
        b = a(paramNotification.getBundle("car_conversation"));
      }
    }
    
    @RequiresApi(21)
    private static Bundle a(@NonNull UnreadConversation paramUnreadConversation)
    {
      Bundle localBundle1 = new Bundle();
      Object localObject = paramUnreadConversation.getParticipants();
      int i = 0;
      if ((localObject != null) && (paramUnreadConversation.getParticipants().length > 1)) {
        localObject = paramUnreadConversation.getParticipants()[0];
      } else {
        localObject = null;
      }
      Parcelable[] arrayOfParcelable = new Parcelable[paramUnreadConversation.getMessages().length];
      while (i < arrayOfParcelable.length)
      {
        Bundle localBundle2 = new Bundle();
        localBundle2.putString("text", paramUnreadConversation.getMessages()[i]);
        localBundle2.putString("author", (String)localObject);
        arrayOfParcelable[i] = localBundle2;
        i += 1;
      }
      localBundle1.putParcelableArray("messages", arrayOfParcelable);
      localObject = paramUnreadConversation.getRemoteInput();
      if (localObject != null) {
        localBundle1.putParcelable("remote_input", new RemoteInput.Builder(((RemoteInput)localObject).getResultKey()).setLabel(((RemoteInput)localObject).getLabel()).setChoices(((RemoteInput)localObject).getChoices()).setAllowFreeFormInput(((RemoteInput)localObject).getAllowFreeFormInput()).addExtras(((RemoteInput)localObject).getExtras()).build());
      }
      localBundle1.putParcelable("on_reply", paramUnreadConversation.getReplyPendingIntent());
      localBundle1.putParcelable("on_read", paramUnreadConversation.getReadPendingIntent());
      localBundle1.putStringArray("participants", paramUnreadConversation.getParticipants());
      localBundle1.putLong("timestamp", paramUnreadConversation.getLatestTimestamp());
      return localBundle1;
    }
    
    @RequiresApi(21)
    private static UnreadConversation a(@Nullable Bundle paramBundle)
    {
      RemoteInput localRemoteInput = null;
      if (paramBundle == null) {
        return null;
      }
      Object localObject = paramBundle.getParcelableArray("messages");
      String[] arrayOfString1;
      if (localObject != null)
      {
        arrayOfString1 = new String[localObject.length];
        int j = 0;
        int i = 0;
        while (i < arrayOfString1.length)
        {
          if (!(localObject[i] instanceof Bundle))
          {
            i = j;
            break label89;
          }
          arrayOfString1[i] = ((Bundle)localObject[i]).getString("text");
          if (arrayOfString1[i] == null)
          {
            i = j;
            break label89;
          }
          i += 1;
        }
        i = 1;
        label89:
        if (i == 0) {
          return null;
        }
      }
      else
      {
        arrayOfString1 = null;
      }
      localObject = (PendingIntent)paramBundle.getParcelable("on_read");
      PendingIntent localPendingIntent = (PendingIntent)paramBundle.getParcelable("on_reply");
      android.app.RemoteInput localRemoteInput1 = (android.app.RemoteInput)paramBundle.getParcelable("remote_input");
      String[] arrayOfString2 = paramBundle.getStringArray("participants");
      if (arrayOfString2 != null)
      {
        if (arrayOfString2.length != 1) {
          return null;
        }
        if (localRemoteInput1 != null) {
          localRemoteInput = new RemoteInput(localRemoteInput1.getResultKey(), localRemoteInput1.getLabel(), localRemoteInput1.getChoices(), localRemoteInput1.getAllowFreeFormInput(), localRemoteInput1.getExtras(), null);
        }
        return new UnreadConversation(arrayOfString1, localRemoteInput, localPendingIntent, (PendingIntent)localObject, arrayOfString2, paramBundle.getLong("timestamp"));
      }
      return null;
    }
    
    public NotificationCompat.Builder extend(NotificationCompat.Builder paramBuilder)
    {
      if (Build.VERSION.SDK_INT < 21) {
        return paramBuilder;
      }
      Bundle localBundle = new Bundle();
      if (a != null) {
        localBundle.putParcelable("large_icon", a);
      }
      if (c != 0) {
        localBundle.putInt("app_color", c);
      }
      if (b != null) {
        localBundle.putBundle("car_conversation", a(b));
      }
      paramBuilder.getExtras().putBundle("android.car.EXTENSIONS", localBundle);
      return paramBuilder;
    }
    
    @ColorInt
    public int getColor()
    {
      return c;
    }
    
    public Bitmap getLargeIcon()
    {
      return a;
    }
    
    public UnreadConversation getUnreadConversation()
    {
      return b;
    }
    
    public CarExtender setColor(@ColorInt int paramInt)
    {
      c = paramInt;
      return this;
    }
    
    public CarExtender setLargeIcon(Bitmap paramBitmap)
    {
      a = paramBitmap;
      return this;
    }
    
    public CarExtender setUnreadConversation(UnreadConversation paramUnreadConversation)
    {
      b = paramUnreadConversation;
      return this;
    }
    
    public static class UnreadConversation
    {
      private final String[] a;
      private final RemoteInput b;
      private final PendingIntent c;
      private final PendingIntent d;
      private final String[] e;
      private final long f;
      
      UnreadConversation(String[] paramArrayOfString1, RemoteInput paramRemoteInput, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, String[] paramArrayOfString2, long paramLong)
      {
        a = paramArrayOfString1;
        b = paramRemoteInput;
        d = paramPendingIntent2;
        c = paramPendingIntent1;
        e = paramArrayOfString2;
        f = paramLong;
      }
      
      public long getLatestTimestamp()
      {
        return f;
      }
      
      public String[] getMessages()
      {
        return a;
      }
      
      public String getParticipant()
      {
        if (e.length > 0) {
          return e[0];
        }
        return null;
      }
      
      public String[] getParticipants()
      {
        return e;
      }
      
      public PendingIntent getReadPendingIntent()
      {
        return d;
      }
      
      public RemoteInput getRemoteInput()
      {
        return b;
      }
      
      public PendingIntent getReplyPendingIntent()
      {
        return c;
      }
      
      public static class Builder
      {
        private final List<String> a = new ArrayList();
        private final String b;
        private RemoteInput c;
        private PendingIntent d;
        private PendingIntent e;
        private long f;
        
        public Builder(String paramString)
        {
          b = paramString;
        }
        
        public Builder addMessage(String paramString)
        {
          a.add(paramString);
          return this;
        }
        
        public NotificationCompat.CarExtender.UnreadConversation build()
        {
          String[] arrayOfString = (String[])a.toArray(new String[a.size()]);
          String str = b;
          RemoteInput localRemoteInput = c;
          PendingIntent localPendingIntent1 = e;
          PendingIntent localPendingIntent2 = d;
          long l = f;
          return new NotificationCompat.CarExtender.UnreadConversation(arrayOfString, localRemoteInput, localPendingIntent1, localPendingIntent2, new String[] { str }, l);
        }
        
        public Builder setLatestTimestamp(long paramLong)
        {
          f = paramLong;
          return this;
        }
        
        public Builder setReadPendingIntent(PendingIntent paramPendingIntent)
        {
          d = paramPendingIntent;
          return this;
        }
        
        public Builder setReplyAction(PendingIntent paramPendingIntent, RemoteInput paramRemoteInput)
        {
          c = paramRemoteInput;
          e = paramPendingIntent;
          return this;
        }
      }
    }
  }
  
  public static class DecoratedCustomViewStyle
    extends NotificationCompat.Style
  {
    public DecoratedCustomViewStyle() {}
    
    private RemoteViews a(NotificationCompat.Action paramAction)
    {
      int i;
      if (actionIntent == null) {
        i = 1;
      } else {
        i = 0;
      }
      Object localObject = mBuilder.mContext.getPackageName();
      int j;
      if (i != 0) {
        j = R.layout.notification_action_tombstone;
      } else {
        j = R.layout.notification_action;
      }
      localObject = new RemoteViews((String)localObject, j);
      ((RemoteViews)localObject).setImageViewBitmap(R.id.action_image, createColoredBitmap(paramAction.getIcon(), mBuilder.mContext.getResources().getColor(R.color.notification_action_color_filter)));
      ((RemoteViews)localObject).setTextViewText(R.id.action_text, title);
      if (i == 0) {
        ((RemoteViews)localObject).setOnClickPendingIntent(R.id.action_container, actionIntent);
      }
      if (Build.VERSION.SDK_INT >= 15) {
        ((RemoteViews)localObject).setContentDescription(R.id.action_container, title);
      }
      return localObject;
    }
    
    private RemoteViews a(RemoteViews paramRemoteViews, boolean paramBoolean)
    {
      int i = R.layout.notification_template_custom_big;
      int m = 1;
      int k = 0;
      RemoteViews localRemoteViews1 = applyStandardTemplate(true, i, false);
      localRemoteViews1.removeAllViews(R.id.actions);
      if ((paramBoolean) && (mBuilder.mActions != null))
      {
        int n = Math.min(mBuilder.mActions.size(), 3);
        if (n > 0)
        {
          i = 0;
          for (;;)
          {
            j = m;
            if (i >= n) {
              break;
            }
            RemoteViews localRemoteViews2 = a((NotificationCompat.Action)mBuilder.mActions.get(i));
            localRemoteViews1.addView(R.id.actions, localRemoteViews2);
            i += 1;
          }
        }
      }
      int j = 0;
      if (j != 0) {
        i = k;
      } else {
        i = 8;
      }
      localRemoteViews1.setViewVisibility(R.id.actions, i);
      localRemoteViews1.setViewVisibility(R.id.action_divider, i);
      buildIntoRemoteViews(localRemoteViews1, paramRemoteViews);
      return localRemoteViews1;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public void apply(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      if (Build.VERSION.SDK_INT >= 24) {
        paramNotificationBuilderWithBuilderAccessor.getBuilder().setStyle(new Notification.DecoratedCustomViewStyle());
      }
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      if (Build.VERSION.SDK_INT >= 24) {
        return null;
      }
      paramNotificationBuilderWithBuilderAccessor = mBuilder.getBigContentView();
      if (paramNotificationBuilderWithBuilderAccessor == null) {
        paramNotificationBuilderWithBuilderAccessor = mBuilder.getContentView();
      }
      if (paramNotificationBuilderWithBuilderAccessor == null) {
        return null;
      }
      return a(paramNotificationBuilderWithBuilderAccessor, true);
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      if (Build.VERSION.SDK_INT >= 24) {
        return null;
      }
      if (mBuilder.getContentView() == null) {
        return null;
      }
      return a(mBuilder.getContentView(), false);
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      if (Build.VERSION.SDK_INT >= 24) {
        return null;
      }
      RemoteViews localRemoteViews = mBuilder.getHeadsUpContentView();
      if (localRemoteViews != null) {
        paramNotificationBuilderWithBuilderAccessor = localRemoteViews;
      } else {
        paramNotificationBuilderWithBuilderAccessor = mBuilder.getContentView();
      }
      if (localRemoteViews == null) {
        return null;
      }
      return a(paramNotificationBuilderWithBuilderAccessor, true);
    }
  }
  
  public static abstract interface Extender
  {
    public abstract NotificationCompat.Builder extend(NotificationCompat.Builder paramBuilder);
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface GroupAlertBehavior {}
  
  public static class InboxStyle
    extends NotificationCompat.Style
  {
    private ArrayList<CharSequence> d = new ArrayList();
    
    public InboxStyle() {}
    
    public InboxStyle(NotificationCompat.Builder paramBuilder)
    {
      setBuilder(paramBuilder);
    }
    
    public InboxStyle addLine(CharSequence paramCharSequence)
    {
      d.add(NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence));
      return this;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public void apply(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      if (Build.VERSION.SDK_INT >= 16)
      {
        paramNotificationBuilderWithBuilderAccessor = new Notification.InboxStyle(paramNotificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(a);
        if (c) {
          paramNotificationBuilderWithBuilderAccessor.setSummaryText(b);
        }
        Iterator localIterator = d.iterator();
        while (localIterator.hasNext()) {
          paramNotificationBuilderWithBuilderAccessor.addLine((CharSequence)localIterator.next());
        }
      }
    }
    
    public InboxStyle setBigContentTitle(CharSequence paramCharSequence)
    {
      a = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
      return this;
    }
    
    public InboxStyle setSummaryText(CharSequence paramCharSequence)
    {
      b = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
      c = true;
      return this;
    }
  }
  
  public static class MessagingStyle
    extends NotificationCompat.Style
  {
    public static final int MAXIMUM_RETAINED_MESSAGES = 25;
    private final List<Message> d = new ArrayList();
    private Person e;
    @Nullable
    private CharSequence f;
    @Nullable
    private Boolean g;
    
    private MessagingStyle() {}
    
    public MessagingStyle(@NonNull Person paramPerson)
    {
      if (!TextUtils.isEmpty(paramPerson.getName()))
      {
        e = paramPerson;
        return;
      }
      throw new IllegalArgumentException("User's name must not be empty.");
    }
    
    @Deprecated
    public MessagingStyle(@NonNull CharSequence paramCharSequence)
    {
      e = new Person.Builder().setName(paramCharSequence).build();
    }
    
    @Nullable
    private Message a()
    {
      int i = d.size() - 1;
      while (i >= 0)
      {
        Message localMessage = (Message)d.get(i);
        if ((localMessage.getPerson() != null) && (!TextUtils.isEmpty(localMessage.getPerson().getName()))) {
          return localMessage;
        }
        i -= 1;
      }
      if (!d.isEmpty()) {
        return (Message)d.get(d.size() - 1);
      }
      return null;
    }
    
    @NonNull
    private TextAppearanceSpan a(int paramInt)
    {
      return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(paramInt), null);
    }
    
    private CharSequence a(Message paramMessage)
    {
      BidiFormatter localBidiFormatter = BidiFormatter.getInstance();
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
      int j;
      if (Build.VERSION.SDK_INT >= 21) {
        j = 1;
      } else {
        j = 0;
      }
      int i;
      if (j != 0) {
        i = -16777216;
      } else {
        i = -1;
      }
      if (paramMessage.getPerson() == null) {
        localObject1 = "";
      } else {
        localObject1 = paramMessage.getPerson().getName();
      }
      int k = i;
      Object localObject2 = localObject1;
      if (TextUtils.isEmpty((CharSequence)localObject1))
      {
        localObject1 = e.getName();
        k = i;
        localObject2 = localObject1;
        if (j != 0)
        {
          k = i;
          localObject2 = localObject1;
          if (mBuilder.getColor() != 0)
          {
            k = mBuilder.getColor();
            localObject2 = localObject1;
          }
        }
      }
      Object localObject1 = localBidiFormatter.unicodeWrap(localObject2);
      localSpannableStringBuilder.append((CharSequence)localObject1);
      localSpannableStringBuilder.setSpan(a(k), localSpannableStringBuilder.length() - ((CharSequence)localObject1).length(), localSpannableStringBuilder.length(), 33);
      if (paramMessage.getText() == null) {
        paramMessage = "";
      } else {
        paramMessage = paramMessage.getText();
      }
      localSpannableStringBuilder.append("  ").append(localBidiFormatter.unicodeWrap(paramMessage));
      return localSpannableStringBuilder;
    }
    
    private boolean b()
    {
      int i = d.size() - 1;
      while (i >= 0)
      {
        Message localMessage = (Message)d.get(i);
        if ((localMessage.getPerson() != null) && (localMessage.getPerson().getName() == null)) {
          return true;
        }
        i -= 1;
      }
      return false;
    }
    
    @Nullable
    public static MessagingStyle extractMessagingStyleFromNotification(Notification paramNotification)
    {
      paramNotification = NotificationCompat.getExtras(paramNotification);
      if ((paramNotification != null) && (!paramNotification.containsKey("android.selfDisplayName")) && (!paramNotification.containsKey("android.messagingStyleUser"))) {
        return null;
      }
      try
      {
        MessagingStyle localMessagingStyle = new MessagingStyle();
        localMessagingStyle.restoreFromCompatExtras(paramNotification);
        return localMessagingStyle;
      }
      catch (ClassCastException paramNotification) {}
      return null;
    }
    
    public void addCompatExtras(Bundle paramBundle)
    {
      super.addCompatExtras(paramBundle);
      paramBundle.putCharSequence("android.selfDisplayName", e.getName());
      paramBundle.putBundle("android.messagingStyleUser", e.toBundle());
      paramBundle.putCharSequence("android.hiddenConversationTitle", f);
      if ((f != null) && (g.booleanValue())) {
        paramBundle.putCharSequence("android.conversationTitle", f);
      }
      if (!d.isEmpty()) {
        paramBundle.putParcelableArray("android.messages", Message.a(d));
      }
      if (g != null) {
        paramBundle.putBoolean("android.isGroupConversation", g.booleanValue());
      }
    }
    
    public MessagingStyle addMessage(Message paramMessage)
    {
      d.add(paramMessage);
      if (d.size() > 25) {
        d.remove(0);
      }
      return this;
    }
    
    public MessagingStyle addMessage(CharSequence paramCharSequence, long paramLong, Person paramPerson)
    {
      addMessage(new Message(paramCharSequence, paramLong, paramPerson));
      return this;
    }
    
    @Deprecated
    public MessagingStyle addMessage(CharSequence paramCharSequence1, long paramLong, CharSequence paramCharSequence2)
    {
      d.add(new Message(paramCharSequence1, paramLong, new Person.Builder().setName(paramCharSequence2).build()));
      if (d.size() > 25) {
        d.remove(0);
      }
      return this;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public void apply(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      setGroupConversation(isGroupConversation());
      Object localObject2;
      if (Build.VERSION.SDK_INT >= 24)
      {
        if (Build.VERSION.SDK_INT >= 28) {
          localObject1 = new Notification.MessagingStyle(e.toAndroidPerson());
        } else {
          localObject1 = new Notification.MessagingStyle(e.getName());
        }
        if ((g.booleanValue()) || (Build.VERSION.SDK_INT >= 28)) {
          ((Notification.MessagingStyle)localObject1).setConversationTitle(f);
        }
        if (Build.VERSION.SDK_INT >= 28) {
          ((Notification.MessagingStyle)localObject1).setGroupConversation(g.booleanValue());
        }
        Iterator localIterator = d.iterator();
        while (localIterator.hasNext())
        {
          Message localMessage = (Message)localIterator.next();
          if (Build.VERSION.SDK_INT >= 28)
          {
            localObject2 = localMessage.getPerson();
            CharSequence localCharSequence = localMessage.getText();
            long l = localMessage.getTimestamp();
            if (localObject2 == null) {
              localObject2 = null;
            } else {
              localObject2 = ((Person)localObject2).toAndroidPerson();
            }
            localObject2 = new Notification.MessagingStyle.Message(localCharSequence, l, (android.app.Person)localObject2);
          }
          else
          {
            if (localMessage.getPerson() != null) {
              localObject2 = localMessage.getPerson().getName();
            } else {
              localObject2 = null;
            }
            localObject2 = new Notification.MessagingStyle.Message(localMessage.getText(), localMessage.getTimestamp(), (CharSequence)localObject2);
          }
          if (localMessage.getDataMimeType() != null) {
            ((Notification.MessagingStyle.Message)localObject2).setData(localMessage.getDataMimeType(), localMessage.getDataUri());
          }
          ((Notification.MessagingStyle)localObject1).addMessage((Notification.MessagingStyle.Message)localObject2);
        }
        ((Notification.MessagingStyle)localObject1).setBuilder(paramNotificationBuilderWithBuilderAccessor.getBuilder());
        return;
      }
      Object localObject1 = a();
      if ((f != null) && (g.booleanValue()))
      {
        paramNotificationBuilderWithBuilderAccessor.getBuilder().setContentTitle(f);
      }
      else if (localObject1 != null)
      {
        paramNotificationBuilderWithBuilderAccessor.getBuilder().setContentTitle("");
        if (((Message)localObject1).getPerson() != null) {
          paramNotificationBuilderWithBuilderAccessor.getBuilder().setContentTitle(((Message)localObject1).getPerson().getName());
        }
      }
      if (localObject1 != null)
      {
        localObject2 = paramNotificationBuilderWithBuilderAccessor.getBuilder();
        if (f != null) {
          localObject1 = a((Message)localObject1);
        } else {
          localObject1 = ((Message)localObject1).getText();
        }
        ((Notification.Builder)localObject2).setContentText((CharSequence)localObject1);
      }
      if (Build.VERSION.SDK_INT >= 16)
      {
        localObject2 = new SpannableStringBuilder();
        int i;
        if ((f == null) && (!b())) {
          i = 0;
        } else {
          i = 1;
        }
        int j = d.size() - 1;
        while (j >= 0)
        {
          localObject1 = (Message)d.get(j);
          if (i != 0) {
            localObject1 = a((Message)localObject1);
          } else {
            localObject1 = ((Message)localObject1).getText();
          }
          if (j != d.size() - 1) {
            ((SpannableStringBuilder)localObject2).insert(0, "\n");
          }
          ((SpannableStringBuilder)localObject2).insert(0, (CharSequence)localObject1);
          j -= 1;
        }
        new Notification.BigTextStyle(paramNotificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(null).bigText((CharSequence)localObject2);
      }
    }
    
    @Nullable
    public CharSequence getConversationTitle()
    {
      return f;
    }
    
    public List<Message> getMessages()
    {
      return d;
    }
    
    public Person getUser()
    {
      return e;
    }
    
    @Deprecated
    public CharSequence getUserDisplayName()
    {
      return e.getName();
    }
    
    public boolean isGroupConversation()
    {
      NotificationCompat.Builder localBuilder = mBuilder;
      boolean bool2 = false;
      boolean bool1 = false;
      if ((localBuilder != null) && (mBuilder.mContext.getApplicationInfo().targetSdkVersion < 28) && (g == null))
      {
        if (f != null) {
          bool1 = true;
        }
        return bool1;
      }
      bool1 = bool2;
      if (g != null) {
        bool1 = g.booleanValue();
      }
      return bool1;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    protected void restoreFromCompatExtras(Bundle paramBundle)
    {
      d.clear();
      if (paramBundle.containsKey("android.messagingStyleUser")) {
        e = Person.fromBundle(paramBundle.getBundle("android.messagingStyleUser"));
      } else {
        e = new Person.Builder().setName(paramBundle.getString("android.selfDisplayName")).build();
      }
      f = paramBundle.getCharSequence("android.conversationTitle");
      if (f == null) {
        f = paramBundle.getCharSequence("android.hiddenConversationTitle");
      }
      Parcelable[] arrayOfParcelable = paramBundle.getParcelableArray("android.messages");
      if (arrayOfParcelable != null) {
        d.addAll(Message.a(arrayOfParcelable));
      }
      if (paramBundle.containsKey("android.isGroupConversation")) {
        g = Boolean.valueOf(paramBundle.getBoolean("android.isGroupConversation"));
      }
    }
    
    public MessagingStyle setConversationTitle(@Nullable CharSequence paramCharSequence)
    {
      f = paramCharSequence;
      return this;
    }
    
    public MessagingStyle setGroupConversation(boolean paramBoolean)
    {
      g = Boolean.valueOf(paramBoolean);
      return this;
    }
    
    public static final class Message
    {
      private final CharSequence a;
      private final long b;
      @Nullable
      private final Person c;
      private Bundle d = new Bundle();
      @Nullable
      private String e;
      @Nullable
      private Uri f;
      
      public Message(CharSequence paramCharSequence, long paramLong, @Nullable Person paramPerson)
      {
        a = paramCharSequence;
        b = paramLong;
        c = paramPerson;
      }
      
      @Deprecated
      public Message(CharSequence paramCharSequence1, long paramLong, CharSequence paramCharSequence2)
      {
        this(paramCharSequence1, paramLong, new Person.Builder().setName(paramCharSequence2).build());
      }
      
      private Bundle a()
      {
        Bundle localBundle = new Bundle();
        if (a != null) {
          localBundle.putCharSequence("text", a);
        }
        localBundle.putLong("time", b);
        if (c != null)
        {
          localBundle.putCharSequence("sender", c.getName());
          if (Build.VERSION.SDK_INT >= 28) {
            localBundle.putParcelable("sender_person", c.toAndroidPerson());
          } else {
            localBundle.putBundle("person", c.toBundle());
          }
        }
        if (e != null) {
          localBundle.putString("type", e);
        }
        if (f != null) {
          localBundle.putParcelable("uri", f);
        }
        if (d != null) {
          localBundle.putBundle("extras", d);
        }
        return localBundle;
      }
      
      @Nullable
      static Message a(Bundle paramBundle)
      {
        for (;;)
        {
          try
          {
            if (paramBundle.containsKey("text"))
            {
              if (!paramBundle.containsKey("time")) {
                return null;
              }
              if (paramBundle.containsKey("person"))
              {
                localObject = Person.fromBundle(paramBundle.getBundle("person"));
              }
              else if ((paramBundle.containsKey("sender_person")) && (Build.VERSION.SDK_INT >= 28))
              {
                localObject = Person.fromAndroidPerson((android.app.Person)paramBundle.getParcelable("sender_person"));
              }
              else
              {
                if (!paramBundle.containsKey("sender")) {
                  break label195;
                }
                localObject = new Person.Builder().setName(paramBundle.getCharSequence("sender")).build();
              }
              localObject = new Message(paramBundle.getCharSequence("text"), paramBundle.getLong("time"), (Person)localObject);
              if ((paramBundle.containsKey("type")) && (paramBundle.containsKey("uri"))) {
                ((Message)localObject).setData(paramBundle.getString("type"), (Uri)paramBundle.getParcelable("uri"));
              }
              if (paramBundle.containsKey("extras")) {
                ((Message)localObject).getExtras().putAll(paramBundle.getBundle("extras"));
              }
              return localObject;
            }
            else
            {
              return null;
            }
          }
          catch (ClassCastException paramBundle)
          {
            return null;
          }
          label195:
          Object localObject = null;
        }
      }
      
      @NonNull
      static List<Message> a(Parcelable[] paramArrayOfParcelable)
      {
        ArrayList localArrayList = new ArrayList(paramArrayOfParcelable.length);
        int i = 0;
        while (i < paramArrayOfParcelable.length)
        {
          if ((paramArrayOfParcelable[i] instanceof Bundle))
          {
            Message localMessage = a((Bundle)paramArrayOfParcelable[i]);
            if (localMessage != null) {
              localArrayList.add(localMessage);
            }
          }
          i += 1;
        }
        return localArrayList;
      }
      
      @NonNull
      static Bundle[] a(List<Message> paramList)
      {
        Bundle[] arrayOfBundle = new Bundle[paramList.size()];
        int j = paramList.size();
        int i = 0;
        while (i < j)
        {
          arrayOfBundle[i] = ((Message)paramList.get(i)).a();
          i += 1;
        }
        return arrayOfBundle;
      }
      
      @Nullable
      public String getDataMimeType()
      {
        return e;
      }
      
      @Nullable
      public Uri getDataUri()
      {
        return f;
      }
      
      @NonNull
      public Bundle getExtras()
      {
        return d;
      }
      
      @Nullable
      public Person getPerson()
      {
        return c;
      }
      
      @Deprecated
      @Nullable
      public CharSequence getSender()
      {
        if (c == null) {
          return null;
        }
        return c.getName();
      }
      
      @NonNull
      public CharSequence getText()
      {
        return a;
      }
      
      public long getTimestamp()
      {
        return b;
      }
      
      public Message setData(String paramString, Uri paramUri)
      {
        e = paramString;
        f = paramUri;
        return this;
      }
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface NotificationVisibility {}
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface StreamType {}
  
  public static abstract class Style
  {
    CharSequence a;
    CharSequence b;
    boolean c = false;
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    protected NotificationCompat.Builder mBuilder;
    
    public Style() {}
    
    private static float a(float paramFloat1, float paramFloat2, float paramFloat3)
    {
      if (paramFloat1 < paramFloat2) {
        return paramFloat2;
      }
      paramFloat2 = paramFloat1;
      if (paramFloat1 > paramFloat3) {
        paramFloat2 = paramFloat3;
      }
      return paramFloat2;
    }
    
    private int a()
    {
      Resources localResources = mBuilder.mContext.getResources();
      int i = localResources.getDimensionPixelSize(R.dimen.notification_top_pad);
      int j = localResources.getDimensionPixelSize(R.dimen.notification_top_pad_large_text);
      float f = (a(getConfigurationfontScale, 1.0F, 1.3F) - 1.0F) / 0.29999995F;
      return Math.round((1.0F - f) * i + f * j);
    }
    
    private Bitmap a(int paramInt1, int paramInt2, int paramInt3)
    {
      Drawable localDrawable = mBuilder.mContext.getResources().getDrawable(paramInt1);
      if (paramInt3 == 0) {
        paramInt1 = localDrawable.getIntrinsicWidth();
      } else {
        paramInt1 = paramInt3;
      }
      int i = paramInt3;
      if (paramInt3 == 0) {
        i = localDrawable.getIntrinsicHeight();
      }
      Bitmap localBitmap = Bitmap.createBitmap(paramInt1, i, Bitmap.Config.ARGB_8888);
      localDrawable.setBounds(0, 0, paramInt1, i);
      if (paramInt2 != 0) {
        localDrawable.mutate().setColorFilter(new PorterDuffColorFilter(paramInt2, PorterDuff.Mode.SRC_IN));
      }
      localDrawable.draw(new Canvas(localBitmap));
      return localBitmap;
    }
    
    private Bitmap a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      int j = R.drawable.notification_icon_background;
      int i = paramInt4;
      if (paramInt4 == 0) {
        i = 0;
      }
      Bitmap localBitmap = a(j, i, paramInt2);
      Canvas localCanvas = new Canvas(localBitmap);
      Drawable localDrawable = mBuilder.mContext.getResources().getDrawable(paramInt1).mutate();
      localDrawable.setFilterBitmap(true);
      paramInt1 = (paramInt2 - paramInt3) / 2;
      paramInt2 = paramInt3 + paramInt1;
      localDrawable.setBounds(paramInt1, paramInt1, paramInt2, paramInt2);
      localDrawable.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
      localDrawable.draw(localCanvas);
      return localBitmap;
    }
    
    private void a(RemoteViews paramRemoteViews)
    {
      paramRemoteViews.setViewVisibility(R.id.title, 8);
      paramRemoteViews.setViewVisibility(R.id.text2, 8);
      paramRemoteViews.setViewVisibility(R.id.text, 8);
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public void addCompatExtras(Bundle paramBundle) {}
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public void apply(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor) {}
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteViews applyStandardTemplate(boolean paramBoolean1, int paramInt, boolean paramBoolean2)
    {
      Resources localResources = mBuilder.mContext.getResources();
      RemoteViews localRemoteViews = new RemoteViews(mBuilder.mContext.getPackageName(), paramInt);
      paramInt = mBuilder.getPriority();
      int k = 0;
      if (paramInt < -1) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      if ((Build.VERSION.SDK_INT >= 16) && (Build.VERSION.SDK_INT < 21)) {
        if (paramInt != 0)
        {
          localRemoteViews.setInt(R.id.notification_background, "setBackgroundResource", R.drawable.notification_bg_low);
          localRemoteViews.setInt(R.id.icon, "setBackgroundResource", R.drawable.notification_template_icon_low_bg);
        }
        else
        {
          localRemoteViews.setInt(R.id.notification_background, "setBackgroundResource", R.drawable.notification_bg);
          localRemoteViews.setInt(R.id.icon, "setBackgroundResource", R.drawable.notification_template_icon_bg);
        }
      }
      int i;
      Object localObject;
      if (mBuilder.g != null)
      {
        if (Build.VERSION.SDK_INT >= 16)
        {
          localRemoteViews.setViewVisibility(R.id.icon, 0);
          localRemoteViews.setImageViewBitmap(R.id.icon, mBuilder.g);
        }
        else
        {
          localRemoteViews.setViewVisibility(R.id.icon, 8);
        }
        if ((paramBoolean1) && (mBuilder.L.icon != 0))
        {
          paramInt = localResources.getDimensionPixelSize(R.dimen.notification_right_icon_size);
          i = localResources.getDimensionPixelSize(R.dimen.notification_small_icon_background_padding);
          if (Build.VERSION.SDK_INT >= 21)
          {
            localObject = a(mBuilder.L.icon, paramInt, paramInt - i * 2, mBuilder.getColor());
            localRemoteViews.setImageViewBitmap(R.id.right_icon, (Bitmap)localObject);
          }
          else
          {
            localRemoteViews.setImageViewBitmap(R.id.right_icon, createColoredBitmap(mBuilder.L.icon, -1));
          }
          localRemoteViews.setViewVisibility(R.id.right_icon, 0);
        }
      }
      else if ((paramBoolean1) && (mBuilder.L.icon != 0))
      {
        localRemoteViews.setViewVisibility(R.id.icon, 0);
        if (Build.VERSION.SDK_INT >= 21)
        {
          paramInt = localResources.getDimensionPixelSize(R.dimen.notification_large_icon_width);
          i = localResources.getDimensionPixelSize(R.dimen.notification_big_circle_margin);
          j = localResources.getDimensionPixelSize(R.dimen.notification_small_icon_size_as_large);
          localObject = a(mBuilder.L.icon, paramInt - i, j, mBuilder.getColor());
          localRemoteViews.setImageViewBitmap(R.id.icon, (Bitmap)localObject);
        }
        else
        {
          localRemoteViews.setImageViewBitmap(R.id.icon, createColoredBitmap(mBuilder.L.icon, -1));
        }
      }
      if (mBuilder.b != null) {
        localRemoteViews.setTextViewText(R.id.title, mBuilder.b);
      }
      if (mBuilder.c != null)
      {
        localRemoteViews.setTextViewText(R.id.text, mBuilder.c);
        i = 1;
      }
      else
      {
        i = 0;
      }
      if ((Build.VERSION.SDK_INT < 21) && (mBuilder.g != null)) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      if (mBuilder.h != null)
      {
        localRemoteViews.setTextViewText(R.id.info, mBuilder.h);
        localRemoteViews.setViewVisibility(R.id.info, 0);
      }
      for (;;)
      {
        i = 1;
        paramInt = 1;
        break label658;
        if (mBuilder.i <= 0) {
          break;
        }
        paramInt = localResources.getInteger(R.integer.status_bar_notification_info_maxnum);
        if (mBuilder.i > paramInt)
        {
          localRemoteViews.setTextViewText(R.id.info, localResources.getString(R.string.status_bar_notification_info_overflow));
        }
        else
        {
          localObject = NumberFormat.getIntegerInstance();
          localRemoteViews.setTextViewText(R.id.info, ((NumberFormat)localObject).format(mBuilder.i));
        }
        localRemoteViews.setViewVisibility(R.id.info, 0);
      }
      localRemoteViews.setViewVisibility(R.id.info, 8);
      label658:
      if ((mBuilder.n != null) && (Build.VERSION.SDK_INT >= 16))
      {
        localRemoteViews.setTextViewText(R.id.text, mBuilder.n);
        if (mBuilder.c != null)
        {
          localRemoteViews.setTextViewText(R.id.text2, mBuilder.c);
          localRemoteViews.setViewVisibility(R.id.text2, 0);
          j = 1;
        }
        else
        {
          localRemoteViews.setViewVisibility(R.id.text2, 8);
        }
      }
      else
      {
        j = 0;
      }
      if ((j != 0) && (Build.VERSION.SDK_INT >= 16))
      {
        if (paramBoolean2)
        {
          float f = localResources.getDimensionPixelSize(R.dimen.notification_subtext_size);
          localRemoteViews.setTextViewTextSize(R.id.text, 0, f);
        }
        localRemoteViews.setViewPadding(R.id.line1, 0, 0, 0, 0);
      }
      if (mBuilder.getWhenIfShowing() != 0L)
      {
        if ((mBuilder.l) && (Build.VERSION.SDK_INT >= 16))
        {
          localRemoteViews.setViewVisibility(R.id.chronometer, 0);
          localRemoteViews.setLong(R.id.chronometer, "setBase", mBuilder.getWhenIfShowing() + (SystemClock.elapsedRealtime() - System.currentTimeMillis()));
          localRemoteViews.setBoolean(R.id.chronometer, "setStarted", true);
        }
        else
        {
          localRemoteViews.setViewVisibility(R.id.time, 0);
          localRemoteViews.setLong(R.id.time, "setTime", mBuilder.getWhenIfShowing());
        }
        paramInt = 1;
      }
      int j = R.id.right_side;
      if (paramInt != 0) {
        paramInt = 0;
      } else {
        paramInt = 8;
      }
      localRemoteViews.setViewVisibility(j, paramInt);
      j = R.id.line3;
      if (i != 0) {
        paramInt = k;
      } else {
        paramInt = 8;
      }
      localRemoteViews.setViewVisibility(j, paramInt);
      return localRemoteViews;
    }
    
    public Notification build()
    {
      if (mBuilder != null) {
        return mBuilder.build();
      }
      return null;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public void buildIntoRemoteViews(RemoteViews paramRemoteViews1, RemoteViews paramRemoteViews2)
    {
      a(paramRemoteViews1);
      paramRemoteViews1.removeAllViews(R.id.notification_main_column);
      paramRemoteViews1.addView(R.id.notification_main_column, paramRemoteViews2.clone());
      paramRemoteViews1.setViewVisibility(R.id.notification_main_column, 0);
      if (Build.VERSION.SDK_INT >= 21) {
        paramRemoteViews1.setViewPadding(R.id.notification_main_column_container, 0, a(), 0, 0);
      }
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public Bitmap createColoredBitmap(int paramInt1, int paramInt2)
    {
      return a(paramInt1, paramInt2, 0);
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      return null;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      return null;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
    {
      return null;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    protected void restoreFromCompatExtras(Bundle paramBundle) {}
    
    public void setBuilder(NotificationCompat.Builder paramBuilder)
    {
      if (mBuilder != paramBuilder)
      {
        mBuilder = paramBuilder;
        if (mBuilder != null) {
          mBuilder.setStyle(this);
        }
      }
    }
  }
  
  public static final class WearableExtender
    implements NotificationCompat.Extender
  {
    public static final int SCREEN_TIMEOUT_LONG = -1;
    public static final int SCREEN_TIMEOUT_SHORT = 0;
    public static final int SIZE_DEFAULT = 0;
    public static final int SIZE_FULL_SCREEN = 5;
    public static final int SIZE_LARGE = 4;
    public static final int SIZE_MEDIUM = 3;
    public static final int SIZE_SMALL = 2;
    public static final int SIZE_XSMALL = 1;
    public static final int UNSET_ACTION_INDEX = -1;
    private ArrayList<NotificationCompat.Action> a = new ArrayList();
    private int b = 1;
    private PendingIntent c;
    private ArrayList<Notification> d = new ArrayList();
    private Bitmap e;
    private int f;
    private int g = 8388613;
    private int h = -1;
    private int i = 0;
    private int j;
    private int k = 80;
    private int l;
    private String m;
    private String n;
    
    public WearableExtender() {}
    
    public WearableExtender(Notification paramNotification)
    {
      paramNotification = NotificationCompat.getExtras(paramNotification);
      if (paramNotification != null) {
        paramNotification = paramNotification.getBundle("android.wearable.EXTENSIONS");
      } else {
        paramNotification = null;
      }
      if (paramNotification != null)
      {
        Object localObject = paramNotification.getParcelableArrayList("actions");
        if ((Build.VERSION.SDK_INT >= 16) && (localObject != null))
        {
          NotificationCompat.Action[] arrayOfAction = new NotificationCompat.Action[((ArrayList)localObject).size()];
          int i1 = 0;
          while (i1 < arrayOfAction.length)
          {
            if (Build.VERSION.SDK_INT >= 20) {
              arrayOfAction[i1] = NotificationCompat.a((Notification.Action)((ArrayList)localObject).get(i1));
            } else if (Build.VERSION.SDK_INT >= 16) {
              arrayOfAction[i1] = i.a((Bundle)((ArrayList)localObject).get(i1));
            }
            i1 += 1;
          }
          Collections.addAll(a, (NotificationCompat.Action[])arrayOfAction);
        }
        b = paramNotification.getInt("flags", 1);
        c = ((PendingIntent)paramNotification.getParcelable("displayIntent"));
        localObject = NotificationCompat.a(paramNotification, "pages");
        if (localObject != null) {
          Collections.addAll(d, (Object[])localObject);
        }
        e = ((Bitmap)paramNotification.getParcelable("background"));
        f = paramNotification.getInt("contentIcon");
        g = paramNotification.getInt("contentIconGravity", 8388613);
        h = paramNotification.getInt("contentActionIndex", -1);
        i = paramNotification.getInt("customSizePreset", 0);
        j = paramNotification.getInt("customContentHeight");
        k = paramNotification.getInt("gravity", 80);
        l = paramNotification.getInt("hintScreenTimeout");
        m = paramNotification.getString("dismissalId");
        n = paramNotification.getString("bridgeTag");
      }
    }
    
    @RequiresApi(20)
    private static Notification.Action a(NotificationCompat.Action paramAction)
    {
      Notification.Action.Builder localBuilder = new Notification.Action.Builder(paramAction.getIcon(), paramAction.getTitle(), paramAction.getActionIntent());
      Bundle localBundle;
      if (paramAction.getExtras() != null) {
        localBundle = new Bundle(paramAction.getExtras());
      } else {
        localBundle = new Bundle();
      }
      localBundle.putBoolean("android.support.allowGeneratedReplies", paramAction.getAllowGeneratedReplies());
      if (Build.VERSION.SDK_INT >= 24) {
        localBuilder.setAllowGeneratedReplies(paramAction.getAllowGeneratedReplies());
      }
      localBuilder.addExtras(localBundle);
      paramAction = paramAction.getRemoteInputs();
      if (paramAction != null)
      {
        paramAction = RemoteInput.a(paramAction);
        int i2 = paramAction.length;
        int i1 = 0;
        while (i1 < i2)
        {
          localBuilder.addRemoteInput(paramAction[i1]);
          i1 += 1;
        }
      }
      return localBuilder.build();
    }
    
    private void a(int paramInt, boolean paramBoolean)
    {
      if (paramBoolean)
      {
        b = (paramInt | b);
        return;
      }
      b = (paramInt & b);
    }
    
    public WearableExtender addAction(NotificationCompat.Action paramAction)
    {
      a.add(paramAction);
      return this;
    }
    
    public WearableExtender addActions(List<NotificationCompat.Action> paramList)
    {
      a.addAll(paramList);
      return this;
    }
    
    public WearableExtender addPage(Notification paramNotification)
    {
      d.add(paramNotification);
      return this;
    }
    
    public WearableExtender addPages(List<Notification> paramList)
    {
      d.addAll(paramList);
      return this;
    }
    
    public WearableExtender clearActions()
    {
      a.clear();
      return this;
    }
    
    public WearableExtender clearPages()
    {
      d.clear();
      return this;
    }
    
    public WearableExtender clone()
    {
      WearableExtender localWearableExtender = new WearableExtender();
      a = new ArrayList(a);
      b = b;
      c = c;
      d = new ArrayList(d);
      e = e;
      f = f;
      g = g;
      h = h;
      i = i;
      j = j;
      k = k;
      l = l;
      m = m;
      n = n;
      return localWearableExtender;
    }
    
    public NotificationCompat.Builder extend(NotificationCompat.Builder paramBuilder)
    {
      Bundle localBundle = new Bundle();
      if (!a.isEmpty()) {
        if (Build.VERSION.SDK_INT >= 16)
        {
          ArrayList localArrayList = new ArrayList(a.size());
          Iterator localIterator = a.iterator();
          while (localIterator.hasNext())
          {
            NotificationCompat.Action localAction = (NotificationCompat.Action)localIterator.next();
            if (Build.VERSION.SDK_INT >= 20) {
              localArrayList.add(a(localAction));
            } else if (Build.VERSION.SDK_INT >= 16) {
              localArrayList.add(i.a(localAction));
            }
          }
          localBundle.putParcelableArrayList("actions", localArrayList);
        }
        else
        {
          localBundle.putParcelableArrayList("actions", null);
        }
      }
      if (b != 1) {
        localBundle.putInt("flags", b);
      }
      if (c != null) {
        localBundle.putParcelable("displayIntent", c);
      }
      if (!d.isEmpty()) {
        localBundle.putParcelableArray("pages", (Parcelable[])d.toArray(new Notification[d.size()]));
      }
      if (e != null) {
        localBundle.putParcelable("background", e);
      }
      if (f != 0) {
        localBundle.putInt("contentIcon", f);
      }
      if (g != 8388613) {
        localBundle.putInt("contentIconGravity", g);
      }
      if (h != -1) {
        localBundle.putInt("contentActionIndex", h);
      }
      if (i != 0) {
        localBundle.putInt("customSizePreset", i);
      }
      if (j != 0) {
        localBundle.putInt("customContentHeight", j);
      }
      if (k != 80) {
        localBundle.putInt("gravity", k);
      }
      if (l != 0) {
        localBundle.putInt("hintScreenTimeout", l);
      }
      if (m != null) {
        localBundle.putString("dismissalId", m);
      }
      if (n != null) {
        localBundle.putString("bridgeTag", n);
      }
      paramBuilder.getExtras().putBundle("android.wearable.EXTENSIONS", localBundle);
      return paramBuilder;
    }
    
    public List<NotificationCompat.Action> getActions()
    {
      return a;
    }
    
    public Bitmap getBackground()
    {
      return e;
    }
    
    public String getBridgeTag()
    {
      return n;
    }
    
    public int getContentAction()
    {
      return h;
    }
    
    @Deprecated
    public int getContentIcon()
    {
      return f;
    }
    
    @Deprecated
    public int getContentIconGravity()
    {
      return g;
    }
    
    public boolean getContentIntentAvailableOffline()
    {
      return (b & 0x1) != 0;
    }
    
    @Deprecated
    public int getCustomContentHeight()
    {
      return j;
    }
    
    @Deprecated
    public int getCustomSizePreset()
    {
      return i;
    }
    
    public String getDismissalId()
    {
      return m;
    }
    
    public PendingIntent getDisplayIntent()
    {
      return c;
    }
    
    @Deprecated
    public int getGravity()
    {
      return k;
    }
    
    public boolean getHintAmbientBigPicture()
    {
      return (b & 0x20) != 0;
    }
    
    @Deprecated
    public boolean getHintAvoidBackgroundClipping()
    {
      return (b & 0x10) != 0;
    }
    
    public boolean getHintContentIntentLaunchesActivity()
    {
      return (b & 0x40) != 0;
    }
    
    @Deprecated
    public boolean getHintHideIcon()
    {
      return (b & 0x2) != 0;
    }
    
    @Deprecated
    public int getHintScreenTimeout()
    {
      return l;
    }
    
    @Deprecated
    public boolean getHintShowBackgroundOnly()
    {
      return (b & 0x4) != 0;
    }
    
    public List<Notification> getPages()
    {
      return d;
    }
    
    public boolean getStartScrollBottom()
    {
      return (b & 0x8) != 0;
    }
    
    public WearableExtender setBackground(Bitmap paramBitmap)
    {
      e = paramBitmap;
      return this;
    }
    
    public WearableExtender setBridgeTag(String paramString)
    {
      n = paramString;
      return this;
    }
    
    public WearableExtender setContentAction(int paramInt)
    {
      h = paramInt;
      return this;
    }
    
    @Deprecated
    public WearableExtender setContentIcon(int paramInt)
    {
      f = paramInt;
      return this;
    }
    
    @Deprecated
    public WearableExtender setContentIconGravity(int paramInt)
    {
      g = paramInt;
      return this;
    }
    
    public WearableExtender setContentIntentAvailableOffline(boolean paramBoolean)
    {
      a(1, paramBoolean);
      return this;
    }
    
    @Deprecated
    public WearableExtender setCustomContentHeight(int paramInt)
    {
      j = paramInt;
      return this;
    }
    
    @Deprecated
    public WearableExtender setCustomSizePreset(int paramInt)
    {
      i = paramInt;
      return this;
    }
    
    public WearableExtender setDismissalId(String paramString)
    {
      m = paramString;
      return this;
    }
    
    public WearableExtender setDisplayIntent(PendingIntent paramPendingIntent)
    {
      c = paramPendingIntent;
      return this;
    }
    
    @Deprecated
    public WearableExtender setGravity(int paramInt)
    {
      k = paramInt;
      return this;
    }
    
    public WearableExtender setHintAmbientBigPicture(boolean paramBoolean)
    {
      a(32, paramBoolean);
      return this;
    }
    
    @Deprecated
    public WearableExtender setHintAvoidBackgroundClipping(boolean paramBoolean)
    {
      a(16, paramBoolean);
      return this;
    }
    
    public WearableExtender setHintContentIntentLaunchesActivity(boolean paramBoolean)
    {
      a(64, paramBoolean);
      return this;
    }
    
    @Deprecated
    public WearableExtender setHintHideIcon(boolean paramBoolean)
    {
      a(2, paramBoolean);
      return this;
    }
    
    @Deprecated
    public WearableExtender setHintScreenTimeout(int paramInt)
    {
      l = paramInt;
      return this;
    }
    
    @Deprecated
    public WearableExtender setHintShowBackgroundOnly(boolean paramBoolean)
    {
      a(4, paramBoolean);
      return this;
    }
    
    public WearableExtender setStartScrollBottom(boolean paramBoolean)
    {
      a(8, paramBoolean);
      return this;
    }
  }
}
