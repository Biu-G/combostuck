.class public Lcom/amap/api/mapcore2d/cn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;

.field c:Ljava/lang/Object;

.field d:Z

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cn;->b:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cn;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/cn;->d:Z

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cn;->e:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/cn;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/cn;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string p1, "com.amap.api.location.AMapLocationClient"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cn;->a:Landroid/content/Context;

    const-string v2, "com.amap.api.location.APSService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/amap/api/mapcore2d/cn;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :try_start_3
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/cn;->d:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    const/4 p1, 0x0

    :try_start_4
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/cn;->d:Z

    :cond_0
    :goto_1
    iget-boolean p1, p0, Lcom/amap/api/mapcore2d/cn;->d:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/cn;->c:Ljava/lang/Object;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cn;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/cn;->b(Landroid/content/Context;)Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/cn;->b:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    const-string v0, "AMapLocationClient"

    const-string v1, "AMapLocationClient 1"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/fs;->a()Lcom/amap/api/mapcore2d/cy;

    move-result-object v1

    const-string v2, "com.amap.api.wrapper.Inner_2dMap_locationManagerWrapper"

    const-class v3, Lcom/amap/api/mapcore2d/fm;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p0, v5, v6

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore2d/eb;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lcom/amap/api/mapcore2d/fm;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/fm;-><init>(Landroid/content/Context;)V

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/fm;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/fm;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cn;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn;->c:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn;->b:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;->startLocation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "startLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;)V
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cn;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn;->c:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/amap/api/mapcore2d/fh;->a(Ljava/lang/Object;Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn;->b:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;->setLocationListener(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "AMapLocationClient"

    const-string v1, "setLocationListener"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;)V
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cn;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/mapcore2d/fh;->a()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amap/api/mapcore2d/fh;->a(Lcom/amap/api/location/AMapLocationClientOption;Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;)V

    iget-object p1, p0, Lcom/amap/api/mapcore2d/cn;->c:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn;->b:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;->setLocationOption(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "LocationManagerOption\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "AMapLocationClient"

    const-string v1, "setLocationOption"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cn;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn;->c:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn;->b:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;->stopLocation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cn;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn;->c:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cn;->b:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationManagerBase;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
