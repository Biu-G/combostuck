.class Lcn/edu/pku/pkurunner/Map/GPSManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Map/GPSManager$a;,
        Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException;,
        Lcn/edu/pku/pkurunner/Map/GPSManager$GPSStatusListener;,
        Lcn/edu/pku/pkurunner/Map/GPSManager$GPSLocationListener;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/edu/pku/pkurunner/Map/GPSManager$GPSLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/edu/pku/pkurunner/Map/GPSManager$GPSStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/location/LocationManager;

.field private static d:Landroid/location/LocationListener;

.field private static e:Landroid/location/GpsStatus$Listener;

.field private static f:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->a:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->b:Ljava/util/HashMap;

    return-void
.end method

.method static a()V
    .locals 2

    .line 98
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->d:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->c:Landroid/location/LocationManager;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/GPSManager;->d:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 100
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->c:Landroid/location/LocationManager;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/GPSManager;->e:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 102
    :cond_0
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 103
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 104
    sput-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->d:Landroid/location/LocationListener;

    .line 105
    sput-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->c:Landroid/location/LocationManager;

    return-void
.end method

.method private static synthetic a(I)V
    .locals 1

    .line 62
    :try_start_0
    sget-object p0, Lcn/edu/pku/pkurunner/Map/GPSManager;->c:Landroid/location/LocationManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object p0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Map/GPSManager;->a(Landroid/location/GpsStatus;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "location"

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    sput-object p0, Lcn/edu/pku/pkurunner/Map/GPSManager;->c:Landroid/location/LocationManager;

    .line 42
    new-instance p0, Lcn/edu/pku/pkurunner/Map/GPSManager$1;

    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Map/GPSManager$1;-><init>()V

    sput-object p0, Lcn/edu/pku/pkurunner/Map/GPSManager;->d:Landroid/location/LocationListener;

    .line 60
    sget-object p0, Lcn/edu/pku/pkurunner/Map/-$$Lambda$GPSManager$1u_WGsa5CfvQVRl3RytKVALkk68;->INSTANCE:Lcn/edu/pku/pkurunner/Map/-$$Lambda$GPSManager$1u_WGsa5CfvQVRl3RytKVALkk68;

    sput-object p0, Lcn/edu/pku/pkurunner/Map/GPSManager;->e:Landroid/location/GpsStatus$Listener;

    return-void
.end method

.method private static a(Landroid/location/GpsStatus;)V
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPSStatus updated! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSStatusListener;

    .line 175
    invoke-interface {v1, p0}, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSStatusListener;->onStatusUpdate(Landroid/location/GpsStatus;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/location/Location;)V
    .locals 0

    .line 25
    invoke-static {p0}, Lcn/edu/pku/pkurunner/Map/GPSManager;->b(Landroid/location/Location;)V

    return-void
.end method

.method static a(Lcn/edu/pku/pkurunner/Map/GPSManager$GPSLocationListener;Ljava/lang/String;)V
    .locals 1

    .line 109
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcn/edu/pku/pkurunner/Map/GPSManager;->f()V

    .line 112
    :cond_0
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Lcn/edu/pku/pkurunner/Map/GPSManager$GPSStatusListener;Ljava/lang/String;)V
    .locals 1

    .line 123
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcn/edu/pku/pkurunner/Map/GPSManager;->g()V

    .line 126
    :cond_0
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic a(Lio/reactivex/ObservableEmitter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;->GPS_NOT_PROVIDED:Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

    invoke-direct {v0, v1}, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException;-><init>(Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;)V

    invoke-interface {p0, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 148
    :cond_0
    new-instance v0, Lcn/edu/pku/pkurunner/Map/GPSManager$a;

    const-wide/16 v3, 0x271a

    const-wide/16 v5, 0x3e8

    move-object v2, v0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcn/edu/pku/pkurunner/Map/GPSManager$a;-><init>(JJLio/reactivex/ObservableEmitter;)V

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    .line 116
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object p0, Lcn/edu/pku/pkurunner/Map/GPSManager;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 118
    invoke-static {}, Lcn/edu/pku/pkurunner/Map/GPSManager;->h()V

    :cond_0
    return-void
.end method

.method static b()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Map/GPSManager$a$a;",
            ">;"
        }
    .end annotation

    .line 142
    sget-object v0, Lcn/edu/pku/pkurunner/Map/-$$Lambda$GPSManager$PGZePYmtmnAltvXvqvU1FVpYZqw;->INSTANCE:Lcn/edu/pku/pkurunner/Map/-$$Lambda$GPSManager$PGZePYmtmnAltvXvqvU1FVpYZqw;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/location/Location;)V
    .locals 7

    const-string v0, "Location at %s now."

    const/4 v1, 0x1

    .line 153
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 154
    sput-object p0, Lcn/edu/pku/pkurunner/Map/GPSManager;->f:Landroid/location/Location;

    .line 157
    invoke-virtual {p0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lcn/edu/pku/pkurunner/Map/WGS84_GCJ02;->convert(DD)[D

    move-result-object v0

    .line 163
    aget-wide v2, v0, v4

    invoke-virtual {p0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 164
    aget-wide v1, v0, v1

    invoke-virtual {p0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/edu/pku/pkurunner/Map/GPSManager;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listeners"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSLocationListener;

    .line 167
    invoke-interface {v1, p0}, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSLocationListener;->onLocationUpdate(Landroid/location/Location;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static b(Ljava/lang/String;)V
    .locals 1

    .line 130
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object p0, Lcn/edu/pku/pkurunner/Map/GPSManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 132
    invoke-static {}, Lcn/edu/pku/pkurunner/Map/GPSManager;->i()V

    :cond_0
    return-void
.end method

.method static synthetic c()V
    .locals 0

    .line 25
    invoke-static {}, Lcn/edu/pku/pkurunner/Map/GPSManager;->f()V

    return-void
.end method

.method static synthetic d()Landroid/location/Location;
    .locals 1

    .line 25
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->f:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic e()V
    .locals 0

    .line 25
    invoke-static {}, Lcn/edu/pku/pkurunner/Map/GPSManager;->h()V

    return-void
.end method

.method private static f()V
    .locals 6

    .line 71
    :try_start_0
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    sget-object v5, Lcn/edu/pku/pkurunner/Map/GPSManager;->d:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static g()V
    .locals 2

    .line 79
    :try_start_0
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->c:Landroid/location/LocationManager;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/GPSManager;->e:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static h()V
    .locals 2

    .line 86
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->d:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->c:Landroid/location/LocationManager;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/GPSManager;->d:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method private static i()V
    .locals 2

    .line 92
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->d:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager;->c:Landroid/location/LocationManager;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/GPSManager;->e:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$1u_WGsa5CfvQVRl3RytKVALkk68(I)V
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Map/GPSManager;->a(I)V

    return-void
.end method

.method public static synthetic lambda$PGZePYmtmnAltvXvqvU1FVpYZqw(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Map/GPSManager;->a(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
