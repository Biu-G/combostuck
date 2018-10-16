.class public final Lcom/amap/api/maps2d/model/GroundOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/aa;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/aa;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 395
    instance-of p1, p1, Lcom/amap/api/maps2d/model/GroundOverlay;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 398
    :cond_0
    :try_start_0
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "equals"

    const-string v1, "GroundOverlay"

    .line 401
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public getBearing()F
    .locals 3

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->getBearing()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getBearing"

    const-string v2, "GroundOverlay"

    .line 274
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getBounds()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 3

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->getBounds()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getBounds"

    const-string v2, "GroundOverlay"

    .line 236
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getHeight()F
    .locals 3

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->getHeight()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getHeight"

    const-string v2, "GroundOverlay"

    .line 198
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getId"

    const-string v2, "GroundOverlay"

    .line 64
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getPosition()Lcom/amap/api/maps2d/model/LatLng;
    .locals 3

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getPosition"

    const-string v2, "GroundOverlay"

    .line 102
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getTransparency()F
    .locals 3

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->getTransparency()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getTransparency"

    const-string v2, "GroundOverlay"

    .line 388
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getWidth()F
    .locals 3

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->getWidth()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getWidth"

    const-string v2, "GroundOverlay"

    .line 179
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getZIndex()F
    .locals 3

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->getZIndex()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getZIndex"

    const-string v2, "GroundOverlay"

    .line 312
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 3

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->isVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "isVisible"

    const-string v2, "GroundOverlay"

    .line 350
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public remove()V
    .locals 3

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->remove()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "remove"

    const-string v2, "GroundOverlay"

    .line 45
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setBearing(F)V
    .locals 2

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->setBearing(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setBearing"

    const-string v1, "GroundOverlay"

    .line 255
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setDimensions(F)V
    .locals 2

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->setDimensions(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setDimensions"

    const-string v1, "GroundOverlay"

    .line 121
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setDimensions(FF)V
    .locals 1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/mapcore2d/aa;->setDimensions(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "setDimensions"

    const-string v0, "GroundOverlay"

    .line 160
    invoke-static {p1, v0, p2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance p2, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public setImage(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    .locals 2

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->setImage(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setImage"

    const-string v1, "GroundOverlay"

    .line 140
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setPosition(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 2

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->setPosition(Lcom/amap/api/maps2d/model/LatLng;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setPosition"

    const-string v1, "GroundOverlay"

    .line 83
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setPositionFromBounds(Lcom/amap/api/maps2d/model/LatLngBounds;)V
    .locals 2

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->setPositionFromBounds(Lcom/amap/api/maps2d/model/LatLngBounds;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setPositionFromBounds"

    const-string v1, "GroundOverlay"

    .line 217
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setTransparency(F)V
    .locals 2

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->setTransparency(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setTransparency"

    const-string v1, "GroundOverlay"

    .line 369
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setVisible(Z)V
    .locals 2

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->setVisible(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setVisible"

    const-string v1, "GroundOverlay"

    .line 331
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setZIndex(F)V
    .locals 2

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->setZIndex(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setZIndex"

    const-string v1, "GroundOverlay"

    .line 293
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
