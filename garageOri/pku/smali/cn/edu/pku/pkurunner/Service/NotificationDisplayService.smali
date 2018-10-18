.class public Lcn/edu/pku/pkurunner/Service/NotificationDisplayService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    const-string v0, "PKURunner"

    const-string v1, "PKURunner Foreground Service"

    .line 35
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 37
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Service/NotificationDisplayService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Service/NotificationDisplayService;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f060164

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string v1, "notification"

    .line 39
    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/Service/NotificationDisplayService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const-string p1, "onBind()"

    .line 75
    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 27
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "onCreate()"

    .line 28
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Service/NotificationDisplayService;->stopForeground(Z)V

    .line 82
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "onDestroy"

    .line 83
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string p1, "onStartCommand()"

    .line 48
    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 50
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    .line 51
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Service/NotificationDisplayService;->a()Ljava/lang/String;

    move-result-object p1

    .line 52
    new-instance p2, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Service/NotificationDisplayService;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    new-instance p2, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Service/NotificationDisplayService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcn/edu/pku/pkurunner/MainActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p3, 0x0

    .line 58
    invoke-static {p0, p3, p1, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 57
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Service/NotificationDisplayService;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const/high16 v0, 0x7f0e0000

    invoke-static {p3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p1

    const p3, 0x7f0f0135

    .line 60
    invoke-virtual {p0, p3}, Lcn/edu/pku/pkurunner/Service/NotificationDisplayService;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const p3, 0x7f0800b5

    .line 61
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const p3, 0x7f0f0134

    .line 62
    invoke-virtual {p0, p3}, Lcn/edu/pku/pkurunner/Service/NotificationDisplayService;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 65
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/4 p2, 0x1

    .line 66
    iput p2, p1, Landroid/app/Notification;->defaults:I

    const/16 p2, 0x6e

    .line 68
    invoke-virtual {p0, p2, p1}, Lcn/edu/pku/pkurunner/Service/NotificationDisplayService;->startForeground(ILandroid/app/Notification;)V

    const/4 p1, 0x2

    return p1
.end method
