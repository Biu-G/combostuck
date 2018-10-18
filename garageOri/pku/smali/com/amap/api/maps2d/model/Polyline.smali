.class public Lcom/amap/api/maps2d/model/Polyline;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/amap/api/interfaces/IPolyline;


# direct methods
.method public constructor <init>(Lcom/amap/api/interfaces/IPolyline;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 339
    instance-of v0, p1, Lcom/amap/api/maps2d/model/Polyline;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 342
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_1

    return v1

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    check-cast p1, Lcom/amap/api/maps2d/model/Polyline;

    iget-object p1, p1, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    .line 350
    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IPolyline;->equalsRemote(Lcom/amap/api/interfaces/IOverlay;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "equals"

    const-string v1, "Polyline"

    .line 352
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public getColor()I
    .locals 3

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolyline;->getColor()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getColor"

    const-string v2, "Polyline"

    .line 192
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolyline;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getId"

    const-string v2, "Polyline"

    .line 77
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getPoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolyline;->getPoints()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getPoints"

    const-string v2, "Polyline"

    .line 116
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getWidth()F
    .locals 3

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolyline;->getWidth()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getWidth"

    const-string v2, "Polyline"

    .line 154
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getZIndex()F
    .locals 3

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolyline;->getZIndex()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getZIndex"

    const-string v2, "Polyline"

    .line 230
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 3

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolyline;->hashCodeRemote()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "hashCode"

    const-string v2, "Polyline"

    .line 366
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isDottedLine()Z
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolyline;->isDottedLine()Z

    move-result v0

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolyline;->isGeodesic()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 3

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolyline;->isVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "isVisible"

    const-string v2, "Polyline"

    .line 268
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public remove()V
    .locals 3

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolyline;->remove()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "remove"

    const-string v2, "Polyline"

    .line 58
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setColor(I)V
    .locals 2

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IPolyline;->setColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setColor"

    const-string v1, "Polyline"

    .line 173
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setDottedLine(Z)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IPolyline;->setDottedLine(Z)V

    return-void
.end method

.method public setGeodesic(Z)V
    .locals 2

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolyline;->isGeodesic()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v1, p1}, Lcom/amap/api/interfaces/IPolyline;->setGeodesic(Z)V

    .line 288
    invoke-virtual {p0, v0}, Lcom/amap/api/maps2d/model/Polyline;->setPoints(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "setGeodesic"

    const-string v1, "Polyline"

    .line 291
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IPolyline;->setPoints(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setPoints"

    const-string v1, "Polyline"

    .line 96
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setVisible(Z)V
    .locals 2

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IPolyline;->setVisible(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setVisible"

    const-string v1, "Polyline"

    .line 249
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setWidth(F)V
    .locals 2

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IPolyline;->setWidth(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setWidth"

    const-string v1, "Polyline"

    .line 135
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setZIndex(F)V
    .locals 2

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IPolyline;->setZIndex(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setZIndex"

    const-string v1, "Polyline"

    .line 211
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
