.class public final Lcom/amap/api/maps2d/model/Marker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/amap/api/interfaces/IMarker;


# direct methods
.method public constructor <init>(Lcom/amap/api/interfaces/IMarker;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/MarkerOptions;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const-string v0, "destroy"

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v1}, Lcom/amap/api/interfaces/IMarker;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Marker"

    .line 200
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 393
    instance-of v0, p1, Lcom/amap/api/maps2d/model/Marker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-nez v0, :cond_1

    return v1

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    check-cast p1, Lcom/amap/api/maps2d/model/Marker;

    iget-object p1, p1, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    .line 401
    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IMarker;->equalsRemote(Lcom/amap/api/interfaces/IMarker;)Z

    move-result p1

    return p1
.end method

.method public getIcons()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IMarker;->getIcons()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getIcons"

    const-string v2, "Marker"

    .line 181
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IMarker;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IMarker;->getObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPeriod()I
    .locals 3

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IMarker;->getPeriod()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getPeriod"

    const-string v2, "Marker"

    .line 151
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getPosition()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IMarker;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IMarker;->getSnippet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IMarker;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IMarker;->getZIndex()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-nez v0, :cond_0

    .line 407
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IMarker;->hashCodeRemote()I

    move-result v0

    return v0
.end method

.method public hideInfoWindow()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IMarker;->hideInfoWindow()V

    :cond_0
    return-void
.end method

.method public isDraggable()Z
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IMarker;->isDraggable()Z

    move-result v0

    return v0
.end method

.method public isInfoWindowShown()Z
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IMarker;->isInfoWindowShown()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IMarker;->isVisible()Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 3

    const-string v0, "remove"

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v1}, Lcom/amap/api/interfaces/IMarker;->remove()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Marker"

    .line 94
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setAnchor(FF)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/interfaces/IMarker;->setAnchor(FF)V

    :cond_0
    return-void
.end method

.method public setDraggable(Z)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IMarker;->setDraggable(Z)V

    :cond_0
    return-void
.end method

.method public setIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IMarker;->setIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    :cond_0
    return-void
.end method

.method public setIcons(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IMarker;->setIcons(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setIcons"

    const-string v1, "Marker"

    .line 166
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IMarker;->setObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setPeriod(I)V
    .locals 2

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IMarker;->setPeriod(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "setPeriod"

    const-string v1, "Marker"

    .line 135
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setPosition(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IMarker;->setPosition(Lcom/amap/api/maps2d/model/LatLng;)V

    :cond_0
    return-void
.end method

.method public setPositionByPixels(II)V
    .locals 2

    const-string v0, "setPositionByPixels"

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v1, p1, p2}, Lcom/amap/api/interfaces/IMarker;->setPositionByPixels(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Marker"

    .line 428
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setRotateAngle(F)V
    .locals 2

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IMarker;->setRotateAngle(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setRotateAngle"

    const-string v1, "Marker"

    .line 386
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IMarker;->setSnippet(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IMarker;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IMarker;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IMarker;->setZIndex(F)V

    :cond_0
    return-void
.end method

.method public showInfoWindow()V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/interfaces/IMarker;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IMarker;->showInfoWindow()V

    :cond_0
    return-void
.end method
