.class Lcom/amap/api/mapcore2d/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore2d/z;


# instance fields
.field private a:Lcom/amap/api/maps2d/model/LatLng;

.field private b:D

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lcom/amap/api/mapcore2d/y;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/y;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/amap/api/mapcore2d/o;->a:Lcom/amap/api/maps2d/model/LatLng;

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/o;->b:D

    const/high16 v0, 0x41200000    # 10.0f

    .line 18
    iput v0, p0, Lcom/amap/api/mapcore2d/o;->c:F

    const/high16 v0, -0x1000000

    .line 19
    iput v0, p0, Lcom/amap/api/mapcore2d/o;->d:I

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/amap/api/mapcore2d/o;->e:I

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/amap/api/mapcore2d/o;->f:F

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/o;->g:Z

    const-string v0, "CircleDelegateIme"

    .line 28
    iput-object p1, p0, Lcom/amap/api/mapcore2d/o;->i:Lcom/amap/api/mapcore2d/y;

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/o;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/o;->h:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "CircleDelegateImp"

    .line 32
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/o;->getCenter()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/amap/api/mapcore2d/o;->b:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/o;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 99
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->i:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->b:Lcom/amap/api/mapcore2d/az$d;

    .line 100
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/o;->getRadius()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/az$d;->a(F)F

    move-result v0

    .line 101
    new-instance v1, Lcom/amap/api/mapcore2d/w;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/o;->a:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double v2, v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/o;->a:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double v6, v6, v4

    double-to-int v3, v6

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    .line 103
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 104
    iget-object v3, p0, Lcom/amap/api/mapcore2d/o;->i:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v3}, Lcom/amap/api/mapcore2d/y;->d()Lcom/amap/api/mapcore2d/bh;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/amap/api/mapcore2d/bh;->a(Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 105
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 106
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/o;->getFillColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    .line 107
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/o;->getStrokeColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/o;->getStrokeWidth()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CircleDelegateImp"

    const-string v1, "draw"

    .line 117
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public contains(Lcom/amap/api/maps2d/model/LatLng;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/o;->b:D

    iget-object v2, p0, Lcom/amap/api/mapcore2d/o;->a:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v2, p1}, Lcom/amap/api/maps2d/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)F

    move-result p1

    float-to-double v2, p1

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/amap/api/mapcore2d/o;->a:Lcom/amap/api/maps2d/model/LatLng;

    return-void
.end method

.method public equalsRemote(Lcom/amap/api/interfaces/IOverlay;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    invoke-interface {p1}, Lcom/amap/api/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/o;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getCenter()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->a:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    iget v0, p0, Lcom/amap/api/mapcore2d/o;->e:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Circle"

    .line 50
    invoke-static {v0}, Lcom/amap/api/mapcore2d/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/o;->h:Ljava/lang/String;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/o;->b:D

    return-wide v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    iget v0, p0, Lcom/amap/api/mapcore2d/o;->d:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    iget v0, p0, Lcom/amap/api/mapcore2d/o;->c:F

    return v0
.end method

.method public getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/amap/api/mapcore2d/o;->f:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/o;->g:Z

    return v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->i:Lcom/amap/api/mapcore2d/y;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/o;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/y;->removeGLOverlay(Ljava/lang/String;)Z

    .line 44
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->i:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->postInvalidate()V

    return-void
.end method

.method public setCenter(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/amap/api/mapcore2d/o;->a:Lcom/amap/api/maps2d/model/LatLng;

    return-void
.end method

.method public setFillColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    iput p1, p0, Lcom/amap/api/mapcore2d/o;->e:I

    return-void
.end method

.method public setRadius(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/o;->b:D

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    iput p1, p0, Lcom/amap/api/mapcore2d/o;->d:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    iput p1, p0, Lcom/amap/api/mapcore2d/o;->c:F

    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/o;->g:Z

    .line 69
    iget-object p1, p0, Lcom/amap/api/mapcore2d/o;->i:Lcom/amap/api/mapcore2d/y;

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/y;->postInvalidate()V

    return-void
.end method

.method public setZIndex(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    iput p1, p0, Lcom/amap/api/mapcore2d/o;->f:F

    .line 58
    iget-object p1, p0, Lcom/amap/api/mapcore2d/o;->i:Lcom/amap/api/mapcore2d/y;

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/y;->invalidate()V

    return-void
.end method
