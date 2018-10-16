.class public Lcom/amap/api/mapcore2d/ef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Lcom/amap/api/mapcore2d/ef;


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/mapcore2d/cy;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ef;->c:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/amap/api/mapcore2d/ef;->d:Lcom/amap/api/mapcore2d/cy;

    .line 47
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ef;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 48
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;)Lcom/amap/api/mapcore2d/ef;
    .locals 2

    const-class v0, Lcom/amap/api/mapcore2d/ef;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore2d/ef;->a:Lcom/amap/api/mapcore2d/ef;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/amap/api/mapcore2d/ef;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore2d/ef;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;)V

    sput-object v1, Lcom/amap/api/mapcore2d/ef;->a:Lcom/amap/api/mapcore2d/ef;

    .line 56
    :cond_0
    sget-object p0, Lcom/amap/api/mapcore2d/ef;->a:Lcom/amap/api/mapcore2d/ef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)V
    .locals 3

    .line 62
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 67
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "amapdynamic"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "admic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const-string v0, "com.amap.api"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    new-instance v0, Lcom/amap/api/mapcore2d/dm;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ef;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore2d/eg;->c()Lcom/amap/api/mapcore2d/eg;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/dm;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/dl;)V

    const-string v1, "loc"

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ef;->c:Landroid/content/Context;

    const-string v2, "loc"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ee;->a(Lcom/amap/api/mapcore2d/dm;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const-string v1, "navi"

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ef;->c:Landroid/content/Context;

    const-string v2, "navi"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ee;->a(Lcom/amap/api/mapcore2d/dm;Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    const-string v1, "sea"

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ef;->c:Landroid/content/Context;

    const-string v2, "sea"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ee;->a(Lcom/amap/api/mapcore2d/dm;Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    const-string v1, "2dmap"

    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ef;->c:Landroid/content/Context;

    const-string v2, "2dmap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ee;->a(Lcom/amap/api/mapcore2d/dm;Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    const-string v1, "3dmap"

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 102
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ef;->c:Landroid/content/Context;

    const-string v1, "3dmap"

    invoke-static {v0, p1, v1}, Lcom/amap/api/mapcore2d/ee;->a(Lcom/amap/api/mapcore2d/dm;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "com.autonavi.aps.amapapi.offline"

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    new-instance p1, Lcom/amap/api/mapcore2d/dm;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ef;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore2d/eg;->c()Lcom/amap/api/mapcore2d/eg;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/amap/api/mapcore2d/dm;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/dl;)V

    .line 112
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ef;->c:Landroid/content/Context;

    const-string v1, "OfflineLocation"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/ee;->a(Lcom/amap/api/mapcore2d/dm;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "com.data.carrier_v4"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 118
    new-instance p1, Lcom/amap/api/mapcore2d/dm;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ef;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore2d/eg;->c()Lcom/amap/api/mapcore2d/eg;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/amap/api/mapcore2d/dm;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/dl;)V

    .line 119
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ef;->c:Landroid/content/Context;

    const-string v1, "Collection"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/ee;->a(Lcom/amap/api/mapcore2d/dm;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "com.autonavi.aps.amapapi.httpdns"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.autonavi.httpdns"

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 128
    :cond_8
    new-instance p1, Lcom/amap/api/mapcore2d/dm;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ef;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore2d/eg;->c()Lcom/amap/api/mapcore2d/eg;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/amap/api/mapcore2d/dm;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/dl;)V

    .line 129
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ef;->c:Landroid/content/Context;

    const-string v1, "HttpDNS"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/ee;->a(Lcom/amap/api/mapcore2d/dm;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DynamicExceptionHandler"

    const-string v1, "uncaughtException"

    .line 139
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 149
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore2d/ef;->a(Ljava/lang/Throwable;)V

    .line 150
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ef;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ef;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
