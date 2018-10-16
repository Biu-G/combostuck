.class public final Lcom/amap/api/maps2d/UiSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/amap/api/interfaces/IUiSettings;


# direct methods
.method public constructor <init>(Lcom/amap/api/interfaces/IUiSettings;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    return-void
.end method


# virtual methods
.method public getLogoPosition()I
    .locals 3

    const-string v0, "getLogoPosition"

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1}, Lcom/amap/api/interfaces/IUiSettings;->getLogoPosition()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "UiSettings"

    .line 284
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getZoomPosition()I
    .locals 3

    const-string v0, "getZoomPosition"

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1}, Lcom/amap/api/interfaces/IUiSettings;->getZoomPosition()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "UiSettings"

    .line 302
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isCompassEnabled()Z
    .locals 3

    const-string v0, "isCompassEnabled"

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1}, Lcom/amap/api/interfaces/IUiSettings;->isCompassEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "UiSettings"

    .line 216
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isMyLocationButtonEnabled()Z
    .locals 3

    const-string v0, "isMyLocationButtonEnabled"

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1}, Lcom/amap/api/interfaces/IUiSettings;->isMyLocationButtonEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "UiSettings"

    .line 233
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isScaleControlsEnabled()Z
    .locals 3

    const-string v0, "isScaleControlsEnabled"

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1}, Lcom/amap/api/interfaces/IUiSettings;->isScaleControlsEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "UiSettings"

    .line 182
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isScrollGesturesEnabled()Z
    .locals 3

    const-string v0, "isScrollGestureEnabled"

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1}, Lcom/amap/api/interfaces/IUiSettings;->isScrollGesturesEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "UiSettings"

    .line 250
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isZoomControlsEnabled()Z
    .locals 3

    const-string v0, "isZoomControlsEnabled"

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1}, Lcom/amap/api/interfaces/IUiSettings;->isZoomControlsEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "UiSettings"

    .line 199
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isZoomGesturesEnabled()Z
    .locals 3

    const-string v0, "isZoomGesturesEnabled"

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1}, Lcom/amap/api/interfaces/IUiSettings;->isZoomGesturesEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "UiSettings"

    .line 267
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public setAllGesturesEnabled(Z)V
    .locals 2

    const-string v0, "setAllGesturesEnabled"

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1, p1}, Lcom/amap/api/interfaces/IUiSettings;->setAllGesturesEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "UiSettings"

    .line 132
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setCompassEnabled(Z)V
    .locals 2

    const-string v0, "setCompassEnabled"

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1, p1}, Lcom/amap/api/interfaces/IUiSettings;->setCompassEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "UiSettings"

    .line 65
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setLogoPosition(I)V
    .locals 2

    const-string v0, "setLogoPosition"

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1, p1}, Lcom/amap/api/interfaces/IUiSettings;->setLogoPosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "UiSettings"

    .line 149
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setMyLocationButtonEnabled(Z)V
    .locals 2

    const-string v0, "setMyLocationButtonEnabled"

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1, p1}, Lcom/amap/api/interfaces/IUiSettings;->setMyLocationButtonEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "UiSettings"

    .line 82
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setScaleControlsEnabled(Z)V
    .locals 2

    const-string v0, "setScaleControlsEnabled"

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1, p1}, Lcom/amap/api/interfaces/IUiSettings;->setScaleControlsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "UiSettings"

    .line 33
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setScrollGesturesEnabled(Z)V
    .locals 2

    const-string v0, "setScrollGesturesEnabled"

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1, p1}, Lcom/amap/api/interfaces/IUiSettings;->setScrollGesturesEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "UiSettings"

    .line 99
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setZoomControlsEnabled(Z)V
    .locals 2

    const-string v0, "setZoomControlsEnabled"

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1, p1}, Lcom/amap/api/interfaces/IUiSettings;->setZoomControlsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "UiSettings"

    .line 49
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setZoomGesturesEnabled(Z)V
    .locals 2

    const-string v0, "setZoomGesturesEnabled"

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1, p1}, Lcom/amap/api/interfaces/IUiSettings;->setZoomGesturesEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "UiSettings"

    .line 116
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setZoomInByScreenCenter(Z)V
    .locals 1

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IUiSettings;->setZoomInByScreenCenter(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 319
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setZoomPosition(I)V
    .locals 2

    const-string v0, "setZoomPosition"

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/interfaces/IUiSettings;

    invoke-interface {v1, p1}, Lcom/amap/api/interfaces/IUiSettings;->setZoomPosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "UiSettings"

    .line 166
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
