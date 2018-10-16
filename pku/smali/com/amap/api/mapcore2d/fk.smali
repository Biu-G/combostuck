.class public final Lcom/amap/api/mapcore2d/fk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/location/LocationManager;

.field volatile c:J

.field volatile d:Z

.field e:Z

.field volatile f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;

.field g:Ljava/lang/Object;

.field h:Z

.field i:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/fk;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fk;->d:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fk;->e:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/mapcore2d/fk;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/fk;->g:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fk;->h:Z

    new-instance v0, Lcom/amap/api/mapcore2d/fk$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/fk$1;-><init>(Lcom/amap/api/mapcore2d/fk;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fk;->i:Landroid/location/LocationListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/fk;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fk;->e()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fk;->g:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/fk;->h:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amap/api/maps/CoordinateConverter;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/CoordinateConverter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fk;->g:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/amap/api/maps2d/CoordinateConverter;

    invoke-direct {p1}, Lcom/amap/api/maps2d/CoordinateConverter;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fk;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/fk;->b:Landroid/location/LocationManager;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/mapcore2d/fk;->a:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fk;->b:Landroid/location/LocationManager;

    :cond_3
    return-void
.end method

.method private e()V
    .locals 1

    :try_start_0
    const-string v0, "com.amap.api.maps.CoordinateConverter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fk;->h:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private f()V
    .locals 8

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fk;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_0
    move-object v7, v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fk;->b:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-string v3, "force_xtra_injection"

    invoke-virtual {v1, v2, v3, v0}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fk;->b:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-wide/16 v3, 0x320

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amap/api/mapcore2d/fk;->i:Landroid/location/LocationListener;

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "MAPGPSLocation"

    const-string v2, "requestLocationUpdates"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :catch_2
    return-void
.end method

.method private g()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fk;->d:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/fk;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fk;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/fk;->e:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fk;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fk;->e:Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fk;->e:Z

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fk;->g()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fk;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fk;->i:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fk;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fk;->i:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 4

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/fk;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/api/mapcore2d/gf;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/fk;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fk;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;
    .locals 7

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fk;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fk;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fk;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fk;->g:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fk;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/amap/api/mapcore2d/fk;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/amap/api/mapcore2d/gc;->a(DD)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/fk;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fk;->g:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/maps/CoordinateConverter;

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/fk;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/amap/api/mapcore2d/fk;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;

    invoke-virtual {v5}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/CoordinateConverter;->coord(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CoordinateConverter;

    move-result-object v1

    sget-object v2, Lcom/amap/api/maps/CoordinateConverter$CoordType;->GPS:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/CoordinateConverter;->from(Lcom/amap/api/maps/CoordinateConverter$CoordType;)Lcom/amap/api/maps/CoordinateConverter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/CoordinateConverter;->convert()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->setLatitude(D)V

    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->setLongitude(D)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fk;->g:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/maps2d/CoordinateConverter;

    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/fk;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/amap/api/mapcore2d/fk;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;

    invoke-virtual {v5}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/CoordinateConverter;->coord(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/CoordinateConverter;

    move-result-object v1

    sget-object v2, Lcom/amap/api/maps2d/CoordinateConverter$CoordType;->GPS:Lcom/amap/api/maps2d/CoordinateConverter$CoordType;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/CoordinateConverter;->from(Lcom/amap/api/maps2d/CoordinateConverter$CoordType;)Lcom/amap/api/maps2d/CoordinateConverter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps2d/CoordinateConverter;->convert()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    iget-wide v2, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->setLatitude(D)V

    iget-wide v1, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-object v0
.end method
