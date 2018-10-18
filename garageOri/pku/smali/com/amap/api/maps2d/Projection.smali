.class public Lcom/amap/api/maps2d/Projection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/amap/api/interfaces/IProjection;


# direct methods
.method public constructor <init>(Lcom/amap/api/interfaces/IProjection;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amap/api/maps2d/Projection;->a:Lcom/amap/api/interfaces/IProjection;

    return-void
.end method


# virtual methods
.method public fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 2

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/Projection;->a:Lcom/amap/api/interfaces/IProjection;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IProjection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "fromScreenLocation"

    const-string v1, "Projection"

    .line 35
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public getVisibleRegion()Lcom/amap/api/maps2d/model/VisibleRegion;
    .locals 3

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/Projection;->a:Lcom/amap/api/interfaces/IProjection;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IProjection;->getVisibleRegion()Lcom/amap/api/maps2d/model/VisibleRegion;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getVisibleRegion"

    const-string v2, "Projection"

    .line 81
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public toMapLocation(Lcom/amap/api/maps2d/model/LatLng;)Landroid/graphics/PointF;
    .locals 2

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/Projection;->a:Lcom/amap/api/interfaces/IProjection;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IProjection;->toMapLocation(Lcom/amap/api/maps2d/model/LatLng;)Landroid/graphics/PointF;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "toMapLocation"

    const-string v1, "Projection"

    .line 67
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public toScreenLocation(Lcom/amap/api/maps2d/model/LatLng;)Landroid/graphics/Point;
    .locals 2

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/Projection;->a:Lcom/amap/api/interfaces/IProjection;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IProjection;->toScreenLocation(Lcom/amap/api/maps2d/model/LatLng;)Landroid/graphics/Point;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "toScreenLocation"

    const-string v1, "Projection"

    .line 50
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
