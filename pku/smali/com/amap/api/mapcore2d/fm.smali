.class public Lcom/amap/api/mapcore2d/fm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/fm$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;

.field d:Landroid/os/Handler;

.field e:Lcom/amap/api/mapcore2d/fm$a;

.field f:Landroid/os/Handler;

.field g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

.field h:Lcom/amap/api/mapcore2d/fp;

.field i:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

.field j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fm;->a:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/fm;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/fm;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fm;->d:Landroid/os/Handler;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fm;->e:Lcom/amap/api/mapcore2d/fm$a;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fm;->f:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/fm;->g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fm;->h:Lcom/amap/api/mapcore2d/fp;

    sget-object v0, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->Hight_Accuracy:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fm;->i:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fm;->j:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fm;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fm;->e()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore2d/fn;

    invoke-direct {v1, p1, p0}, Lcom/amap/api/mapcore2d/fn;-><init>(Landroid/os/Looper;Lcom/amap/api/mapcore2d/fm;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/fm;->f:Landroid/os/Handler;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/fm;->f:Landroid/os/Handler;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fm;->f:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fm;->f:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private a(ILjava/lang/Object;J)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fm;->f:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->what:I

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/fm;->f:Landroid/os/Handler;

    invoke-virtual {p1, v1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private e()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/fo;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fm;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore2d/fo;-><init>(Landroid/os/Looper;Lcom/amap/api/mapcore2d/fm;)V

    :goto_0
    iput-object v0, p0, Lcom/amap/api/mapcore2d/fm;->d:Landroid/os/Handler;

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/amap/api/mapcore2d/fo;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/fo;-><init>(Lcom/amap/api/mapcore2d/fm;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "initResultHandler"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore2d/fm$a;

    const-string v1, "locaitonClientActionThread"

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore2d/fm$a;-><init>(Ljava/lang/String;Lcom/amap/api/mapcore2d/fm;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fm;->e:Lcom/amap/api/mapcore2d/fm$a;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->e:Lcom/amap/api/mapcore2d/fm$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fm$a;->setPriority(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->e:Lcom/amap/api/mapcore2d/fm$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fm$a;->start()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->e:Lcom/amap/api/mapcore2d/fm$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fm$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/fm;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fm;->f:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "initActionThreadAndActionHandler"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fm;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fm;->f:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iput-object v2, p0, Lcom/amap/api/mapcore2d/fm;->f:Landroid/os/Handler;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method final a()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/fm;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fm;->j:Z

    const/16 v0, 0x3ed

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/fm;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "doStartLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/fm;->j:Z

    if-eqz v0, :cond_1

    const-string v0, "gps"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lbs"

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->setProvider(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/gf;->b(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->setAltitude(D)V

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getBearing()F

    move-result v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->setBearing(F)V

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getSpeed()F

    move-result v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->setSpeed(F)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v1, p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;->onLocationChanged(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/amap/api/mapcore2d/fm;->g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->isOnceLocation()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/fm;->c()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    return-void

    :catch_1
    move-exception p1

    const-string v0, "LocationClientManger"

    const-string v1, "callBackLocation"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;)V
    .locals 2

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fm;->b:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "LocationClientManager"

    const-string v1, "doSetLocationListener"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fm;->g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fm;->g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->h:Lcom/amap/api/mapcore2d/fp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->h:Lcom/amap/api/mapcore2d/fp;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fm;->g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fp;->a(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;)V

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/fm;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->i:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->getLocationMode()Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/fm;->c()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/fm;->a()V

    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore2d/fm;->g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->getLocationMode()Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fm;->i:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    return-void
.end method

.method final b()V
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x3ed

    const-wide/16 v2, 0x3e8

    :try_start_0
    iget-object v4, p0, Lcom/amap/api/mapcore2d/fm;->h:Lcom/amap/api/mapcore2d/fp;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amap/api/mapcore2d/fm;->h:Lcom/amap/api/mapcore2d/fp;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/fp;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v4, p0, Lcom/amap/api/mapcore2d/fm;->g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->isOnceLocation()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/amap/api/mapcore2d/fm;->g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->getInterval()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/fm;->g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->getInterval()J

    move-result-wide v2

    :goto_0
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/amap/api/mapcore2d/fm;->a(ILjava/lang/Object;J)V

    return-void

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "LocationClientManager"

    const-string v6, "doGetLocation"

    invoke-static {v4, v5, v6}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, p0, Lcom/amap/api/mapcore2d/fm;->g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->isOnceLocation()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/amap/api/mapcore2d/fm;->g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->getInterval()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/amap/api/mapcore2d/fm;->g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->getInterval()J

    move-result-wide v2

    :goto_1
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/amap/api/mapcore2d/fm;->a(ILjava/lang/Object;J)V

    :cond_3
    return-void

    :goto_2
    iget-object v5, p0, Lcom/amap/api/mapcore2d/fm;->g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v5}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->isOnceLocation()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/amap/api/mapcore2d/fm;->g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v5}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->getInterval()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gez v5, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/amap/api/mapcore2d/fm;->g:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->getInterval()J

    move-result-wide v2

    :goto_3
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/amap/api/mapcore2d/fm;->a(ILjava/lang/Object;J)V

    :cond_5
    throw v4
.end method

.method final b(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/fm;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/fm;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    const-string v0, "LocationClientManager"

    const-string v1, "doUnregisterListener"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final c()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fm;->j:Z

    const/16 v0, 0x3ec

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/fm;->a(I)V

    const/16 v0, 0x3ed

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/fm;->a(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->h:Lcom/amap/api/mapcore2d/fp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->h:Lcom/amap/api/mapcore2d/fp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fp;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "doStopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final d()V
    .locals 4

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/fm;->c()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->h:Lcom/amap/api/mapcore2d/fp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->h:Lcom/amap/api/mapcore2d/fp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fp;->d()V

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fm;->f()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->e:Lcom/amap/api/mapcore2d/fm$a;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->e:Lcom/amap/api/mapcore2d/fm$a;

    const-class v1, Landroid/os/HandlerThread;

    const-string v2, "quitSafely"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/gd;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fm;->e:Lcom/amap/api/mapcore2d/fm$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fm$a;->quit()Z

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fm;->e:Lcom/amap/api/mapcore2d/fm$a;

    return-void
.end method

.method public destroy()V
    .locals 4

    const/16 v0, 0x3ef

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/fm;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocationListener(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;)V
    .locals 3

    const/16 v0, 0x3ea

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/amap/api/mapcore2d/fm;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "LocationClientManager"

    const-string v1, "setLocationListener"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocationOption(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;)V
    .locals 3

    const/16 v0, 0x3e9

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/amap/api/mapcore2d/fm;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "LocationClientManager"

    const-string v1, "setLocationOption"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startLocation()V
    .locals 4

    const/16 v0, 0x3ec

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/fm;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "startLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopLocation()V
    .locals 4

    const/16 v0, 0x3ee

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/fm;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterLocationListener(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;)V
    .locals 3

    const/16 v0, 0x3ee

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/amap/api/mapcore2d/fm;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "LocationClientManager"

    const-string v1, "stopLocation"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
