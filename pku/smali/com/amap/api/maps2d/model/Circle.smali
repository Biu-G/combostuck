.class public final Lcom/amap/api/maps2d/model/Circle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/amap/api/interfaces/ICircle;


# direct methods
.method public constructor <init>(Lcom/amap/api/interfaces/ICircle;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    return-void
.end method


# virtual methods
.method public contains(Lcom/amap/api/maps2d/model/LatLng;)Z
    .locals 2

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/ICircle;->contains(Lcom/amap/api/maps2d/model/LatLng;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "contains"

    const-string v1, "Circle"

    .line 352
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 365
    instance-of v0, p1, Lcom/amap/api/maps2d/model/Circle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 368
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_1

    return v1

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    check-cast p1, Lcom/amap/api/maps2d/model/Circle;

    iget-object p1, p1, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    .line 376
    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/ICircle;->equalsRemote(Lcom/amap/api/interfaces/IOverlay;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "equals"

    const-string v1, "Circle"

    .line 378
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public getCenter()Lcom/amap/api/maps2d/model/LatLng;
    .locals 3

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0}, Lcom/amap/api/interfaces/ICircle;->getCenter()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getCenter"

    const-string v2, "Circle"

    .line 102
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getFillColor()I
    .locals 3

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0}, Lcom/amap/api/interfaces/ICircle;->getFillColor()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getFillColor"

    const-string v2, "Circle"

    .line 256
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0}, Lcom/amap/api/interfaces/ICircle;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getId"

    const-string v2, "Circle"

    .line 63
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getRadius()D
    .locals 3

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0}, Lcom/amap/api/interfaces/ICircle;->getRadius()D

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "getRadius"

    const-string v2, "Circle"

    .line 141
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getStrokeColor()I
    .locals 3

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0}, Lcom/amap/api/interfaces/ICircle;->getStrokeColor()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getStrokeColor"

    const-string v2, "Circle"

    .line 218
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getStrokeWidth()F
    .locals 3

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0}, Lcom/amap/api/interfaces/ICircle;->getStrokeWidth()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getStrokeWidth"

    const-string v2, "Circle"

    .line 180
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getZIndex()F
    .locals 3

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0}, Lcom/amap/api/interfaces/ICircle;->getZIndex()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getZIndex"

    const-string v2, "Circle"

    .line 294
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 3

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0}, Lcom/amap/api/interfaces/ICircle;->hashCodeRemote()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "hashCode"

    const-string v2, "Circle"

    .line 391
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isVisible()Z
    .locals 3

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0}, Lcom/amap/api/interfaces/ICircle;->isVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "isVisible"

    const-string v2, "Circle"

    .line 332
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public remove()V
    .locals 3

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0}, Lcom/amap/api/interfaces/ICircle;->remove()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "remove"

    const-string v2, "Circle"

    .line 44
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setCenter(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 2

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/ICircle;->setCenter(Lcom/amap/api/maps2d/model/LatLng;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setCenter"

    const-string v1, "Circle"

    .line 83
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setFillColor(I)V
    .locals 2

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/ICircle;->setFillColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setFillColor"

    const-string v1, "Circle"

    .line 237
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setRadius(D)V
    .locals 1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/interfaces/ICircle;->setRadius(D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "setRadius"

    const-string v0, "Circle"

    .line 122
    invoke-static {p1, v0, p2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance p2, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public setStrokeColor(I)V
    .locals 2

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/ICircle;->setStrokeColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setStrokeColor"

    const-string v1, "Circle"

    .line 199
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setStrokeWidth(F)V
    .locals 2

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/ICircle;->setStrokeWidth(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setStrokeWidth"

    const-string v1, "Circle"

    .line 161
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setVisible(Z)V
    .locals 2

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/ICircle;->setVisible(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setVisible"

    const-string v1, "Circle"

    .line 313
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setZIndex(F)V
    .locals 2

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/interfaces/ICircle;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/ICircle;->setZIndex(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setZIndex"

    const-string v1, "Circle"

    .line 275
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
