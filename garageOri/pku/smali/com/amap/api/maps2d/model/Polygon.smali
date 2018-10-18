.class public final Lcom/amap/api/maps2d/model/Polygon;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/interfaces/IPolygon;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/af;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    return-void
.end method


# virtual methods
.method public contains(Lcom/amap/api/maps2d/model/LatLng;)Z
    .locals 2

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IPolygon;->contains(Lcom/amap/api/maps2d/model/LatLng;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "contains"

    const-string v1, "Polygon"

    .line 323
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "equeals"

    .line 336
    instance-of v1, p1, Lcom/amap/api/maps2d/model/Polygon;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 340
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v1, :cond_1

    return v2

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    check-cast p1, Lcom/amap/api/maps2d/model/Polygon;

    iget-object p1, p1, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    .line 348
    invoke-interface {v1, p1}, Lcom/amap/api/interfaces/IPolygon;->equalsRemote(Lcom/amap/api/interfaces/IOverlay;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v1, "Polygon"

    .line 350
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public getFillColor()I
    .locals 3

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolygon;->getFillColor()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getFillColor"

    const-string v2, "Polygon"

    .line 229
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolygon;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getId"

    const-string v2, "Polygon"

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

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolygon;->getPoints()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getPoints"

    const-string v2, "Polygon"

    .line 115
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getStrokeColor()I
    .locals 3

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolygon;->getStrokeColor()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getStrokeColor"

    const-string v2, "Polygon"

    .line 191
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getStrokeWidth()F
    .locals 3

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolygon;->getStrokeWidth()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getStrokeWidth"

    const-string v2, "Polygon"

    .line 153
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getZIndex()F
    .locals 3

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolygon;->getZIndex()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getZIndex"

    const-string v2, "Polygon"

    .line 267
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 3

    const-string v0, "hashCode"

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    invoke-interface {v1}, Lcom/amap/api/interfaces/IPolygon;->hashCodeRemote()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "Polygon"

    .line 364
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolygon;->isVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 304
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public remove()V
    .locals 3

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IPolygon;->remove()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "remove"

    const-string v2, "Polygon"

    .line 58
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setFillColor(I)V
    .locals 2

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IPolygon;->setFillColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setFillColor"

    const-string v1, "Polygon"

    .line 210
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
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
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IPolygon;->setPoints(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setPoints"

    const-string v1, "Polygon"

    .line 96
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setStrokeColor(I)V
    .locals 2

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IPolygon;->setStrokeColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setStrokeColor"

    const-string v1, "Polygon"

    .line 172
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setStrokeWidth(F)V
    .locals 2

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IPolygon;->setStrokeWidth(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setStrokeWidth"

    const-string v1, "Polygon"

    .line 134
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setVisible(Z)V
    .locals 2

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IPolygon;->setVisible(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setVisible"

    const-string v1, "Polygon"

    .line 286
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setZIndex(F)V
    .locals 2

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IPolygon;->setZIndex(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setZIndex"

    const-string v1, "Polygon"

    .line 248
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
